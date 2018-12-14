tests
testInheritBindingsNotFound
	| parent child |
	parent := DummyWithDataBindingSlots new.
	child := DummyWithDataBindingSlots new.
	child parentDataBindingOwner: parent.
	self should: [ child inheritDataBindingNamed: #nonExistent ] raise: NotFound