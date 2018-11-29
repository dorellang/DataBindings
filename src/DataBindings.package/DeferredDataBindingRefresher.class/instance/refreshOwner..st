refreshing
refreshOwner: aBindingOwner
	| hadChanges |
	hadChanges := false.
	aBindingOwner flushDataBindings. "for propagating oneway changes down"
	aBindingOwner childDataBindingOwners do: [ :anotherBindingOwner |
		hadChanges := hadChanges or: [ self refreshOwner: anotherBindingOwner ].
	].
	hadChanges := hadChanges or: [ aBindingOwner refresh ].
	aBindingOwner flushDataBindings. "for propagating twoway changes up"
	^ hadChanges