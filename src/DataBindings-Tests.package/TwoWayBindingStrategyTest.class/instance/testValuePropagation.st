tests
testValuePropagation
	| owner1 owner2 binding1 binding2 binder |
	owner1 := DummyWithDataBindings new.
	owner2 := DummyWithDataBindings new.
	binding1 := DataBinding newWithOwner: owner1.
	binding2 := DataBinding newWithOwner: owner2.
	binder := TwoWayBindingStrategy instance.

	binder bind: binding2 to: binding1.

	"binding1 should propagate changes to binding2"
	binding1 value: 2.
	self assert: binding1 value equals: 2.
	self assert: binding2 value equals: 2.
	
	"binding2 should propagate the other way around"
	binding2 value: 42.
	self assert: binding2 value equals: 42.
	self assert: binding1 value equals: 42.
	
	"updating binding1 again"
	binding1 value: 33.
	self assert: binding2 value equals: 33.
	self assert: binding1 value equals: 33.
