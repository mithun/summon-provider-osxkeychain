###############################################################################
# MAKEFILE
###############################################################################

PREFIX?=/usr/local
INSTALL_BIN=$(PREFIX)/bin

.PHONY: install
install:
	install -d $(INSTALL_BIN)
	install ./bin/summon-provider-osxkeychain-create $(INSTALL_BIN)
	install ./bin/summon-provider-osxkeychain-read $(INSTALL_BIN)
	install ./bin/summon-provider-osxkeychain-update $(INSTALL_BIN)
	install ./bin/summon-provider-osxkeychain-delete $(INSTALL_BIN)

###############################################################################
