accessing
fnInit
	"void *zmq_init (int io_threads);"

	^SessionTemps current 
		at: #zmqFnInit 
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnInit 
				put:  (CCallout library: self cLibrary name: 'zmq_init' result: #ptr args: #(#int32)). ]
