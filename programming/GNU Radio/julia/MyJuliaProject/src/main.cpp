#include <julia.h>

int main(int argc, char *argv[]) {
    // Initialize Julia
    jl_init();

    // Example: Call a Julia function from C++
    jl_eval_string("println(\"Hello from Julia!\")");

    // Shutdown Julia
    jl_atexit_hook(0);
    return 0;
}

