refreshing
refreshOwner: aBindingOwner
	| hadChanges |
	hadChanges := false.
	aBindingOwner flushDataBindings. "for propagating oneway changes down"
	aBindingOwner childDataBindingOwners do: [ :anotherBindingOwner |
		hadChanges := (self refreshOwner: anotherBindingOwner) or: [ hadChanges ].
	].
	hadChanges := aBindingOwner refresh or: [ hadChanges ].
	^ hadChanges