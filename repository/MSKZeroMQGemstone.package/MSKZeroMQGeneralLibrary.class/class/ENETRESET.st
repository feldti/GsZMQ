constants-erros
ENETRESET

	^SessionTemps current 
		at: #ENETRESET
		ifAbsent: [
			SessionTemps current 
				at: #ENETRESET
				put:  self ZMQ_HAUSNUMERO + 18]
