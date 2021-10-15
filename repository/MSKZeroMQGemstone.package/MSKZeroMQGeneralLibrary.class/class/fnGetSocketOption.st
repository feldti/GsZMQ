accessing
fnGetSocketOption
	"int zmq_getsockopt (void *socket, int option_name, void *option_value, size_t *option_len);"

	^SessionTemps current 
		at: #zmqFnGetSockOpt
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnGetSockOpt 
				put:  (CCallout library: self cLibrary name: 'zmq_getsockopt' result: #int32 args: #(ptr int32 ptr ptr )). ]
