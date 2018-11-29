accessing
value: aValue
	(self isEqualToMyValue: aValue) ifTrue: [ ^ self ].
	dirty ifFalse: [ oldValue := value]. 
	newValue := aValue.
	dirty := true.
	owner notifyBindingValueChanged: self.
	owner requestRefresh.