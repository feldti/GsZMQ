instance creation
emptyEndpoint

	^self protocol: 'tcp' interface: '127.0.0.1' multicast: nil port: 9999
