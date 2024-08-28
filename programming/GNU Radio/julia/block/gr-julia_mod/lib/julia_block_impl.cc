/* -*- c++ -*- */
/*
 * Copyright 2024 Valiha.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */
#include "julia_block_impl.h"
#include <gnuradio/io_signature.h>

#include <julia.h>

namespace gr {
namespace julia_mod {

#pragma message("set the following appropriately and remove this warning")
using input_type = float;
#pragma message("set the following appropriately and remove this warning")
using output_type = float;
julia_block::sptr julia_block::make(float sample_rate, float frequency)
{
    return gnuradio::make_block_sptr<julia_block_impl>(sample_rate, frequency);
}


/*
 * The private constructor
 */
julia_block_impl::julia_block_impl(float sample_rate, float frequency)
    : gr::sync_block("julia_block",
                     gr::io_signature::make(
                         1 /* min inputs */, 1 /* max inputs */, sizeof(input_type)),
                     gr::io_signature::make(
                         1 /* min outputs */, 1 /*max outputs */, sizeof(output_type)))
{
    // Initialize Julia
    jl_init();
    jl_eval_string("include(\"julia/process.jl\")");

}

/*
 * Our virtual destructor.
 */
julia_block_impl::~julia_block_impl() {
    // Shutdown Julia
    jl_atexit_hook(0);
}

int julia_block_impl::work(int noutput_items,
                           gr_vector_const_void_star& input_items,
                           gr_vector_void_star& output_items)
{
    auto in = static_cast<const input_type*>(input_items[0]);
    auto out = static_cast<output_type*>(output_items[0]);

#pragma message("Implement the signal processing in your block and remove this warning")
    // Do <+signal processing+>

    // Example: Use Julia to process data
//    jl_value_t *array_type = jl_apply_array_type((jl_value_t*)jl_float32_type, 1);
//    jl_array_t *julia_input = jl_ptr_to_array_1d(array_type, (void*)in, noutput_items, 0);
//    jl_array_t *julia_output = jl_ptr_to_array_1d(array_type, (void*)out, noutput_items, 0);
//
//    // Assuming you've defined a Julia function 'process' that processes the data
//    jl_function_t *process = jl_get_function(jl_main_module, "process");
//    jl_call2(process, (jl_value_t*)julia_input, (jl_value_t*)julia_output);

    // Tell runtime system how many output items we produced.
    return noutput_items;
}

} /* namespace julia_mod */
} /* namespace gr */
