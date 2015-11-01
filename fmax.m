function y = find_max(f, b, e, n, a)
	while (b-e) * (b-e) / (b*b + e*e) > a * a
		x = linspace(b, e, n);
		y = f(x);
		[v i] = max(y);
		if i > 2 && i < n - 1
			b = x(i-2);
			e = x(i+2);
		elseif i > 1 && i < n
			b = x(i-1);
			e = x(i+1);
		else
			break
		end
	end
	y = (b + e) / 2;
end