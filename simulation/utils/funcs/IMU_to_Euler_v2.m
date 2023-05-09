function [yaw, pitch, roll, dyaw, dpitch, droll] = IMU_to_Euler_v2( q,w )
    R = Tool.Angles.Quaternion_to_Matrix(q);
    dR = Tool.Angles.AngularVelocity_to_dMatrix(w,R);

    [yaw,pitch,roll] = Tool.Angles.Matrix_to_Euler(R);
    [dyaw,dpitch,droll] = Tool.Angles.dMatrix_to_dEuler(R,dR);
end

