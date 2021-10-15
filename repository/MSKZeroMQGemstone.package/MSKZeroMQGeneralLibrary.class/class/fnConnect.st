accessing
fnConnect
	"int zmq_connect (void *socket, const char *endpoint);"

	^SessionTemps current 
		at: #zmqFnConnect
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnConnect 
				put:  (CCallout library: self cLibrary name: 'zmq_connect' result: #int32 args: #(#ptr #ptr)). ]
