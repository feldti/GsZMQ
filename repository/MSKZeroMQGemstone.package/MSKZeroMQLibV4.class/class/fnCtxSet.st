accessing
fnCtxSet
	"int zmq_ctx_set (void *context, int option_name, int option_value);"

	^SessionTemps current 
		at: #zmqFnCtxSet
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnCtxSet 
				put:  (CCallout library: self cLibrary name: 'zmq_ctx_set' result: #int32 args: #(ptr int32 int32)) ]
