tests
testDataBindingNames
	| dummy |
	dummy := DummyWithMoreDataBindingSlots new.
	self 
		assert: dummy dataBindingNames asSet
		equals: #(oneWay twoWay oneTime oneWayAgain twoWayAgain oneTimeAgain) asSet