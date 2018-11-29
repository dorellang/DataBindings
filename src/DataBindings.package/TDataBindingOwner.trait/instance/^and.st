data binding
& aSymbol
	^ self dataBindingSlotNamed: aSymbol ifFound: [ :aSlot | aSlot dataBindingFor: self ]