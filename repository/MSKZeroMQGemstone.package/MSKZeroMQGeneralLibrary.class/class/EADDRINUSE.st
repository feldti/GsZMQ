constants-erros
EADDRINUSE

	^SessionTemps current 
		at: #EADDRINUSE
		ifAbsent: [
			SessionTemps current 
				at: #EADDRINUSE
				put:  self ZMQ_HAUSNUMERO + 5 ]
