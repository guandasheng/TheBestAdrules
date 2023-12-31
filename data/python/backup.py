import os  
import shutil  
import datetime  
  
# 定义源文件和目标文件夹  
src_file = 'rules.txt'  
dst_folder = 'history'  
  
# 获取当前时间戳  
timestamp = datetime.datetime.now().strftime('%Y%m%d%H%M%S')  
  
# 生成目标文件名  
dst_file = f'{timestamp}.txt'  
  
# 构建完整的源文件路径和目标文件夹路径  
src_path = os.path.join(os.getcwd(), src_file)  
dst_path = os.path.join(os.getcwd(), dst_folder, dst_file)  
  
# 复制文件  
shutil.copy(src_path, dst_path)
