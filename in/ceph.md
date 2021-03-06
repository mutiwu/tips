# Ceph

***

## 配置 Ceph

- ***rbd ls qemu-kvm-pool -m 10.66.9.236***


- **progress**

    1. Download ceph souce code.

        >`#git clone https://github.com/ceph/ceph.git`

    - Omit subscription-manager

        >`# diff install-deps.sh install-deps.sh_bak`
        
        >`67c67`
        
        >`< #                    $SUDO subscription-manager repos`

        >`--enable=rhel-$MAJOR_VERSION-server-optional-rpms`

        >`---`
        >`\>                     $SUDO subscription-manager repos`
        >`--enable=rhel-$MAJOR_VERSION-server-optional-rpms`

    - Install ceph

        >`#./install-deps.sh`

        >`#./run-make-check.sh`

    - Start ceph

        >`# cd src/`

        >`# ./vstart.sh -d -n -X   /* -x enable auth -X disable authentication`

        >`# ./ceph health`
        
        >`# ./ceph osd pool stats`

        >`# ./ceph osd pool stats cephfs_data`

        >`# ./rados df`

        >`# ./rados mkpool mypool`

        >`# ./ceph osd pool create qemu-kvm-pool 128 128`

    - Disable authentication

        >`# diff ceph.conf ceph.conf_bak`

        >`1c1`
        
        >`< ; generated by vstart.sh on 2015年 07月 06日 星期一 19:45:59 CST`

        >`---`

        >` > ; generated by vstart.sh on 2015年 07月 06日 星期一 18:49:04 CST`

        >`3c3`

        >`<         fsid = c80c25ea-b0f8-4da8-8bc9-af0c7500f376`

        >`---`

        >` >         fsid = c429a053-c637-4da2-96c7-787f7ad5a1c4`

        >`18c18`

        >`<         auth supported = none`

        >`---`
        >` >         auth supported = cephx`

    - 重启ceph 服务

        >`# restart ceph`

    - Create image

        >`# ./rados -p  qemu-kvm-pool ls`

        >`# rbd ls qemu-kvm-pool -m 10.66.9.236`

        >`# qemu-img create -f raw rbd:qemu-kvm-pool/test.raw:mon_host=10.66.9.236 3G`


***

**Reference links**

- [ceph 官网](http://ceph.com/docs/master/start)

***
