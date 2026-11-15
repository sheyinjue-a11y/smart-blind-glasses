# 归档资源与恢复

代码及小文件位于本仓库；模型、三维设计、录屏和较大的材料保存在本仓库 [archive-2026-11-14 Release](https://github.com/sheyinjue-a11y/smart-blind-glasses/releases/tag/archive-2026-11-14)。

1. 从该 Release 下载所有 ZIP 附件至一个目录，例如 `downloads/`。私有仓库需要先登录 GitHub；也可使用 `gh release download archive-2026-11-14 --repo sheyinjue-a11y/smart-blind-glasses --dir downloads`。
2. 在仓库根目录运行 `python scripts/restore_resources.py --archive-dir downloads`（Python 3.11 及以上）。
3. 仅检查附件时运行 `python scripts/restore_resources.py --archive-dir downloads --verify-only`。

脚本根据 `resources-manifest.json` 恢复原相对路径，并检查每个文件的长度和 SHA-256。重复资源只保存一份，恢复时放回全部使用位置。存在内容不同的文件时默认停止，需要明确传入 `--overwrite` 才能覆盖。

`MIGRATION_FILES.json` 记录原位置、保存方式、文件校验值与源码中必要的配置修改。原 ZIP/7z 的独有文件也保留在 `archive/` 中，因此可以对照提交版、旧版与当前版本。

环境、依赖目录、编译缓存、临时文件和快捷方式按依赖声明重建；本地 `.env` 不进入源码。项目所需凭证需要使用自己的账号重新配置。

此次归档验证文件完整性与恢复流程。项目应用的依赖安装、完整构建、外部 API 和硬件联调仍需按项目文档执行。
