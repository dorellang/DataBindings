tests
testOneWayBinding
	| dummyOwner1 dummyOwner2 binding1 binding2 binder |
	dummyOwner1 := DummyWithDataBindings new.
	dummyOwner2 := DummyWithDataBindings new.
	binding1 := DataBinding new owner: dummyOwner1.
	binding2 := DataBinding new owner: dummyOwner2.
	binder := OneWayBindingStrategy instance.

	self assert: binding1 announcer numberOfSubscriptions equals: 0.
	binder bind: binding2 to: binding1.
	self assert: binding1 announcer numberOfSubscriptions equals: 1.

	"binding1 should propagate changes to binding2"
	binding1 value: 2.
	self assert: binding1 value equals: 2.
	self assert: binding2 value equals: 2.
	
	"but not the other way :P"
	binding2 value: 42.
	self assert: binding2 value equals: 42.
	self assert: binding1 value equals: 2.
	
	"updating binding1 again"
	binding1 value: 33.
	self assert: binding2 value equals: 33.
	self assert: binding1 value equals: 33.

	"releasing"
	binding2 release.
	self assert: binding1 announcer numberOfSubscriptions equals: 0.
