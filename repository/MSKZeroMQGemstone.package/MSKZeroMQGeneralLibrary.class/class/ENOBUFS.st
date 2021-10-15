constants-erros
ENOBUFS

	^SessionTemps current 
		at: #ENOBUFS
		ifAbsent: [
			SessionTemps current 
				at: #ENOBUFS
				put:  self ZMQ_HAUSNUMERO + 3 ]
