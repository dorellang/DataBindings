initialize-release
inheritDataBindingNamed: slotName
	self
		dataBindingSlotNamed: slotName
		ifFound: [ :aSlot | aSlot write: (self parentDataBindingOwner & slotName) to: self ]
		ifNone: [ NotFound signal: slotName ]