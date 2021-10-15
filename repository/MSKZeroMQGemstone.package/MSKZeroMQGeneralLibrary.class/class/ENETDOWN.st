constants-erros
ENETDOWN

	^SessionTemps current 
		at: #ENETDOWN
		ifAbsent: [
			SessionTemps current 
				at: #ENETDOWN
				put:  self ZMQ_HAUSNUMERO + 4 ]
