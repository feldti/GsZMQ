accessing
fnSocket
	"void *zmq_socket (void *context, int type);"

	^SessionTemps current 
		at: #zmqFnSocket
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnSocket 
				put:  (CCallout library: self cLibrary name: 'zmq_socket' result: #ptr args: #(#ptr #int32)). ]
