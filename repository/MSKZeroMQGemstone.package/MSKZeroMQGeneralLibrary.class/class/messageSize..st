api-calls-messages
messageSize: aZMQMessageFrame

	^self fnMsgSize callWith: (Array with: aZMQMessageFrame zmqMessage)
