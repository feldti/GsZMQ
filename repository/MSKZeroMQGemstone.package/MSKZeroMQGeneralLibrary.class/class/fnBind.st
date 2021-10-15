accessing
fnBind
	"int zmq_bind (void *socket, const char *endpoint);"

	^SessionTemps current 
		at: #zmqFnBind
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnBind 
				put:  (CCallout library: self cLibrary name: 'zmq_bind' result: #int32 args: #(#ptr #ptr)). ]
