tests
testDeferredDataBindingRefresher
	| topLevelDummy refresher midLevelDummy1 midLevelDummy2 bottomLevelDummy |
	topLevelDummy := ChangeLoggerDummyWithDataBindingsSlots new.
	refresher := DeferredDataBindingRefresher new
		rootOwner: topLevelDummy.
	topLevelDummy refresher: refresher.
	midLevelDummy1 := ChangeLoggerDummyWithDataBindingsSlots new refresher: refresher.
	midLevelDummy2 := ChangeLoggerDummyWithDataBindingsSlots new refresher: refresher.
	bottomLevelDummy := EmphatizeTwoWayDummyWithdataBindingSlots new refresher: refresher.
	midLevelDummy1 parentDataBindingOwner: topLevelDummy.
	midLevelDummy2 parentDataBindingOwner: topLevelDummy.
	bottomLevelDummy parentDataBindingOwner: midLevelDummy1.

	midLevelDummy1 twoWay: topLevelDummy &#oneWay.
	bottomLevelDummy twoWay: midLevelDummy1 &#twoWay.
	midLevelDummy2 oneWay: topLevelDummy &#oneWay.

	refresher refreshIfRequested.
	self assert: topLevelDummy changes isEmpty.
	self assert: midLevelDummy1 changes isEmpty.
	self assert: bottomLevelDummy changes isEmpty.
	self assert: midLevelDummy2 changes isEmpty.

	topLevelDummy oneWay: 'not important'.
	refresher refreshIfRequested.
	self assert: topLevelDummy popChanges
		equals: { { #oneWay -> #('not important' nil) } }.
	self assert: midLevelDummy1 popChanges
		equals: { { #twoWay -> #('not important' nil) } }.
	self assert: bottomLevelDummy popChanges
		equals: { { #twoWay -> #('not important' nil) } }.
	self assert: midLevelDummy2 popChanges
		equals: { { #oneWay -> #('not important' nil)} }.
	self assert: topLevelDummy oneWay equals: 'not important'.
	self assert: midLevelDummy1 twoWay equals: 'not important'.
	self assert: bottomLevelDummy twoWay equals: 'not important'.
	self assert: midLevelDummy2 oneWay equals: 'not important'.

	topLevelDummy oneWay: 'doge rocks'.
	refresher refreshIfRequested.
	self assert: topLevelDummy popChanges
		equals: { { #oneWay -> #('*doge rocks*' 'not important') } }.
	self assert: midLevelDummy1 popChanges
		equals: { { #twoWay -> #('*doge rocks*' 'not important') } }.
	self assert: bottomLevelDummy popChanges
		equals: {
			{ #twoWay -> #('doge rocks' 'not important') }.
			{ #twoWay -> #('*doge rocks*' 'doge rocks') }
		}.
	self assert: midLevelDummy2 popChanges
		equals: { { #oneWay -> #('*doge rocks*' 'not important') } }.
	self assert: topLevelDummy oneWay equals: '*doge rocks*'.
	self assert: midLevelDummy1 twoWay equals: '*doge rocks*'.
	self assert: bottomLevelDummy twoWay equals: '*doge rocks*'.
	self assert: midLevelDummy2 oneWay equals: '*doge rocks*'.