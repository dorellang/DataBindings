data binding
dataBindingSlotNamed: aSymbol ifFound: aBlock ifNone: anotherBlock
	self slotNamed: aSymbol ifFound: [ :aSlot |
		aSlot isDataBindingSlot ifTrue: [ ^ aBlock cull: aSlot ]
	] ifNone: [ ^ anotherBlock value ]
