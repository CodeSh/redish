install:
	@echo -e 'Installing redish...'
	@install -d $(DESTDIR)/usr/share/redish/
	@install -d $(DESTDIR)/usr/bin
	@install -v -m 755 redish $(DESTDIR)/usr/bin/
	@echo -e '\e[0;32mDone!\e[0m'
	
uninstall:
	@echo "Unistalling..."
	@rm -rf $(DESTDIR)/usr/share/redish
	@rm -rf $(DESTDIR)/usr/bin/redish
	@echo "Done!"
