constants-erros
ENOTSUP

	^SessionTemps current 
		at: #ENOTSUP
		ifAbsent: [
			SessionTemps current 
				at: #ENOTSUP
				put:  self ZMQ_HAUSNUMERO + 1 ]
