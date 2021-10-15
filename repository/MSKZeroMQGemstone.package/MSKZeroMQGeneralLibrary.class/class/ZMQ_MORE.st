constants-messages-options
ZMQ_MORE

	^SessionTemps current 
		at: #ZMQ_MORE
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_MORE
				put:  1]
