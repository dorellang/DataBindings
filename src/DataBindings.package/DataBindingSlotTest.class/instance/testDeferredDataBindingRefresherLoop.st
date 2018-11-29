tests
testDeferredDataBindingRefresherLoop
	| topLevelDummy refresher |
	topLevelDummy := BadOnChangesDummyWithDataBindingsSlots new.
	refresher := DeferredDataBindingRefresher new
		rootOwner: topLevelDummy.
	topLevelDummy refresher: refresher.
	topLevelDummy oneWay: 1.
	self should: [ refresher refreshIfRequested ] raise: TooManyRefreshIterations.
