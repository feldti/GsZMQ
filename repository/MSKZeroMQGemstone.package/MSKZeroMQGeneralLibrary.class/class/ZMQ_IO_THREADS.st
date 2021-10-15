constants-context
ZMQ_IO_THREADS

	^SessionTemps current 
		at: #ZMQ_IO_THREADS
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_IO_THREADS
				put:  1 ]
