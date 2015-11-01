function x = chain(x, a)
	for i = 1:size(a, 1)
		f = a{i, 1};
		v = a{i, 2};
		if length(v)
			if iscell(v)
				v = v{:};
			end
			if (nargout(f) > 0)
				x = f(x, v);
			else
				f(x, v);
				x = a;
			end
		else
			if (nargout(f) > 0)
				x = f(x);
			else
				f(x);
				x = a;
			end
		end
	end
end