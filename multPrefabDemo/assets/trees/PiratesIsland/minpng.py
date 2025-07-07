# -*- coding: utf-8 -*-

import os
from PIL import Image

def resize_large_png():
    """
    递归遍历当前目录，将宽或高大于1024的PNG图片缩小一半，保持透明通道
    """
    processed_count = 0
    
    print("开始递归处理当前目录中的大尺寸PNG图片...")
    print("-" * 50)
    
    # 递归遍历当前目录及所有子目录
    for root, dirs, files in os.walk('.'):
        # 显示当前处理的目录
        png_files = [f for f in files if f.lower().endswith('.png')]
        if png_files:
            print(f"\n📁 处理目录: {root}")
        
        for file in files:
            # 检查是否为PNG文件
            if file.lower().endswith('.png'):
                file_path = os.path.join(root, file)
                
                try:
                    with Image.open(file_path) as img:
                        width, height = img.size
                        
                        # 只处理宽或高大于1024的图片
                        if width >= 1024 or height >= 1024:
                            # 缩小一半
                            new_width = width // 2
                            new_height = height // 2
                            
                            # 保持原图的颜色模式进行缩放
                            resized_img = img.resize((new_width, new_height), Image.Resampling.LANCZOS)
                            
                            # 保存时保持PNG格式和所有元数据
                            resized_img.save(file_path, 'PNG', optimize=False)
                            
                            print(f"  ✓ {file}: {width}x{height} → {new_width}x{new_height} (模式: {img.mode})")
                            processed_count += 1
                        else:
                            print(f"  - {file}: {width}x{height} (跳过，尺寸不足1024)")
                        
                except Exception as e:
                    print(f"  ✗ {file}: 处理失败 - {e}")
    
    print("\n" + "=" * 50)
    print(f"递归处理完成! 共处理了 {processed_count} 个文件")

if __name__ == "__main__":
    try:
        from PIL import Image
    except ImportError:
        print("错误: 请先安装PIL库")
        print("运行: pip install Pillow")
        exit(1)
    
    resize_large_png()