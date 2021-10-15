constants-msk
MSK_TCPPROTOCOL

	^SessionTemps current 
		at: #MSK_TCPPROTOCOL
		ifAbsent: [
			SessionTemps current 
				at: #MSK_TCPPROTOCOL
				put:  0]
