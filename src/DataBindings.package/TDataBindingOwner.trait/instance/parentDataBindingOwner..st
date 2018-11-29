accessing
parentDataBindingOwner: aDataBindingOwner
	parentDataBindingOwner := aDataBindingOwner.
	aDataBindingOwner addChildDataBindingOwner: self.