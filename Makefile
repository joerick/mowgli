prefix=$(DESTDIR)/usr/local

install:
	mkdir -p $(prefix)/bin
	install -m 0755 mowgli $(prefix)/bin
	mkdir -p $(prefix)/share/mowgli
	cp -R package.toybox $(prefix)/share/mowgli
	cp -R version.toybox $(prefix)/share/mowgli
	cp -R release.toybox $(prefix)/share/mowgli

.PHONY: install
