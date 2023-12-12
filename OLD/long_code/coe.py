from PIL import Image


def convert_image_to_12bit_array(image_path):
    # 打开原始图片
    img = Image.open(image_path)
    
    Height = 120
    Height = int(Height)
    Width  = 160
    Width  = int(Width)

    # 转换为RGB（如果不是）
    img = img.convert('RGB')

    # 将图片尺寸调整为640x480
    img = img.resize((Width, Height))

    # 创建用于存储12位RGB值的二维数组
    img_12bit_array = []

    # 遍历调整尺寸后的图片的每个像素
    for y in range(Height):
        row = []
        for x in range(Width):
            # 获取当前像素的RGB值
            r, g, b = img.getpixel((x, y))

            # 将8位颜色缩减为4位（0-255 缩减至 0-15）
            r, g, b = (r // 16, g // 16, b // 16)

            # 合并RGB值为12位（4位R, 4位G, 4位B）
            rgb_12bit = (r << 8) | (g << 4) | b
            row.append(rgb_12bit)
        img_12bit_array.append(row)

    return img_12bit_array

def write_coe_file(data, filename):
    """
    将数据写入一个COE文件。
    :param data: 二维数组，包含12位RGB值。
    :param filename: 输出COE文件的名称。
    """
    with open(filename, 'w') as file:
        # 写入文件头
        file.write("memory_initialization_radix=16;\n")
        file.write("memory_initialization_vector=\n")

        # 将二维数组转换为一维数组并写入数据
        data_flat = [item for sublist in data for item in sublist]
        for i, value in enumerate(data_flat):
            # 将12位RGB值转换为16位，并转换为十六进制
            hex_value = format(value, '04x')
            # 写入文件，每个值后面跟一个逗号，最后一个值后面跟分号
            file.write(hex_value + (",\n" if i < len(data_flat) - 1 else ";\n"))

# 使用示例
# 请替换 "path_to_your_image.jpg" 为你的图片路径
array_12bit = convert_image_to_12bit_array("2.jpg")
write_coe_file(array_12bit, "2.coe")
