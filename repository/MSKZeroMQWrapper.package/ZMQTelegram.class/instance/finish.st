helpers
finish
	"Perform the finish action."

	self frames notEmpty ifTrue:[ self frames last lastFrame: true  ]
