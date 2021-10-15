constants-erros
EFSM

	^SessionTemps current 
		at: #EFSM
		ifAbsent: [
			SessionTemps current 
				at: #EFSM
				put:  self ZMQ_HAUSNUMERO + 51]
