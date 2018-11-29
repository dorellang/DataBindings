accessing
subscribeTo: anotherDataBinding andNotifyMeWith: aSelector
	| subscription |
	subscription := anotherDataBinding whenChangedSend: aSelector to: self.
	subscriptions add: subscription. 