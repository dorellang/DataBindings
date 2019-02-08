refreshing
refreshOwner: aBindingOwner
	| hadChanges |
	hadChanges := false.
	aBindingOwner flushDataBindings. "for propagating one-way changes down"
	aBindingOwner childDataBindingOwners do: [ :anotherBindingOwner |
		hadChanges := (self refreshOwner: anotherBindingOwner) or: [ hadChanges ].
	].
	^ aBindingOwner refresh or: [ hadChanges ]
