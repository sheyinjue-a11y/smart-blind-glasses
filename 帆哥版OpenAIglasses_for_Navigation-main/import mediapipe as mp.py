import mediapipe as mp
from mediapipe.tasks.python import vision

# 1. 查看配置类接口 (Options)
help(vision.HandLandmarkerOptions)

# 2. 查看主任务类接口 (Methods)
help(vision.HandLandmarker)

# 3. 快速列出所有属性和方法
print(dir(vision.HandLandmarker))