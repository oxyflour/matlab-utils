function y = iif(x, a, b)
	if x
		y = a;
	else
		y = b;
	end
	if isa(y, 'function_handle')
		y = y();
	end
end