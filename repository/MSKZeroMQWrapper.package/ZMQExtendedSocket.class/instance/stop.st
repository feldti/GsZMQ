service
stop

	self preCloseBlock notNil ifTrue:[ self preCloseBlock value: self  ].

	self close.

	self postCloseBlock notNil ifTrue:[ self postCloseBlock value: self  ].
