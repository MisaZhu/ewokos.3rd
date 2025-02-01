/bin/ipcserv /drivers/raspix/uartd         /dev/tty0

/bin/ipcserv /drivers/waveshare/rpi_lcdd   /dev/fb0
/bin/ipcserv /drivers/displayd             
/bin/ipcserv /drivers/fontd                

export UX_ID=0
/bin/ipcserv /drivers/consoled       
@set_stdio /dev/console0
export KLOG_DEV=/dev/console0  

/bin/ipcserv /drivers/timerd               

/bin/ipcserv /drivers/nulld                /dev/null
/bin/ipcserv /drivers/ramfsd               /tmp

/bin/ipcserv /sbin/sessiond
#/bin/session -r &

/bin/ipcserv /drivers/xserverd             /dev/x

@/sbin/x/xtouch /dev/fb0 &
@/sbin/x/xim_vkey &

@/bin/x/xsession misa &