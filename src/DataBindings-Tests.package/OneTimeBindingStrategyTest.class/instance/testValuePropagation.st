tests
testValuePropagation
	| owner binding1 binding2 |
	owner := DummyWithDataBindings new.
	binding1 := DataBinding newWithOwner: owner.
	binding2 := DataBinding newWithOwner: owner.

	bindingStrategy bind: binding2 to: binding1.

	"binding1 should propagate changes to binding2"
	binding1 value: 2.
	self assert: binding1 value equals: 2.
	self assert: binding2 value equals: 2.
	
	"but does not propagate the other way around"
	binding2 value: 42.
	self assert: binding1 value equals: 2.
	self assert: binding2 value equals: 42.
	
	"and does not propagate the second time (because it's one-time binding strategy"
	binding1 value: 33.
	self assert: binding1 value equals: 33.
	self assert: binding2 value equals: 42.
