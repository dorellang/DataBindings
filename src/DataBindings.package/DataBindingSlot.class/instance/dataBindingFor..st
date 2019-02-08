accessing
dataBindingFor: anObject
	^ (thisContext object: anObject instVarAt: index) ifNil: [
		thisContext object: anObject instVarAt: index put: ((DataBinding newWithOwner: anObject) name: name; yourself)
	]
	