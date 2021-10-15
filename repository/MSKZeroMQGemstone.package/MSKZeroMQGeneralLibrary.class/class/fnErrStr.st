accessing
fnErrStr
	"MSKZeroMQGeneralLibrary fnErrStr"

	^SessionTemps current 
		at: #zmqFnErrStr
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnErrStr 
				put:  (CCallout library: self cLibrary name: 'zmq_strerror' result: #ptr args: #(#int32)). ]
