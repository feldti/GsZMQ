accessing
fnTerm
	"int zmq_term (void *context);"

	^SessionTemps current 
		at: #zmqFnTerm
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnTerm 
				put:  (CCallout library: self cLibrary name: 'zmq_term' result: #int32 args: #(#ptr)). ]
