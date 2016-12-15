# ipmi

***

## ipmi modules

1. ipmi_watchdog          23519  0 

- ipmi_poweroff          11994  0 

- ipmi_devintf           13079  0 

- ipmi_msghandler 

- ipmi_si

## ipmi 修改BMC的MAC信息

> *只能在本地以root用户做，因为在此之前没IP*

1. enable BMC MAC SET mode:

    >   # /usr/bin/ipmitool raw 0x0c 0x01 0x01 0xc2 0x00

- Write MAC to BMC (BMC MAC=d0:27:88:a4:e4:37):
    >   # /usr/bin/ipmitool raw 0x0c 0x01 0x01 0x05 0xD0 0x27 0x88 0xA4 0xE4 0x37

## ipmi 打开 sol模式

>   # ipmitool -I lanplus -U ADMIN -P redhat -H 172.30.132.100 sol activate
