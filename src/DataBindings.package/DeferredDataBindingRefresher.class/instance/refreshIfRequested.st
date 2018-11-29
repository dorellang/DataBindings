refreshing
refreshIfRequested
	| maxIterations |
	refreshRequested ifFalse: [ ^ self ].
	maxIterations := 10.
	maxIterations timesRepeat: [
		| hadChanges |
		hadChanges := self refreshOwner: rootOwner.
		hadChanges ifFalse: [ refreshRequested := false. ^ self ]
	].
	refreshRequested := false.
	TooManyRefreshIterations signal