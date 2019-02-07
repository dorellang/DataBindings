dependencies
release
	subscriptions do: [ :sub | sub announcer removeSubscription: sub ].
	released := true.
	super release.