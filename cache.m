% Usage: cache(filename, opt variable)
% cache variable in file, then you can get it via
%  cache(filename)
function val = cache(file, varargin)
	if length(varargin) > 0
		val = varargin{1};
		savetxt(file, val);
	else
		val = load(file);
	end
end
