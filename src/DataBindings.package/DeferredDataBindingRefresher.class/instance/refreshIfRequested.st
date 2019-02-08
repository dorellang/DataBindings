refreshing
refreshIfRequested
	refreshRequested ifFalse: [ ^ self ].
	[ 	self maxIterations timesRepeat: [ (self refreshOwner: rootOwner) ifFalse: [ ^ self ] ].
		TooManyRefreshIterations signal.
	] ensure: [ refreshRequested := false ]