*MSKZeroMQWrapper
sendZMQGeneralFrame: aZMQGeneralFrame socket: aZMQExtendedSocketOrCPointer

	| cByteArray sizeInteger flags dataSent |

	dataSent := aZMQGeneralFrame data .
	cByteArray := CByteArray withAll: dataSent.
	sizeInteger := dataSent size.
	flags := self ZMQ_DONTWAIT bitOr: ( aZMQGeneralFrame lastFrame ifTrue:[ 0 ] ifFalse:[ self ZMQ_SNDMORE ]).

	self send: aZMQExtendedSocketOrCPointer data: cByteArray size: sizeInteger flags: flags
