I represent a set of changes that will be passed as an argument for the #onChanges: method of a DataBindingOwner. Currently I deal with whole value changes. But some may be added in the future.

The messages you typically send me in a #onChanges: method from a TDataBindingOwner are:

- #whenValueChangedAt:do:
	Evaluates a block with up to two arguments if there was a ValueChanged in a DataBindingSlot. Passed arguments are the new and previous value respectively.

- #whenValueChangedAt:send:
	Sends a message to my TDataBindingOwner with up to two arguments if there was a ValueChanged in a DataBindingSlot. Passed arguments are the new and previous value respectively.

- #whenValueChangedAt:send:to:
	Sends a message to some object with up to two arguments if there was a ValueChanged in a DataBindingSlot. Passed arguments are the new and previous value respectively.