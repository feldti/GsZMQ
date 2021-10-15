accessing
fnSetSocketOption
	"int zmq_setsockopt (void *socket, int option_name, const void *option_value, size_t option_len);"

	^SessionTemps current 
		at: #zmqFnSetSockOpt
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnSetSockOpt 
				put:  (CCallout library: self cLibrary name: 'zmq_setsockopt' result: #int32 args: #(ptr int32 ptr int64 )). ]
