api-calls-messages
messageClose: aZMQMessageFrame

	self fnMsgClose callWith: (Array with: aZMQMessageFrame zmqMessage).
