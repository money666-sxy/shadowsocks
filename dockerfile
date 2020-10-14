FROM docker.io/ansible/centos7-ansible

RUN yum install -y python-setuptools && easy_install pip \
&& yum install -y  git \
&& pip install git+https://github.com/shadowsocks/shadowsocks.git@master

COPY shadowsocks.json /etc/shadowsocks.json

ENTRYPOINT ["ssserver"]

CMD ["-c","/etc/shadowsocks.json"]
