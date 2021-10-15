constants-erros
ECONNRESET

	^SessionTemps current 
		at: #ECONNRESET
		ifAbsent: [
			SessionTemps current 
				at: #ECONNRESET
				put:  self ZMQ_HAUSNUMERO + 14]
