enumerating
withDirtyDataBindingsDo: aBlock
	^ self dataBindings select: #isDirty thenDo: aBlock