comparing
= other
	self == other ifTrue: [ ^ true ].
	^ self species == other species and: [ 
		index = other index and: [ 
		name = other name and: [ 
		bindingStrategy = other bindingStrategy ] ] ]