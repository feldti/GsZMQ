accessing
fnSend
	"int zmq_send (void *socket, void *buf, size_t len, int flags);"

	^SessionTemps current 
		at: #zmqFnSend
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnSend 
				put:  (CCallout library: self cLibrary name: 'zmq_send' result: #int32 args: #(ptr ptr int64 int32 )). ]
