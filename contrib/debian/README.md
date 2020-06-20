
Debian
====================
This directory contains files used to package legioncoind/legioncoin-qt
for Debian-based Linux systems. If you compile legioncoind/legioncoin-qt yourself, there are some useful files here.

## legioncoin: URI support ##


legioncoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install legioncoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your legioncoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/legioncoin128.png` to `/usr/share/pixmaps`

legioncoin-qt.protocol (KDE)

