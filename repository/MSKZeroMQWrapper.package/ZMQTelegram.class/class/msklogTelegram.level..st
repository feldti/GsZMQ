instance creation
msklogTelegram: aString level: levelString
	"Erzeugt ein Telegram mit den log Informationen. Bitte bedenken, dass das Feld mit dem appCounter Wert aufgefrischt werden muss"

	| logServer aZMQTelegram |

	(logServer := SessionTemps current at: #zmqserver ifAbsent:[ nil ]) isNil ifTrue:[ ^nil ].

	aZMQTelegram := ZMQTelegram newInitialized.

	aZMQTelegram
		addFrame: (ZMQTextFrame newWithData: 'LOGV01' _encodeAsUTF8intoString) ;
		addFrame: (ZMQTextFrame newWithData: DateAndTime now asRFC3339String) ;
		addFrame: (ZMQTextFrame newWithData: logServer appName _encodeAsUTF8intoString) ;
		addFrame: (ZMQTextFrame newWithData: 'localhost' _encodeAsUTF8intoString ) ;		
		addFrame: (ZMQTextFrame newWithData: logServer appCounter asString) ;		
		addFrame: (ZMQTextFrame newWithData: aString _encodeAsUTF8intoString) ;
		addFrame: (ZMQTextFrame newWithData: levelString _encodeAsUTF8intoString) ;
		finish.


	^aZMQTelegram
