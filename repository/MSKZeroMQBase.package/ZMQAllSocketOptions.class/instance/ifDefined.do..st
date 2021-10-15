helpers
ifDefined: aZMQSocketOption do: twoArgBlock

	(self includes: aZMQSocketOption) ifTrue:[ twoArgBlock value: self value: aZMQSocketOption ]
