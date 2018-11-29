initialize-release
release
	super release.
	self dataBindings do: [ :aDb | aDb release ]