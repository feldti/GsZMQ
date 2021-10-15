constants-send-receive
ZMQ_DONTWAIT

	^SessionTemps current 
		at: #ZMQ_DONTWAIT
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_DONTWAIT
				put:  1]
