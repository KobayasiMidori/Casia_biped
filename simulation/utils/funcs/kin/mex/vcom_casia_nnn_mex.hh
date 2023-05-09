/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:50:21 GMT+08:00
 */

#ifndef VCOM_CASIA_NNN_MEX_HH
#define VCOM_CASIA_NNN_MEX_HH

#ifdef MATLAB_MEX_FILE
// No need for external definitions
#else // MATLAB_MEX_FILE


#include "math2mat.hpp"
#include "mdefs.hpp"

namespace SymExpression
{

  void vcom_casia_nnn_mex_raw(double *p_output1, const double *var1,const double *var2);

  inline void vcom_casia_nnn_mex(Eigen::MatrixXd &p_output1, const Eigen::VectorXd &var1,const Eigen::VectorXd &var2)
  {
    // Check
    // - Inputs
    assert_size_matrix(var1, 20, 1);
    assert_size_matrix(var2, 20, 1);

	
    // - Outputs
    assert_size_matrix(p_output1, 3, 1);


    // set zero the matrix
    p_output1.setZero();


    // Call Subroutine with raw data
    vcom_casia_nnn_mex_raw(p_output1.data(), var1.data(),var2.data());
    }
  
  
}

#endif // MATLAB_MEX_FILE

#endif // VCOM_CASIA_NNN_MEX_HH
