binding
bind: aBinding to: anotherBinding
	anotherBinding value
		ifNotNil: [ :v | 
			aBinding value: anotherBinding value ]
		ifNil: [
			aBinding
				subscribeTo: anotherBinding
				andNotifyMeWith: #notifyValueChange:andCancelSubscriptionFrom:
		]