socket creation
newRequestSocket: pConfigOptions

	| newSocketInstance |

	newSocketInstance := ZMQReplySocket new.
	
	newSocketInstance
		setDefaultBlocks ;
		zmqSocket: (self createSocketOfType: MSKZeroMQGeneralLibrary ZMQ_REQ);
		configOptions: pConfigOptions ;
		extendedContext: self.

	extendedSockets add: newSocketInstance.

	^newSocketInstance
