notifications
notifyValueChange: aValueChange andCancelSubscriptionFrom: anAnnouncer
	self value: aValueChange newValue.
	anAnnouncer unsubscribe: self.