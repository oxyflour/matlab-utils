function y = izip(f, varargin)
	a0 = varargin{1};
	y = map(@(a, v)v, a0)
end