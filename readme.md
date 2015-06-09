## Functions


### chain(object, func_args_cell)
In other languages, you can probably write
```c
obj.foo(1, 2).bar(3).go()
```
In Matlab, you have to write
```matlab
go(bar(foo(obj, 1, 2), 3))
```
With this helper function, you can simply write
```matlab
chain(obj, {
	foo {1, 2}
	bar 3
	go	{}
})
```


### cache(file_name, variable)
In Matlab, when you want to save a complex variable, you may have to write
```matlab
y = [a b];
save(file_name, 'y')
```
With this helper, you can simple write
```matlab
cache(file_name, [a b])
```


### more...
More descriptions will be added later


## License
GPL