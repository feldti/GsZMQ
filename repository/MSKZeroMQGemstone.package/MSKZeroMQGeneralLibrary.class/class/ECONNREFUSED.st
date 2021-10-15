constants-erros
ECONNREFUSED

	^SessionTemps current 
		at: #ECONNREFUSED
		ifAbsent: [
			SessionTemps current 
				at: #ECONNREFUSED
				put:  self ZMQ_HAUSNUMERO + 7 ]
