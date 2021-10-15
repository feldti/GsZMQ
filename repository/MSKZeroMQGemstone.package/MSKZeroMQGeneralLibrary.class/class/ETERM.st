constants-erros
ETERM

	^SessionTemps current 
		at: #ETERM
		ifAbsent: [
			SessionTemps current 
				at: #ETERM
				put:  self ZMQ_HAUSNUMERO + 53]
