matching
whenValueChangedAt: slotName do: aBlock
	valueChangeDict at: slotName ifPresent: [ :aValueChanged |
		aBlock cull: aValueChanged newValue cull: aValueChanged oldValue
	]