instance creation
protocol: protoString interface: interfaceString multicast: mcAddress port: portNumber

	^self new initialize
		protocol: protoString ;
		port: portNumber ;
		interfaceAddress: interfaceString ;
		multicastAddress: mcAddress ;
		yourself
