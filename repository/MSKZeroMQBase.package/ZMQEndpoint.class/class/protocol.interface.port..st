instance creation
protocol: protoString interface: interfaceString port: portNumber

	^self new initialize
		protocol: protoString ;
		port: portNumber ;
		interfaceAddress: interfaceString ;
		yourself
