refreshing
refresh
	"returns true if there were changes, else false"
	| boundDataChanges deleteme |
	boundDataChanges := BoundDataChanges new owner: self.
	deleteme := OrderedCollection new.
	self withDirtyDataBindingsDo: [ :x | deleteme add: x ].
	self withDirtyDataBindingsDo: [ :aDataBinding |
		| newValue oldValue valueChanged |
		newValue := aDataBinding value.
		oldValue := aDataBinding oldValue.
		valueChanged := ValueChanged new newValue: newValue; oldValue: oldValue.
		boundDataChanges at: aDataBinding name valueChangedWith: valueChanged.
		aDataBinding clean.
	].
	boundDataChanges isEmpty ifTrue: [ ^ false ]
		ifFalse: [ self onChanges: boundDataChanges. ^ true ]