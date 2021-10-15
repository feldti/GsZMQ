constants-erros
ZMQ_HAUSNUMERO

	^SessionTemps current 
		at: #ZMQ_HAUSNUMERO
		ifAbsent: [
			SessionTemps current 
				at: #ZMQ_HAUSNUMERO 
				put:  156384712 ]
