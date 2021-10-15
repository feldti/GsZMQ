instance creation
createContextNamed: contextName 
	"^<ZMQExtendedContext> Creates a new instance - but the zmqContext has not been created yet

		ZMQExtendedContext createContextNamed: 'Marten'
	"
	| newInstance |

	^newInstance := 
		self new initialize
			contextName: contextName;
			yourself.
