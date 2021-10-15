constants-send-receive
ZMQ_SNDMORE

	^SessionTemps current 
		at: #ZMQ_SNDMORE
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_SNDMORE
				put:  2]
