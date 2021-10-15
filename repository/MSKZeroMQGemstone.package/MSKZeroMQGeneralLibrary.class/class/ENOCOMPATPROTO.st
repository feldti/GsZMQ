constants-erros
ENOCOMPATPROTO

	^SessionTemps current 
		at: #ENOCOMPATPROTO
		ifAbsent: [
			SessionTemps current 
				at: #ENOCOMPATPROTO
				put:  self ZMQ_HAUSNUMERO + 52]
