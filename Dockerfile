FROM python:3.11

# 复制项目文件到容器中
COPY . /app

# 设置工作目录为项目目录
WORKDIR /app

# 安装项目依赖项
RUN pip install --upgrade pip && \
    pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn

# 运行docker run命令
CMD python main.py
