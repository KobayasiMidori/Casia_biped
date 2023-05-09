function [output1] = vcom_casia_nnn(var1,var2)
    if coder.target('MATLAB')
        [output1] = vcom_casia_nnn_mex(var1,var2);
    else
        coder.cinclude('vcom_casia_nnn_src.h');
        
        output1 = zeros(3, 1);

        
        coder.ceval('vcom_casia_nnn_src' ...
            ,coder.wref(output1) ...
            ,coder.rref(var1) ,coder.rref(var2) );
    end
end
