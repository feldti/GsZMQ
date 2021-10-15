constants-erros
EAGAIN

	^SessionTemps current 
		at: #EAGAIN
		ifAbsent: [
			SessionTemps current 
				at: #EAGAIN
				put:  11]
