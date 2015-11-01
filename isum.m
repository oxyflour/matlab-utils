function y = isum(a, f)
	y = 0;
	for i = 1:length(a(:))
		y = y + f(a(i));
	end
end