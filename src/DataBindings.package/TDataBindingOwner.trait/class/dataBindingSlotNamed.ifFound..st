data binding
dataBindingSlotNamed: aSymbol ifFound: aBlock
	self slotNamed: aSymbol ifFound: [ :aSlot |
		aSlot isDataBindingSlot ifTrue: [ ^ aBlock cull: aSlot ]
	].
	UnknownDataBindingSlot signal