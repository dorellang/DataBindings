tests
testBindingWithInitialValuePropagatesIt
	| dummyOwner binding1 binding2 binder |
	dummyOwner := DummyWithDataBindings new.
	binding1 := DataBinding newWithOwner: dummyOwner.
	binding2 := DataBinding newWithOwner: dummyOwner.
	binder := TwoWayBindingStrategy instance.

	binding1 value: 'hola'.
	self assert: binding1 announcer numberOfSubscriptions equals: 0.
	binder bind: binding2 to: binding1.
	self assert: binding2 value equals: 'hola'.
	self assert: binding1 announcer numberOfSubscriptions equals: 1.
	
	"releasing"
	binding2 release.
	self assert: binding1 announcer numberOfSubscriptions equals: 0.