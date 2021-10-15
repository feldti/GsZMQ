accessing
fnMsgClose
	"int zmq_msg_close (zmq_msg_t *msg);"

	^SessionTemps current 
		at: #zmqFnMsgClose
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnMsgClose 
				put:  (CCallout library: self cLibrary name: 'zmq_msg_close' result: #int32 args: #(ptr)). ]
