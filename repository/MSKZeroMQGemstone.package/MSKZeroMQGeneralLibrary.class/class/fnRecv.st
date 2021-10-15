accessing
fnRecv
	"int zmq_recv (void *socket, void *buf, size_t len, int flags);"
	^SessionTemps current 
		at: #zmqFnRecv 
		ifAbsent: [
			SessionTemps current 
				at: #zmqFnRecv
				put:  (CCallout library: self cLibrary name: 'zmq_recv' result: #int32 args: #(ptr ptr int64 int32)). ]
