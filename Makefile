PREFIX ?= /usr
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin

all:
	@echo "jrnl is a shell script, so there is nothing to do. Try \"make install\" instead."

install:
	install -v -d "$(DESTDIR)$(BINDIR)/" && install -m 0755 -v jrnl "$(DESTDIR)$(BINDIR)/jrnl"

