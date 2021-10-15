constants-erros
EMTHREAD

	^SessionTemps current 
		at: #EMTHREAD
		ifAbsent: [
			SessionTemps current 
				at: #EMTHREAD
				put:  self ZMQ_HAUSNUMERO + 54]
