SCRIPTS         =   fzfc.sh     \
                    fzh.sh      \
                    mc.sh       \
                    path.sh     \
                    scls.sh     \
                    b16.sh      \
                    kbconf.sh	\
					alacolors


ASCRIPTS        =   $(SCRIPTS:.sh=)
SCRIPTS_DIR     =   ./scripts
INSTALL_DIR     =   ~/.local/bin

SOURCES         =   $(addprefix $(SCRIPTS_DIR)/, $(SCRIPTS))
TARGETS         =   $(addprefix $(INSTALL_DIR)/, $(SCRIPTS))
EXEC_TARGETS    =   $(addprefix $(INSTALL_DIR)/, $(ASCRIPTS))
EXECS           =   $(addprefix $(SCRIPTS_DIR)/, $(ASCRIPTS))

#
# modes :
#
default:            install_ascripts clean

install_ascripts:   uninstall copy

install_sscripts:   uninstall copy_sources

#
# recipes:
#
copy_sources: $(SOURCES)
	test -d $(INSTALL_DIR) \
		|| mkdir -p $(INSTALL_DIR)
	cp $^ $(INSTALL_DIR)

uninstall:
	rm -f $(TARGETS) $(EXEC_TARGETS)

copy: $(EXECS)
	test -d $(INSTALL_DIR) \
		|| mkdir -p $(INSTALL_DIR)
	cp $^ $(INSTALL_DIR)

%:                  %.sh
	cp $< $@ && \
		chmod 755 $@

configure: $(SOURCES)
	chmod 755 $^

clean:
	rm -f $(EXECS)
