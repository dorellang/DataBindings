tests
testBindingWithInitialValuePropagatesIt
	| owner binding1 binding2 |
	owner := DummyWithDataBindings new.
	binding1 := DataBinding new owner: owner.
	binding2 := DataBinding new owner: owner.

	binding1 value: 'hola'.
	bindingStrategy bind: binding2 to: binding1.
	self assert: binding2 value equals: 'hola'.
