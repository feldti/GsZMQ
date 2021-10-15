services - context
closeContext: aZMQExtendedContext
	"^<Integer> Closes and destroyes a context. This call may block the whole image"
	
	^self term:  aZMQExtendedContext zmqContext
