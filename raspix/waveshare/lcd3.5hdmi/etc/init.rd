#/bin/ipcserv /drivers/raspix/uartd         /dev/tty0

/bin/ipcserv /drivers/raspix/fbd           /dev/fb0
/bin/ipcserv /drivers/displayd             /dev/display /dev/fb0
/bin/ipcserv /drivers/fontd                /dev/font

/bin/ipcserv /drivers/consoled             -u 0
@set_stdio /dev/console0

/bin/ipcserv /drivers/timerd               /dev/timer
/bin/ipcserv /drivers/waveshare/xpt2046d   /dev/touch0

/bin/ipcserv /drivers/nulld                /dev/null
/bin/ipcserv /drivers/ramfsd               /tmp

/bin/ipcserv sbin/sessiond
#/bin/session -r &

/bin/ipcserv /drivers/xserverd             /dev/x

@/sbin/x/xtouch &
@/sbin/x/xim_vkey &

@/bin/x/xsession misa &