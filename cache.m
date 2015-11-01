% Usage: cache(filename, opt variable)
% cache variable in file, then you can get it via
%  cache(filename)
function val = cache(file, varargin)
	if length(varargin) > 0
		val = varargin{1};
		save(file, 'val', '-ascii');
	else
		val = load(file);
	end
end
