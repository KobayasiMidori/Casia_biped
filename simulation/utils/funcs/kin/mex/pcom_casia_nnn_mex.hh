/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:50:18 GMT+08:00
 */

#ifndef PCOM_CASIA_NNN_MEX_HH
#define PCOM_CASIA_NNN_MEX_HH

#ifdef MATLAB_MEX_FILE
// No need for external definitions
#else // MATLAB_MEX_FILE


#include "math2mat.hpp"
#include "mdefs.hpp"

namespace SymExpression
{

  void pcom_casia_nnn_mex_raw(double *p_output1, const double *var1);

  inline void pcom_casia_nnn_mex(Eigen::MatrixXd &p_output1, const Eigen::VectorXd &var1)
  {
    // Check
    // - Inputs
    assert_size_matrix(var1, 20, 1);

	
    // - Outputs
    assert_size_matrix(p_output1, 1, 3);


    // set zero the matrix
    p_output1.setZero();


    // Call Subroutine with raw data
    pcom_casia_nnn_mex_raw(p_output1.data(), var1.data());
    }
  
  
}

#endif // MATLAB_MEX_FILE

#endif // PCOM_CASIA_NNN_MEX_HH
