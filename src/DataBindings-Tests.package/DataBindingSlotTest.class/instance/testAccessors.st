tests
testAccessors
	| dummy |
	dummy := DummyWithDataBindingSlots new.
	
	"oneWay attr"
	self assert: dummy oneWay isNil.
	dummy oneWay: 1.
	self assert: dummy oneWay equals: 1.

	"twoWay attr"
	self assert: dummy twoWay isNil.
	dummy twoWay: 2.
	self assert: dummy twoWay equals: 2.

	"oneTime attr"
	self assert: dummy oneTime isNil.
	dummy oneTime: 42.
	self assert: dummy oneTime equals: 42.