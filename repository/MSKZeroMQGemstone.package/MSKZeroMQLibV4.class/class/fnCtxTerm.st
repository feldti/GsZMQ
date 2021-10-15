accessing
fnCtxTerm
	"int zmq_ctx_term (void *context);"

	^SessionTemps current 
		at: #fnCtxTerm
		ifAbsent: [
			SessionTemps current 
				at: #fnCtxTerm 
				put:  (CCallout library: self cLibrary name: 'zmq_ctx_term' result: #int32 args: #(ptr)) ]
