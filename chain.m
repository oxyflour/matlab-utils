function x = chain(x, a)
	for i = 1:size(a, 1)
		f = a{i, 1};
		v = a{i, 2};
		if iscell(v); v = v{:}; end
		x = f(x, v);
	end
end