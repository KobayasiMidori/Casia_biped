/*
 * Automatically Generated from Mathematica.
 * Thu 26 Mar 2020 17:47:45 GMT+08:00
 */

#ifndef P_TOE_JOINT_RIGHT_MEX_HH
#define P_TOE_JOINT_RIGHT_MEX_HH

#ifdef MATLAB_MEX_FILE
// No need for external definitions
#else // MATLAB_MEX_FILE


#include "math2mat.hpp"
#include "mdefs.hpp"

namespace SymExpression
{

  void p_toe_joint_right_mex_raw(double *p_output1, const double *var1);

  inline void p_toe_joint_right_mex(Eigen::MatrixXd &p_output1, const Eigen::VectorXd &var1)
  {
    // Check
    // - Inputs
    assert_size_matrix(var1, 20, 1);

	
    // - Outputs
    assert_size_matrix(p_output1, 3, 1);


    // set zero the matrix
    p_output1.setZero();


    // Call Subroutine with raw data
    p_toe_joint_right_mex_raw(p_output1.data(), var1.data());
    }
  
  
}

#endif // MATLAB_MEX_FILE

#endif // P_TOE_JOINT_RIGHT_MEX_HH
