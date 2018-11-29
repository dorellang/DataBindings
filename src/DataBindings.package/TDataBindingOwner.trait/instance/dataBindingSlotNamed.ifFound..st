data binding
dataBindingSlotNamed: aSymbol ifFound: aBlock
	^ self class dataBindingSlotNamed: aSymbol ifFound: aBlock ifNone: []