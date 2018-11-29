accessing
value
	^ dirty ifTrue: [ newValue ]
		ifFalse: [ value ]