SCRIPTS		=	scls.sh \
				mc.sh

SCRIPTS_DIR	=	./scripts
INSTALL_DIR =	~/.local/bin

SOURCES		=	$(addprefix $(SCRIPTS_DIR)/, $(SCRIPTS))
TARGETS		=	$(addprefix $(INSTALL_DIR)/, $(SCRIPTS))

install:  $(SOURCES)
	mkdir -p $(INSTALL_DIR)
	cp $^ $(INSTALL_DIR)

uninstall:
	rm -f $(TARGETS)
