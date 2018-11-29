reflective operations
doesNotUnderstand: aMessage
	| slotName |
	"handling self myAttr"
	aMessage numArgs = 0 ifTrue: [
		slotName := aMessage selector.
		self dataBindingSlotNamed: slotName ifFound: [ :aSlot |
			^ aSlot read: self
		] ifNone: [ ]
	].

	"handling self myAttr: aValue"
	aMessage numArgs = 1 ifTrue: [
		slotName := aMessage selector allButLast asSymbol.
		self dataBindingSlotNamed: slotName ifFound: [ :aSlot |
			^ aSlot write: aMessage argument to: self
		] ifNone: [  ]
	].
	^ super doesNotUnderstand: aMessage