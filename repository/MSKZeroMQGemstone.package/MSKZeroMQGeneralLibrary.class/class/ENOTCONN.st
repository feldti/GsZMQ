constants-erros
ENOTCONN

	^SessionTemps current 
		at: #ENOTCONN
		ifAbsent: [
			SessionTemps current 
				at: #ENOTCONN
				put:  self ZMQ_HAUSNUMERO + 15]
