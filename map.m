function a = map(a, f, varargin)
	if iscell(a); a = cellfun(f, a, varargin{:});
			else; a = arrayfun(f, a, varargin{:});
end