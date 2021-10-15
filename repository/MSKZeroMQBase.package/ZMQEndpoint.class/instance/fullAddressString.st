conversion
fullAddressString
	"^<String> Returns the receiver in its string representation suitable for the ZMQ API"
	
	| aStream |
	
	aStream := WriteStream on: String new.
	
	aStream
		nextPutAll: self protocol ;
		nextPutAll: '://' ;
		nextPutAll: self interfaceAddress asString.
	
	self multicastAddress isEmptyOrNil
		ifFalse:[
			aStream
				nextPut: $; ;
				nextPutAll: self multicastAddress
		].
	
	aStream 
		nextPut: $: ;
		nextPutAll: self port asString.
					
	^aStream contents
