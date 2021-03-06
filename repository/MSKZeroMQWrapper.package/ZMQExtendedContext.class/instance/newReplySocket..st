socket creation
newReplySocket: pConfigOptions

	| newSocketInstance |

	newSocketInstance := ZMQReplySocket new.
	
	newSocketInstance
		setDefaultBlocks ;
		zmqSocket: (self createSocketOfType: MSKZeroMQGeneralLibrary ZMQ_REP);
		configOptions: pConfigOptions ;
		extendedContext: self.

	extendedSockets add: newSocketInstance.

	^newSocketInstance
