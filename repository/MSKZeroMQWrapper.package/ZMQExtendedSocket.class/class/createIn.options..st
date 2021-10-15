instance creation
createIn: aZMQExtendedContext options: options

	| newInstance baseSocket |

	newInstance := self new initialize.

	newInstance
		setDefaultBlocks ;
		zmqSocket: (aZMQExtendedContext createSocketOfType: self defaultSocketType) ;
		extendedContext: aZMQExtendedContext ;
		configOptions: options.
		

	^newInstance
