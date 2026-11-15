from __future__ import annotations

from dataclasses import dataclass
from enum import Enum, auto
from typing import Optional


class FindItemState(Enum):
    SEGMENT = auto()
    FLASH = auto()
    CENTER_GUIDE = auto()
    TRACK = auto()


@dataclass
class FrameSignals:
    object_detected: bool = False
    object_stable_for_lock: bool = False
    flow_points_ok: bool = False
    centered: bool = False
    tracking_lost: bool = False
    yolo_drift_large: bool = False
    hand_object_contact: bool = False


class TrialFindItemStateMachine:
    """State machine skeleton for object-find workflow.

    Mirrors the runtime logic:
    SEGMENT -> FLASH -> CENTER_GUIDE -> TRACK
    and fallback to SEGMENT on tracking failures.
    """

    def __init__(self) -> None:
        self.state = FindItemState.SEGMENT

    def reset(self) -> None:
        self.state = FindItemState.SEGMENT

    def handle_frame(self, s: FrameSignals) -> FindItemState:
        if self.state is FindItemState.SEGMENT:
            self._state_segment(s)
        elif self.state is FindItemState.FLASH:
            self._state_flash(s)
        elif self.state is FindItemState.CENTER_GUIDE:
            self._state_center_guide(s)
        elif self.state is FindItemState.TRACK:
            self._state_track(s)
        return self.state

    def _state_segment(self, s: FrameSignals) -> None:
        # Detect target object and wait for stable lock condition.
        if s.object_detected and s.object_stable_for_lock:
            self.state = FindItemState.FLASH

    def _state_flash(self, s: FrameSignals) -> None:
        # Build inner-edge features for LK flow initialization.
        if s.flow_points_ok:
            self.state = FindItemState.CENTER_GUIDE
        else:
            # If features cannot be initialized, restart detection.
            self.state = FindItemState.SEGMENT

    def _state_center_guide(self, s: FrameSignals) -> None:
        # Guide object to frame center with periodic YOLO correction.
        if s.tracking_lost:
            self.state = FindItemState.SEGMENT
            return
        if s.centered:
            self.state = FindItemState.TRACK

    def _state_track(self, s: FrameSignals) -> None:
        # Maintain hand-object guidance and re-lock when drift/loss occurs.
        if s.tracking_lost:
            self.state = FindItemState.SEGMENT
            return
        if s.yolo_drift_large:
            # In full implementation, trigger flow re-seed and keep TRACK.
            self.state = FindItemState.TRACK


if __name__ == "__main__":
    # Minimal dry run.
    sm = TrialFindItemStateMachine()
    print("initial:", sm.state.name)

    sm.handle_frame(FrameSignals(object_detected=True, object_stable_for_lock=True))
    print("after segment:", sm.state.name)

    sm.handle_frame(FrameSignals(flow_points_ok=True))
    print("after flash:", sm.state.name)

    sm.handle_frame(FrameSignals(centered=True))
    print("after center guide:", sm.state.name)

    sm.handle_frame(FrameSignals(hand_object_contact=True))
    print("in track:", sm.state.name)
