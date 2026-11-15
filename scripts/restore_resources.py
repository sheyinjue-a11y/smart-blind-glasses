"""Restore archived resources without running project code (Python 3.10+)."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import tempfile
import zipfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--archive-dir', type=Path, required=True)
    parser.add_argument('--verify-only', action='store_true')
    parser.add_argument('--overwrite', action='store_true')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    manifest = json.loads((root / 'resources-manifest.json').read_text('utf-8'))
    verified = set()
    restored = 0
    handles = {}
    try:
        for item in manifest['files']:
            target = (root / item['path']).resolve()
            if not target.is_relative_to(root):
                raise ValueError('Unsafe destination path')
            archive = item['asset']
            if archive not in handles:
                handles[archive] = zipfile.ZipFile(args.archive_dir / archive)
            key = (archive, item['entry'])
            if key not in verified:
                digest = hashlib.sha256()
                size = 0
                with handles[archive].open(item['entry']) as stream:
                    for block in iter(lambda: stream.read(1024 * 1024), b''):
                        digest.update(block)
                        size += len(block)
                if digest.hexdigest() != item['sha256'] or size != item['size']:
                    raise ValueError('Resource checksum mismatch: ' + item['path'])
                verified.add(key)
            if args.verify_only:
                continue
            if target.exists():
                digest = hashlib.file_digest(target.open('rb'), 'sha256').hexdigest()
                if digest == item['sha256']:
                    continue
                if not args.overwrite:
                    raise FileExistsError(str(target) + ' differs; use --overwrite deliberately')
            target.parent.mkdir(parents=True, exist_ok=True)
            with tempfile.NamedTemporaryFile(dir=target.parent, delete=False) as temporary:
                temporary_path = Path(temporary.name)
                try:
                    with handles[archive].open(item['entry']) as stream:
                        shutil.copyfileobj(stream, temporary)
                except BaseException:
                    temporary_path.unlink(missing_ok=True)
                    raise
            try:
                if hashlib.file_digest(temporary_path.open('rb'), 'sha256').hexdigest() != item['sha256']:
                    raise ValueError('Written resource checksum mismatch')
                os.replace(temporary_path, target)
            finally:
                temporary_path.unlink(missing_ok=True)
            restored += 1
    finally:
        for handle in handles.values():
            handle.close()
    print(f'Verified {len(verified)} unique objects; restored {restored} files; {len(manifest["files"])} resource paths.')


if __name__ == '__main__':
    main()
