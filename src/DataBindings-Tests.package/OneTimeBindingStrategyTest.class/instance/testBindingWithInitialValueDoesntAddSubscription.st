tests
testBindingWithInitialValueDoesntAddSubscription
	"In other words, a one-time binding strategy only propagates a value change once."

	| owner binding1 binding2 |
	owner := DummyWithDataBindings new.
	binding1 := DataBinding newWithOwner: owner.
	binding2 := DataBinding newWithOwner: owner.

	binding1 value: 'hola'.
	self assert: binding1 announcer numberOfSubscriptions equals: 0.
	bindingStrategy bind: binding2 to: binding1.
	self assert: binding2 announcer numberOfSubscriptions equals: 0.