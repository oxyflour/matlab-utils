function a = ifilter(a, f)
	a = a(map(a, f));
end