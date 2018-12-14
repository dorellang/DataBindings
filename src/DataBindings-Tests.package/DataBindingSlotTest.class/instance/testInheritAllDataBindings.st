tests
testInheritAllDataBindings
	| parent child |
	parent := DummyWithDataBindingSlots new.
	child := DummyWithDataBindingSlots new.
	child parentDataBindingOwner: parent.
	child inheritAllDataBindings.
	
	self assert: parent twoWay isNil.
	parent twoWay: 1.
	self assert: child twoWay equals: 1.

	child twoWay: 2.
	self assert: parent twoWay equals: 2.
