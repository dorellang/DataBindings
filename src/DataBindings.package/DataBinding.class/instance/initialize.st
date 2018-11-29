initialization
initialize
	super initialize.
	subscriptions := OrderedCollection new.
	dirty := false.
	released := false.