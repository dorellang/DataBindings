tests
testValueShouldRequestRefresh
	| dummyOwner binding1 |
	dummyOwner := DummyWithDataBindings new refresher: LogDataBindingRefresher new.
	binding1 := DataBinding new owner: dummyOwner.

	self deny: dummyOwner refresher wasRefreshRequested.
	binding1 value: 'hola'.
	self assert: dummyOwner refresher wasRefreshRequested.