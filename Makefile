DESTDIR=

gardenlinux.pp:
	./version_patch.sh
	checkmodule -M -m -o gardenlinux.mod gardenlinux-selinux-module.te
	semodule_package -o gardenlinux.pp -m gardenlinux.mod
	bzip2 -c gardenlinux.pp > gardenlinux.pp.bz2

clean: 
	rm -f gardenlinux.mod gardenlinux.pp gardenlinux.pp.bz2

install:
	install -D gardenlinux.pp.bz2 $(DESTDIR)/usr/share/selinux/custom/gardenlinux.pp.bz2
