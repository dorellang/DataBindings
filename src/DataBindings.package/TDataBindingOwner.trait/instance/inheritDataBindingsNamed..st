initialize-release
inheritDataBindingsNamed: aCollectionOfSlotNames
	aCollectionOfSlotNames do: [ :each | self inheritDataBindingNamed: each ]