tests
testValuePropagation
	| owner1 owner2 binding1 binding2 |
	owner1 := DummyWithDataBindings new.
	owner2 := DummyWithDataBindings new.
	binding1 := DataBinding new owner: owner1.
	binding2 := DataBinding new owner: owner2.

	bindingStrategy bind: binding2 to: binding1.

	"binding1 should propagate changes to binding2"
	binding1 value: 2.
	self assert: binding1 value equals: 2.
	self assert: binding2 value equals: 2.
	
	"but not the other way"
	binding2 value: 42.
	self assert: binding2 value equals: 42.
	self assert: binding1 value equals: 2.
	
	"updating binding1 again"
	binding1 value: 33.
	self assert: binding2 value equals: 33.
	self assert: binding1 value equals: 33.
