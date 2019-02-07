refreshing
refreshIfRequested
	refreshRequested ifFalse: [ ^ self ].
	self maxIterations timesRepeat: [
		| hadChanges |
		hadChanges := self refreshOwner: rootOwner.
		hadChanges ifFalse: [ refreshRequested := false. ^ self].
	].
	refreshRequested := false.
	TooManyRefreshIterations signal