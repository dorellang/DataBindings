tests
testOnChange
	| dummy changes |
	dummy := ChangeLoggerDummyWithDataBindingsSlots new.

	"no change"
	dummy refresh.
	self assert: dummy popChanges isEmpty.

	"update some bindings"
	dummy oneWay: 1.
	dummy oneTime: 2.
	dummy refresh.
	changes := dummy popChanges.
	self assert: changes size equals: 1.
	self assert: changes first equals: {#oneWay -> #(1 nil). #oneTime -> #(2 nil) }.

	"handle many updates"
	dummy oneWay: 'foo'.
	dummy oneWay: 'bar'.
	dummy oneWay: 'baz'.
	
	dummy twoWay: 42.
	dummy refresh.
	changes := dummy popChanges.
	self assert: changes size equals: 1.
	self assert: changes first equals: {#oneWay -> #('baz' 1). #twoWay -> #(42 nil) }.