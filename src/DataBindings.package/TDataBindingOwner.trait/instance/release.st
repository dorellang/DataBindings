initialize-release
release
	super release.
	self dataBindings do: [ :each | each release ]