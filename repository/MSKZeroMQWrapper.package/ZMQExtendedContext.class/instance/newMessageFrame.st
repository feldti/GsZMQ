message creation
newMessageFrame
		"Method comment"

	^(self interfaceClass newMessage: ZMQMessageFrame)
			extendedContext: self ;
			yourself
