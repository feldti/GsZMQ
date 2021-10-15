socket options
setPreOpenOptions

	self configOptions preOpenOptions do: [ :eachOption | self setSingleOption: eachOption ]
