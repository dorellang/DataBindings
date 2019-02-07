accessing
dataBindingNames
	self flag: #todo.	"It should work with: '^ self dataBindings collect: #name' but it didn't."
	^ self class allSlots select: #isDataBindingSlot thenCollect: #name