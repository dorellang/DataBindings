comparing
hasSameDefinitionAs: otherSlot

	^ (super hasSameDefinitionAs: otherSlot) 
		and: [ bindingStrategy = otherSlot bindingStrategy ]