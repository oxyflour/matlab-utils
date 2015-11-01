function a = map(a, f, varargin)
	n = length(a);
	i = 1:n;
	if iscell(a); a = cellfun(f, a, num2cell(i), num2cell(i+n-i), varargin{:});
			else; a = arrayfun(f, a, i, i+n-i, varargin{:});
end