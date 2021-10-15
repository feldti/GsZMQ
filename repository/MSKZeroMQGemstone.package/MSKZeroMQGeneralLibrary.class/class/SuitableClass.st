instance creation
SuitableClass
	"MSKZeroMQGeneralLibrary SuitableClass"
	self isVersion2 ifTrue:[ ^self classNamed: 'MSKZeroMQLibV2' ].
	self isVersion3 ifTrue:[ ^self classNamed: 'MSKZeroMQLibV3' ].
	self isVersion4 ifTrue:[ ^self classNamed: 'MSKZeroMQLibV4' ].
