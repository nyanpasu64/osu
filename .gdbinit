add-auto-load-safe-path /usr/bin/mono-sgen-gdb.py

# arch switched to `pkgctl repo clone`
#dir /home/nyanpasu64/pkgbuild/qt5-base/trunk/src/qtbase/src/corelib/
#dir /home/nyanpasu64/pkgbuild/qt5-base/trunk/src/qtbase/src/widgets/
#dir /home/nyanpasu64/pkgbuild/qt5-base/trunk/src/qtbase/src/plugins/platforms/xcb

#dir /home/nyanpasu64/pkgbuild/kconfigwidgets/trunk/src/kconfigwidgets-5.82.0/src/
#dir /home/nyanpasu64/pkgbuild/pulseaudio/trunk/src/pulseaudio/src/pulse/
#dir /home/nyanpasu64/pkgbuild/pulseaudio/trunk/src/pulseaudio/src/pulsecore/
#dir /home/nyanpasu64/pkgbuild/libksysguard/trunk/src/libksysguard-5.22.4
dir /home/nyanpasu64/kde/src/frameworks/kxmlgui/src
dir /home/nyanpasu64/code/alsa-lib/src/pcm/
dir /home/nyanpasu64/code/pipewire/pipewire-alsa/alsa-plugins/

#python
#import sys
#sys.path.insert(0, "/home/nyanpasu64/code/kdevelop/plugins/gdb/printers")
#end
#source /home/nyanpasu64/code/kdevelop/plugins/gdb/printers/gdbinit

# define qstr
#   set $d=$arg0.d
#   printf "(Qt5 QString)0x%x length=%i: \"",&$arg0,$d->size
#   set $i=0
#   set $ca=(const ushort*)(((const char*)$d)+$d->offset)
#   while $i < $d->size
#     set $c=$ca[$i++]
#     if $c < 32 || $c > 127
#       printf "\\u%04x", $c
#     else
#       printf "%c" , (char)$c
#     end
#   end
#   printf "\"\n"
# end

set width unlimited
set pagination off

define log
	b $arg0
	commands
		c
	end
end

define sleep
	b $arg0
	commands
		shell sleep 1
		c
	end
end

define noprint-nostop
	handle SIG35 noprint nostop
	handle SIG36 noprint nostop
	handle SIG37 noprint nostop
end

define nostop
	handle SIG35 nostop
	handle SIG36 nostop
	handle SIG37 nostop
end

set debuginfod enabled on
define gef
	source /home/nyanpasu64/.gdbinit-gef.py
end

# Enable multiprocess debugging.
# See `Documents (Shared)/notes/gdb multiprocess.md`
define follow
	set detach-on-fork off
	#set non-stop on
	set print inferior-events on
	set schedule-multiple on
	#set mi-async on
end
# info threads

source ~/code/gdb-dashboard/.gdbinit
