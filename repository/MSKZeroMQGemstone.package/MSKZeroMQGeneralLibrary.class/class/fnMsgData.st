accessing
fnMsgData
	"void *zmq_msg_data (zmq_msg_t *msg);"

	^SessionTemps current 
		at: #zmqFnMsgData
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnMsgData
				put:  (CCallout library: self cLibrary name: 'zmq_msg_data' result: #ptr args: #(ptr)). ]
