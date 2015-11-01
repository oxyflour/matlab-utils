function mkdirp(dir)
	if (~exist(dir, 'dir'))
		mkdir(dir);
	end
end
