matching
whenValueChangedAt: slotName send: aSelector to: anObject
	| aMessageSend |
	aMessageSend := MessageSend receiver: anObject  selector: aSelector .
	valueChangeDict at: slotName ifPresent: [ :aValueChanged |
		aMessageSend cull: aValueChanged newValue cull: aValueChanged oldValue
	]