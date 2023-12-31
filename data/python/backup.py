import os  
import shutil  
from datetime import datetime  
  
def backup_rules():  
    # 获取当前日期  
    current_date = datetime.now().strftime('%Y-%m-%d')  
      
    # 定义源文件和目标文件夹  
    src_file = './data/rules.txt'  
    dst_folder = 'h./data/istory'  
      
    # 创建目标文件夹（如果不存在）  
    if not os.path.exists(dst_folder):  
        os.makedirs(dst_folder)  
      
    # 获取目标文件的完整路径  
    dst_file = os.path.join(dst_folder, current_date + '_' + os.path.basename(src_file))  
      
    # 复制文件并重命名  
    shutil.copy2(src_file, dst_file)  
    print(f"备份完成: {src_file} -> {dst_file}")  
  
if __name__ == '__main__':  
    backup_rules()
