all: priv/segfault_app.so

priv/segfault_app.so: c_src/segfault_nif.c
	$(CC) $(CFLAGS) -I/usr/lib/erlang/erts-*/include -fPIC -shared $^ -o $@

clean:
	$(RM) priv/segfault_app.so
