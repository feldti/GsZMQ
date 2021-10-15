accessing
fnCtxNew
	"void *zmq_ctx_new ();"

	^SessionTemps current 
		at: #zmqFnCtxNew
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnCtxNew 
				put:  (CCallout library: self cLibrary name: 'zmq_ctx_new' result: #ptr args: #()) ]
