accessing
popChanges
	| popped |
	popped := changes asArray.
	changes := OrderedCollection new.
	^ popped