/* -*- c++ -*- */
/*
 * Copyright 2024 Valiha.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_JULIA_MOD_JULIA_BLOCK_IMPL_H
#define INCLUDED_JULIA_MOD_JULIA_BLOCK_IMPL_H

#include <gnuradio/julia_mod/julia_block.h>

namespace gr {
namespace julia_mod {

class julia_block_impl : public julia_block
{
private:
    // Nothing to declare in this block.

public:
    julia_block_impl(float sample_rate, float frequency);
    ~julia_block_impl();

    // Where all the action really happens
    int work(int noutput_items,
             gr_vector_const_void_star& input_items,
             gr_vector_void_star& output_items);
};

} // namespace julia_mod
} // namespace gr

#endif /* INCLUDED_JULIA_MOD_JULIA_BLOCK_IMPL_H */
