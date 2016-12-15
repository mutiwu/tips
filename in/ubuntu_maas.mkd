# Ubuntu MAAS 配置

***

## 安装MAAS

1. 安装Ubuntu操作系统

- 升级到最新

    >   #apt-get update

- 安装MAAS

    >   #apt-get install maas 

## 配置maas

1. 创建管理员账户

    >   # maas-region-admin createadmin

- 登录maas

    > http://<maas_IP>/MAAS/
        
- 配置DHCP/DNS服务器

    1. 点击cluster master

    2. 添加ineterface --- 使用此interface作为dhcp/dns服务接口

    3. 配置一个私有网络的ip地址作为dhcp服务器服务地址。

    4. 选择服务为dhcp/dns

    5. 配置ip range

- 配置安装镜像

    1. 点击image

    2. import image，选择要import的系统。
    
    >*通过网络import 会慢一些。*

- 通过mac地址可以添加node

    > *添加完成后 可以在node 管理*

- 需要添加电源管理

    - 对与虚拟机系统，通过libvirt来管理，电源管理可以使用如下配置
    
    >qemu+ssh://root@<IP>/system
