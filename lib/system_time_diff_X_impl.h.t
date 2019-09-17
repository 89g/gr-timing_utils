/* -*- c++ -*- */
/* 
 * Copyright 2018 National Technology & Engineering Solutions of Sandia, LLC (NTESS). Under the terms of Contract DE-NA0003525 with NTESS, the U.S. Government retains certain rights in this software.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/* @WARNING@ */

#ifndef @GUARD_NAME@
#define @GUARD_NAME@

#include <timing_utils/@BASE_NAME@.h>
#include <timing_utils/constants.h>
#include <boost/thread/thread_time.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

namespace gr {
  namespace timing_utils {

    class @IMPL_NAME@ : public @BASE_NAME@
    {
     private:
      boost::posix_time::ptime  d_epoch;
      bool                      d_update_time;
      bool                      d_output_data;
      bool                      d_output_diff;
      
      // output difference port depends on if data is being output as well
      int                       d_diff_port;

     public:
      @IMPL_NAME@(bool output_data, bool update_time, bool output_diff);
      ~@IMPL_NAME@();

      // Where all the action really happens
      int general_work(int noutput_items,
        gr_vector_int &ninput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items);
    };

  } // namespace timing_utils
} // namespace gr

#endif /* @GUARD_NAME@ */

