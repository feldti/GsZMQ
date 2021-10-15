api-calls-messages
messageInit: aZMQMessageFrame

	^self fnMsgInit callWith: (Array with: aZMQMessageFrame zmqMessage)
