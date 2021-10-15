constants-erros
EAFNOSUPPORT

	^SessionTemps current 
		at: #EAFNOSUPPORT
		ifAbsent: [
			SessionTemps current 
				at: #EAFNOSUPPORT
				put:  self ZMQ_HAUSNUMERO + 11 ]
