helpers
addLinger: anInteger

	self options add: (ZMQSingleSocketOption linger: anInteger)
