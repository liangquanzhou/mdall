PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

.PHONY: install uninstall

install:
	install -d $(BINDIR)
	install -m 755 bin/mdall bin/md-preview $(BINDIR)

uninstall:
	rm -f $(BINDIR)/mdall $(BINDIR)/md-preview
