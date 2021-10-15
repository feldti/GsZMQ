constants-erros
EINPROGRESS

	^SessionTemps current 
		at: #EINPROGRESS
		ifAbsent: [
			SessionTemps current 
				at: #EINPROGRESS
				put:  self ZMQ_HAUSNUMERO + 8 ]
