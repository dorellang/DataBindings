tests
testReleaseShouldEmptyTheSubscriptions
	| owner1 owner2 binding1 binding2 |
	owner1 := DummyWithDataBindings new.
	owner2 := DummyWithDataBindings new.
	binding1 := DataBinding newWithOwner: owner1.
	binding2 := DataBinding newWithOwner: owner2.

	self assert: binding1 announcer numberOfSubscriptions equals: 0.
	bindingStrategy bind: binding2 to: binding1.
	self assert: binding1 announcer numberOfSubscriptions equals: 1.
	binding2 release.
	self assert: binding1 announcer numberOfSubscriptions equals: 0.
