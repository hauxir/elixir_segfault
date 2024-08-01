#include <erl_nif.h>

static ERL_NIF_TERM segfault(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    int* p = NULL;
    *p = 10; // Intentional segmentation fault
    return enif_make_string(env, "It won't reach here!", ERL_NIF_LATIN1);
}

static ErlNifFunc nif_funcs[] = {
    {"segfault", 0, segfault}
};

ERL_NIF_INIT(Elixir.SegfaultApp.Nif, nif_funcs, NULL, NULL, NULL, NULL)
