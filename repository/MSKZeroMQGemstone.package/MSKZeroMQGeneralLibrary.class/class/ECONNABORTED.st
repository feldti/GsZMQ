constants-erros
ECONNABORTED

	^SessionTemps current 
		at: #ECONNABORTED
		ifAbsent: [
			SessionTemps current 
				at: #ECONNABORTED
				put:  self ZMQ_HAUSNUMERO + 13]
