tests
testDataBindingNamesSharedWithParent
	| parent child |
	parent := DummyWithMoreDataBindingSlots new.
	child := DummyWithDataBindingSlots new.
	child parentDataBindingOwner: parent.
	
	self 
		assert: child dataBindingNamesSharedWithParent asSet
		equals: #(oneWay twoWay oneTime) asSet