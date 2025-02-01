/bin/ipcserv /drivers/xgo/spilcdd    /dev/fb0
/bin/ipcserv /drivers/displayd       
/bin/ipcserv /drivers/fontd          

export UX_ID=0
/bin/ipcserv /drivers/consoled     
set_stdio /dev/console0
export KLOG_DEV=/dev/console0

/bin/ipcserv /drivers/timerd         

/bin/ipcserv /drivers/xgo/xgo_buttond    /dev/keyb0
/bin/ipcserv /drivers/raspix/uartd   /dev/tty0


export UX_ID=7
/bin/ipcserv /drivers/xserverd       /dev/x

/sbin/x/xim_none   /dev/keyb0 &
#@/sbin/x/xim_vkey 320 120&

#@/bin/shell /etc/x/xinit.rd &
setux 7
@/apps/xgo/xgo &
