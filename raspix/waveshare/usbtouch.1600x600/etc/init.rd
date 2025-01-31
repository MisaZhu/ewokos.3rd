/bin/ipcserv /drivers/raspix/uartd         /dev/tty0
/bin/ipcserv /drivers/raspix/usbd          /dev/touch0

/bin/ipcserv /drivers/raspix/fbd           /dev/fb0
/bin/ipcserv /drivers/displayd             
/bin/ipcserv /drivers/fontd                

/bin/ipcserv /drivers/consoled             -u 0
@set_stdio /dev/console0

/bin/ipcserv /drivers/timerd               
/bin/ipcserv /drivers/nulld                /dev/null
/bin/ipcserv /drivers/ramfsd               /tmp

/bin/ipcserv /sbin/sessiond

/bin/ipcserv /drivers/xserverd             /dev/x
@/sbin/x/xtouch &
@/sbin/x/xim_vkey &

@/bin/x/xsession misa &