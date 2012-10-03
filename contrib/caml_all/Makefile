LIBUNIX_CUSTOM= ../libunix/unix.zo ../libunix/libunix.a

CAMLMKTOP=camlmktop

LIBNUM_CUSTOM= ../libnum/int_misc.zo ../libnum/fnat.zo ../libnum/nat.zo ../libnum/big_int.zo ../libnum/arith_flags.zo ../libnum/ratio.zo \
        ../libnum/num.zo ../libnum/arith_status.zo ../libnum/numprint.zo ../libnum/libnums.a

LIBSTR_CUSTOM=../libstr/str.zo ../libstr/libstr.a

X11_LIB=/usr/lib


LIBGRAPH_CUSTOM= ../libgraph/graphics.zo ../libgraph/libgraph.a  

LIBDIR=/usr/local/lib/caml-light

caml_all: 
	$(CAMLMKTOP) -o caml_all -custom $(LIBUNIX_CUSTOM) $(LIBNUM_CUSTOM) $(LIBSTR_CUSTOM) $(LIBGRAPH_CUSTOM) -ccopt -L$(X11_LIB) -lX11


all : caml_all 


clean: 
	rm caml_all

install: caml_all
	cp caml_all $(LIBDIR) 
