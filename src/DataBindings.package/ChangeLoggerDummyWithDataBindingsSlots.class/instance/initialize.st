initialization
initialize
	super initialize.
	changes := OrderedCollection new.
	refresher := ManualDataBindingRefresher new