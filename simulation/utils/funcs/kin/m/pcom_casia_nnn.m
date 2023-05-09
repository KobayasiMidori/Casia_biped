function [output1] = pcom_casia_nnn(var1)
    if coder.target('MATLAB')
        [output1] = pcom_casia_nnn_mex(var1);
    else
        coder.cinclude('pcom_casia_nnn_src.h');
        
        output1 = zeros(1, 3);

        
        coder.ceval('pcom_casia_nnn_src' ...
            ,coder.wref(output1) ...
            ,coder.rref(var1) );
    end
end
