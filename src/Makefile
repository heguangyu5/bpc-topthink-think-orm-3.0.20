libthink-orm.so:
	./bpc-prepare.sh
	$(MAKE) -C ../think libthink-orm

libthink-orm:
	bpc -v \
	    -c ../think-orm-bpc.conf \
	    -l think-orm \
	    --pseudo-class-list think\\Exception,think\\Facade \
	    -u think-helper \
	    -u psr-simplecache \
	    --input-file src.list

install-libthink-orm:
	cd ../think && bpc -l think-orm --install
