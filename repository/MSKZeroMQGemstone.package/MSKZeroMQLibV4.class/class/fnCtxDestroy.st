accessing
fnCtxDestroy
	"int zmq_ctx_destroy (void *context);"

	^SessionTemps current 
		at: #zmqFnCtxDestroy
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnCtxDestroy 
				put:  (CCallout library: self cLibrary name: 'zmq_ctx_destroy' result: #int32 args: #(ptr)) ]
