CFLAGS = "-fPIC"
export CFLAGS
voc = /opt/voc/bin/voc
INC0 = "-I/opt/voc/src/lib/system/linux/gcc/x86_64"
INC1 = "-I/opt/voc/lib/voc/obj"
LDFLAGS="-L/opt/voc/lib -lVishapOberon"



all:
	$(voc) -s stdin.Mod chararr.Mod hyaline.Mod
	cc -c $(CFLAGS) $(INC0) stdin.c
	cc -c $(CFLAGS) $(INC0) chararr.c
	cc -c $(CFLAGS) $(INC0) $(INC1) hyaline.c
	cc -shared $(LDFLAGS) -o hyaline.so stdin.o chararr.o hyaline.o
clean:
	rm -rf *.sym
	rm -rf *.o
	rm -rf *.c
	rm -rf *.h
