constants-erros
ENETUNREACH

	^SessionTemps current 
		at: #ENETUNREACH
		ifAbsent: [
			SessionTemps current 
				at: #ENETUNREACH
				put:  self ZMQ_HAUSNUMERO + 12]
