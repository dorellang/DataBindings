refreshing
refresh
	"returns true if there were changes, else false"
	| boundDataChanges |
	boundDataChanges := BoundDataChanges new owner: self.
	self withDirtyDataBindingsDo: [ :aDataBinding |
		| newValue oldValue valueChanged |
		newValue := aDataBinding value.
		oldValue := aDataBinding oldValue.
		valueChanged := ValueChanged new newValue: newValue; oldValue: oldValue.
		boundDataChanges at: aDataBinding name valueChangedWith: valueChanged.
		aDataBinding flush. "for propagating twoway changes up"
		aDataBinding clean.
	].
	boundDataChanges isEmpty ifTrue: [ ^ false ]
		ifFalse: [ self onChanges: boundDataChanges. ^ true ]