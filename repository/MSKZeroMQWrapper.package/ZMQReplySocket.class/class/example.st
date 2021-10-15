example
example 
	"ZMQReplySocket example"

| newContext replySocket options |

newContext := ZMQExtendedContext createContextNamed: 'Marten'.
newContext 
	start: 1.

options := (ZMQAllSocketOptions withEndpoint: (ZMQEndpoint protocol: 'tcp' interface: '127.0.0.1' port: 45000) )
						addZeroLinger ;
						connectViaBind ;
						yourself.


replySocket := ZMQReplySocket createIn: newContext options: options.

replySocket 
	receiveBlock: [ :extSocket | extSocket receiveZMQTelegram ] ;

	postReceiveBlock: [ :extSocket :zmqTelegram  | Transcript cr ; show: 'Habe Telegram erhalten' ] ;

	createAnswerBlock: [ :extSocket  :zmqReceiveTelegram | 
		| aNumber |
		aNumber := zmqReceiveTelegram frames first asString asNumber.

		(ZMQTelegram newOnSocket: extSocket)
			addFrame: ( ZMQTextFrame	data: (aNumber * aNumber) asString) ;
			finish ;
			yourself ] ;

	startService
