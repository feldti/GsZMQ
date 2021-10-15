constants-erros
EPROTONOSUPPORT

	^SessionTemps current 
		at: #EPROTONOSUPPORT
		ifAbsent: [
			SessionTemps current 
				at: #EPROTONOSUPPORT
				put:  self ZMQ_HAUSNUMERO + 2 ]
