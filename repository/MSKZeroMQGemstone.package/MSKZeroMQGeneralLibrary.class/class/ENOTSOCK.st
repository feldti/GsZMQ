constants-erros
ENOTSOCK

	^SessionTemps current 
		at: #ENOTSOCK
		ifAbsent: [
			SessionTemps current 
				at: #ENOTSOCK
				put:  self ZMQ_HAUSNUMERO + 9 ]
