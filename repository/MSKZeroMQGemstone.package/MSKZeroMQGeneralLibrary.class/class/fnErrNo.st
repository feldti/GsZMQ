accessing
fnErrNo
	"int zmq_errno (void);"

	^SessionTemps current 
		at: #zmqFnErrNo 
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnErrNo 
				put:  (CCallout library: self cLibrary name: 'zmq_errno' result: #int32 args: #()). ]
