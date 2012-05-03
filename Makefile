prefix=$(DESTDIR)/usr/local

install: mowgli
	mkdir -p $(prefix)/bin
	install -m 0755 mowgli $(prefix)/bin
	install -m 0755 mowgli-xcode $(prefix)/bin
	install -m 0755 mowgli-make $(prefix)/bin
	mkdir -p $(prefix)/share/mowgli
	install -m 0755 toybox $(prefix)/share/mowgli
	install -m 0755 toybox.conf $(prefix)/share/mowgli

.PHONY: install
