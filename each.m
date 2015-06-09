function a = each(a, f, varargin)
	if iscell(a); cellfun(f, a, varargin{:});
			else; arrayfun(f, a, varargin{:});
end