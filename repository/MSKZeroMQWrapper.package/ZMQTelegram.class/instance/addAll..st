helpers
addAll: newFrames
	"Perform the addFrame action."
	
	newFrames do: [ :eachFrame |
		eachFrame
			telegram: self.	 
		self frames add: eachFrame.
	].
