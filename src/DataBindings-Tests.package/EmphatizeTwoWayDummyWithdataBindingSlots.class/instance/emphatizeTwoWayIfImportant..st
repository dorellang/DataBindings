refreshing
emphatizeTwoWayIfImportant: newTwoWay
	newTwoWay isString ifFalse: [ ^ self ].
	(newTwoWay includesSubstring: 'doge') ifFalse: [ ^ self ].
	((newTwoWay beginsWith: '*' ) and: [ (newTwoWay endsWith: '*') ]) ifTrue: [ ^ self ].
	twoWay := '*', newTwoWay, '*'.