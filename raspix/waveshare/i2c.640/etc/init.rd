/bin/ipcserv /drivers/raspix/uartd         /dev/tty0

/bin/ipcserv /drivers/raspix/fbd      /dev/fb0
/bin/ipcserv /drivers/displayd        /dev/display /dev/fb0
/bin/ipcserv /drivers/fontd           /dev/font

/bin/ipcserv /drivers/consoled        -u 0
@set_stdio /dev/console0

/bin/ipcserv /drivers/timerd          /dev/timer

/bin/ipcserv /drivers/waveshare/gt911_touchd  /dev/touch0

/bin/ipcserv /drivers/ramfsd          /tmp
/bin/ipcserv /drivers/nulld           /dev/null

/bin/ipcserv /sbin/sessiond

/bin/ipcserv /drivers/xserverd        /dev/x

@/sbin/x/xtouchd &
@/sbin/x/xim_vkey 560 168&
@/bin/x/xsession  misa &
