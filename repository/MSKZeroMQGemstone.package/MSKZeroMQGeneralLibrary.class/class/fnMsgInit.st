accessing
fnMsgInit
	"int zmq_msg_init (zmq_msg_t *msg);"

	^SessionTemps current 
		at: #zmqFnMsgInit
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnMsgInit
				put:  (CCallout library: self cLibrary name: 'zmq_msg_init' result: #int32 args: #(ptr)). ]
