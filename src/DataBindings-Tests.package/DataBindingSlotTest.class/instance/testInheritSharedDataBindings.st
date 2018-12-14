tests
testInheritSharedDataBindings
	| parent child |
	parent := DummyWithMoreDataBindingSlots new.
	child := DummyWithDataBindingSlots new.
	child parentDataBindingOwner: parent.
	child inheritSharedDataBindings.
	
	self assert: parent twoWay isNil.
	parent twoWay: 1.
	self assert: child twoWay equals: 1.
	child twoWay: 2.
	self assert: parent twoWay equals: 2.
