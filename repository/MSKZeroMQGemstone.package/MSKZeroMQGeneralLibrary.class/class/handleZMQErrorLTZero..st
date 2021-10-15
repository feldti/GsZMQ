error handling
handleZMQErrorLTZero: rc

	| errorNumber  |

	rc > 0 ifTrue: [ ^rc].
	rc = 0 ifTrue: [ ^self].

	GsFile mskerror: 'ZMQ-rc: ',rc asString.

	errorNumber := self errno.
	GsFile mskerror: 'ZMQ-errno: ',errorNumber asString.

	errorNumber := self errno.
	GsFile mskerror: 'ZMQ-errstring: ',(self strError: errorNumber) asString.


	errorNumber = self ETERM 
		ifTrue:[ 
			ExETerm new
				errorNumber: errorNumber ;
				errorString: (self strError: errorNumber) ;
				signal ].

	errorNumber = self EAGAIN
		ifTrue:[ 
			ExEAgain new
				errorNumber: errorNumber ;
				errorString: (self strError: errorNumber) ;
				signal ].

	ExZMQ new
		errorNumber: errorNumber ;
		errorString: (self strError: errorNumber) ;
		signal
