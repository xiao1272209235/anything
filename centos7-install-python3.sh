#!/bin/bash

yum -y install gcc make cmake zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel xz xz-devel libffi-devel

wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz

tar -xvJf  Python-3.7.2.tar.xz

mkdir /usr/local/python3 

cd Python-3.7.2
/configure --prefix=/usr/local/python3 --enable-optimizations
#第一个指定安装的路径,不指定的话,安装过程中可能软件所需要的文件复制到其他不同目录,删除软件很不方便,复制软件也不方便.
#第二个可以提高python10%-20%代码运行速度.
#第三个是为了安装pip需要用到ssl,后面报错会有提到.
make -j4 && make install -j4

ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3

python3 -V
pip3 -V
