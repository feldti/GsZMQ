accessing
fnMsgSize
	"size_t zmq_msg_size (zmq_msg_t *msg);"

	^SessionTemps current 
		at: #zmqFnMsgSize
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnMsgSize
				put:  (CCallout library: self cLibrary name: 'zmq_msg_size' result: #int64 args: #(ptr)). ]
