constants-erros
EADDRNOTAVAIL

	^SessionTemps current 
		at: #EADDRNOTAVAIL
		ifAbsent: [
			SessionTemps current 
				at: #EADDRNOTAVAIL
				put:  self ZMQ_HAUSNUMERO + 6 ]
