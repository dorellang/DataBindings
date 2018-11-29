tests
testBindingAssignment
	| dummy dummy2 |
	dummy := DummyWithDataBindingSlots new.
	dummy2 := DummyWithDataBindingSlots new.
	
	self assert: (dummy &#oneWay isKindOf: DataBinding).
	self assert: (dummy &#twoWay isKindOf: DataBinding).
	self assert: (dummy &#oneTime isKindOf: DataBinding).
	self assert: (dummy2 &#oneWay isKindOf: DataBinding).
	self assert: (dummy2 &#twoWay isKindOf: DataBinding).
	self assert: (dummy2 &#oneTime isKindOf: DataBinding).

	self assert: dummy oneWay isNil.
	self assert: dummy2 oneWay isNil.
	dummy oneWay: 'lolxd'.
	self assert: dummy oneWay equals: 'lolxd'.
	dummy2 oneWay: dummy &#oneWay.
	self assert: dummy2 oneWay equals: 'lolxd'.