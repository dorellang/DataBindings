tests
testInheritBindingsWithoutAParent
	| child |
	child := DummyWithDataBindingSlots new.
	self should: [ child inheritDataBindingNamed: #twoWay ] raise: Error