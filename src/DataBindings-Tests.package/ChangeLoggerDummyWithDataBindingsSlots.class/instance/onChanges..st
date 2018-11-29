refreshing
onChanges: dataChanges
	| entry |
	entry := OrderedCollection new.
	dataChanges whenValueChangedAt: #oneWay do: [ :value :oldValue |
		entry add: #oneWay -> {value. oldValue}.
	].
	dataChanges whenValueChangedAt: #twoWay do: [ :value :oldValue |
		entry add: #twoWay -> {value. oldValue}.
	].
	dataChanges whenValueChangedAt: #oneTime do: [ :value :oldValue |
		entry add: #oneTime -> {value. oldValue}.
	].
	changes add: entry asArray