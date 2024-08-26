/* -*- c++ -*- */
/*
 * Copyright 2024 Valiha.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_JULIA_MOD_JULIA_BLOCK_H
#define INCLUDED_JULIA_MOD_JULIA_BLOCK_H

#include <gnuradio/julia_mod/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
namespace julia_mod {

/*!
 * \brief <+description of block+>
 * \ingroup julia_mod
 *
 */
class JULIA_MOD_API julia_block : virtual public gr::sync_block
{
public:
    typedef std::shared_ptr<julia_block> sptr;

    /*!
     * \brief Return a shared_ptr to a new instance of julia_mod::julia_block.
     *
     * To avoid accidental use of raw pointers, julia_mod::julia_block's
     * constructor is in a private implementation
     * class. julia_mod::julia_block::make is the public interface for
     * creating new instances.
     */
    static sptr make(float sample_rate = 1.0, float frequency = 1000.0);
};

} // namespace julia_mod
} // namespace gr

#endif /* INCLUDED_JULIA_MOD_JULIA_BLOCK_H */
