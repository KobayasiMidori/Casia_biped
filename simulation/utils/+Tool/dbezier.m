function fcn = dbezier(coeff,s)

  dcoeff = Tool.diff_coeff(coeff);
	fcn = Tool.bezier(dcoeff,s);