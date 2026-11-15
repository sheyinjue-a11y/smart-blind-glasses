import numpy as np
import tensorflow as tf
from PIL import Image

# 1. 加载 TFLite 模型 (已修改为你实际的模型文件名)
model_path = "midas.tflite"
print(f"正在加载模型: {model_path}...")
interpreter = tf.lite.Interpreter(model_path=model_path)
interpreter.allocate_tensors()

# 获取输入和输出张量的详细信息
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()

print(f"模型要求输入形状: {input_details[0]['shape']}, 数据类型: {input_details[0]['dtype']}")
print(f"模型输出形状: {output_details[0]['shape']}, 数据类型: {output_details[0]['dtype']}")
print("-" * 40)

# 2. 准备图片数据 (已修改为你实际的测试图片名)
image_path = "midas_test_photo.jpg"
# 读取图片 -> 强制转换为 RGB -> 缩放到 256x256 (模型要求的尺寸)
img = Image.open(image_path).convert('RGB').resize((256, 256))

# 将图片转为 numpy 数组。因为你的模型是 uint8，所以这里用 uint8，绝对不要除以 255.0！
img_data = np.array(img, dtype=np.uint8) 

# 目前 img_data 是 [256, 256, 3]，模型需要 [1, 256, 256, 3]，所以在前面增加一个 Batch 维度
input_data = np.expand_dims(img_data, axis=0)

# 3. 执行推理
interpreter.set_tensor(input_details[0]['index'], input_data)
interpreter.invoke() # 运行模型
output_data = interpreter.get_tensor(output_details[0]['index'])

# 4. 提取“对齐密码”（核心调试步骤）
print("=== 请将以下数据记录下来，用于手机端对比 ===")
# 提取输入张量（第一行第一列的那个像素）的 R, G, B 值
print(f"输入张量前3个值 (RGB): {input_data[0][0][0][:3]}") 

# 输出张量形状是 [1, 256, 256, 1]，提取前 5 个深度预测值
print(f"输出张量前5个值 (深度): {output_data[0][0][0][:5].flatten()}") 
print("-" * 40)

# 5. 生成结果图，用肉眼验证模型是否正常工作
# output_data 目前是 [1, 256, 256, 1]，把多余的 1 维度挤压掉，变成 [256, 256] 的二维矩阵
depth_map = np.squeeze(output_data) 

# 将这个 256x256 的二维矩阵直接转换为灰度图 (mode='L' 表示 8-bit pixels, black and white)
depth_img = Image.fromarray(depth_map, mode='L')
output_path = "pc_depth_output.jpg"
depth_img.save(output_path)
print(f"已在电脑端生成深度图: {output_path}，快打开看看效果吧！")