/bin/ipcserv /drivers/raspix/uartd       /dev/tty0
@set_stdio /dev/tty0

/bin/ipcserv /drivers/waveshare/lcdhatd  /dev/fb0 
/bin/ipcserv /drivers/displayd           
/bin/ipcserv /drivers/fontd              

export UX_ID=0
/bin/ipcserv /drivers/consoled       
@set_stdio /dev/console0
export KLOG_DEV=/dev/console0

#/bin/ipcserv /drivers/waveshare/gamekbd  /dev/keyb0
/bin/ipcserv /drivers/waveshare/joykeybd /dev/keyb0
/bin/ipcserv /drivers/vjoystickd         /dev/vjoystick /dev/keyb0
/bin/ipcserv /drivers/joymoused         /dev/mouse0 /dev/vjoystick 

/bin/ipcserv /drivers/timerd             
/bin/ipcserv /drivers/nulld              /dev/null
/bin/ipcserv /drivers/ramfsd             /tmp

/bin/ipcserv /sbin/sessiond

/sbin/x/xim_none   /dev/vjoystick &
/sbin/x/xmouse     /dev/mouse0 &
/sbin/x/xim_vkey &

#/bin/load_font
/bin/ipcserv /drivers/xserverd           /dev/x
@/bin/x/xsession misa &