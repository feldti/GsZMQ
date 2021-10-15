api-calls-general
strError: errorNumber
	"MSKZeroMQGeneralLibrary zmqStrError: 2"

	| aCByteArray cPointer  |

	(cPointer := self fnErrStr callWith: { errorNumber}) mskIsNull ifTrue:[ ^'' ].

	aCByteArray := CByteArray fromCharStar: cPointer. 
	^aCByteArray stringFrom: 0 to: aCByteArray size - 1
