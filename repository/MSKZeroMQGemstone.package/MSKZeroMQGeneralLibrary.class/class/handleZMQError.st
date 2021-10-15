error handling
handleZMQError

	| errorNumber  |

	(errorNumber := self errno) = 0 ifTrue:[ ^self ].

	errorNumber = self ETERM 
		ifTrue:[ 
			ExETerm new
				errno: errorNumber ;
				errorString: (self strError: errorNumber) ;
				signal ].

	errorNumber = self EAGAIN
		ifTrue:[ 
			ExEAgain new
				errno: errorNumber ;
				errorString: (self strError: errorNumber) ;
				signal ].

	ExZMQ new
		errorNumber: errorNumber ;
		errorString: (self strError: errorNumber) ;
		signal
