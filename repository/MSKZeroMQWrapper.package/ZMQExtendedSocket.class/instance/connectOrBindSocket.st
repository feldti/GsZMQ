service
connectOrBindSocket

	self doBind ifTrue:[ self bindSocket ] ifFalse:[ self connectSocket ]
