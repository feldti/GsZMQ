accessing
fnClose
	"int zmq_close (void *socket);"

	^SessionTemps current 
		at: #zmqFnClose
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnClose 
				put:  (CCallout library: self cLibrary name: 'zmq_close' result: #int32 args: #(#ptr )). ]
