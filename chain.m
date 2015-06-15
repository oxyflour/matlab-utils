function x = chain(x, a)
	for i = 1:size(a, 1)
		f = a{i, 1};
		v = a{i, 2};
		if length(v)
			if iscell(v)
				v = v{:};
			end
			x = f(x, v);
		else
			x = f(x);
		end
	end
end