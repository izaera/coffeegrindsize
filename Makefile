install:
	$(INSTALL) -D -m 0555 coffeegrindsize.py $(DESTDIR)$(PREFIX)/bin/coffeegrindsize
	$(INSTALL) -D -m 0444 Help/Bad_Example_Picture.png $(DESTDIR)$(PREFIX)/share/doc/coffeegrindsize/Bad_Example_Picture.png
	$(INSTALL) -D -m 0444 Help/Better_Example_Picture.png $(DESTDIR)$(PREFIX)/share/doc/coffeegrindsize/Better_Example_Picture.png
	$(INSTALL) -D -m 0444 Help/coffee_grind_size_manual.pdf $(DESTDIR)$(PREFIX)/share/doc/coffeegrindsize/coffee_grind_size_manual.pdf
	$(INSTALL) -D -m 0444 Help/coffee_grind_size_summarized_manual.pdf $(DESTDIR)$(PREFIX)/share/doc/coffeegrindsize/coffee_grind_size_summarized_manual.pdf
	$(INSTALL) -D -m 0444 Help/Decent_Example_Picture.png $(DESTDIR)$(PREFIX)/share/doc/coffeegrindsize/Decent_Example_Picture.png

rpm:
	cp coffeegrindsize.spec $(HOME)/rpmbuild/SPECS
	spectool -g -R $(HOME)/rpmbuild/SPECS/coffeegrindsize.spec
	rpmbuild $(HOME)/rpmbuild/SPECS/coffeegrindsize.spec -bb --nodebuginfo

