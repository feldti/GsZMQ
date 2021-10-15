constants-erros
ETIMEDOUT

	^SessionTemps current 
		at: #ETIMEDOUT
		ifAbsent: [
			SessionTemps current 
				at: #ETIMEDOUT
				put:  self ZMQ_HAUSNUMERO + 16]
