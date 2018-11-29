meta-object-protocol
write: aValue to: anObject
	aValue isDataBinding 
		ifTrue: [ self bind: (self dataBindingFor: anObject) to: aValue ]
		ifFalse: [ (self dataBindingFor: anObject) value: aValue ].
	^ aValue