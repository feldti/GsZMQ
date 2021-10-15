accessing
fnVersion
	"void zmq_version (int *major, int *minor, int *patch);"

	^SessionTemps current 
		at: #zmqFnVersion
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnVersion 
				put:  (CCallout library: self cLibrary name: 'zmq_version' result: #void args: #(ptr ptr ptr)). ]
