constants-erros
EHOSTUNREACH

	^SessionTemps current 
		at: #EHOSTUNREACH
		ifAbsent: [
			SessionTemps current 
				at: #EHOSTUNREACH
				put:  self ZMQ_HAUSNUMERO + 17]
