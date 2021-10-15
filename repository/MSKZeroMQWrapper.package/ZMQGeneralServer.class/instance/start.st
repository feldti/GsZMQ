start - stop
start

	process := [ self receiveBlock  value: self  ]
						forkAt: Processor userSchedulingPriority 
						named: self serverProcessName.
	Processor yield.
