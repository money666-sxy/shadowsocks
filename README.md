shadowsocks for docker


!!快速开始：

yum install -y docker 

docker pull uhub.service.ucloud.cn/money666_hub/shadowsocks:2.0

docker run -d  -p 10001:10001 uhub.service.ucloud.cn/money666_hub/shadowsocks:2.0




制作镜像：

git clone https://github.com/money666-sxy/shadowsocks.git

docker build -t dockerfile .

docker run -d -p 10001:10001 dockerfile




默认密码为 123456

默认加密方式为 aes-256-cfb

默认端口为 10001 （本机暴露端口可以在p参数后修改）



更多修改请参考shadowsocks.json

