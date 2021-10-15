accessing
fnCtxGet
	"int zmq_ctx_get (void *context, int option_name);"

	^SessionTemps current 
		at: #zmqFnCtxGet
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnCtxGet 
				put:  (CCallout library: self cLibrary name: 'zmq_ctx_get' result: #int32 args: #(ptr int32)) ]
