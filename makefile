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
	
deb:
	@echo 'Starting process to make a new deb...'
	@mkdir .temp
	@mkdir -p .temp/usr/bin & mkdir -p .temp/usr/share/redish
	@cp redish .temp/usr/bin/ & cp redish .temp/usr/share/redish/
	@mkdir ./.temp/DEBIAN
	@echo "Package: redish" >> ./.temp/DEBIAN/control
	@echo "Priority: optional " >> ./.temp/DEBIAN/control
	@echo "Section: shells " >> ./.temp/DEBIAN/control
	@echo "Maintainer: Harry " >> ./.temp/DEBIAN/control
	@echo "Architecture: all " >> ./.temp/DEBIAN/control
	@echo "Version: 1.0 " >> ./.temp/DEBIAN/control
	@echo "Depends: " >> ./.temp/DEBIAN/control
	@echo "Description: redish redis register"  >> ./.temp/DEBIAN/control
	@sudo chown -R root.root ./.temp
	@dpkg -b .temp redish.deb
	@echo 'Removing .temp folder...'
	@sudo rm -r .temp
