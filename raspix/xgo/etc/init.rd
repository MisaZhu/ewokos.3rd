/bin/ipcserv /drivers/xgo/spilcdd    /dev/fb0
/bin/ipcserv /drivers/displayd       
/bin/ipcserv /drivers/fontd          

/bin/ipcserv /drivers/consoled       -u 0
@set_stdio /dev/console0

/bin/ipcserv /drivers/timerd         

/bin/ipcserv /drivers/xgo/xgo_buttond    /dev/keyb0
/bin/ipcserv /drivers/raspix/uartd   /dev/tty0

/bin/ipcserv /drivers/xserverd       /dev/x

@/sbin/x/xim_none   /dev/keyb0 &
#@/sbin/x/xim_vkey 320 120&

#@/bin/shell /etc/x/xinit.rd &
@/apps/xgo/xgo &
