accessing
dataBindingFor: anObject
	^ (thisContext object: anObject instVarAt: index) ifNil: [
		thisContext object: anObject instVarAt: index put: (DataBinding new owner: anObject; name: name)
	]
	