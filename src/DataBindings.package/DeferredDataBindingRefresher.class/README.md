I am data binding refresher that doesn't flush data bindings just when they change. Instead I defer it until I refresh the whole data binding tree. I can be told to do that iff I was requested to be refreshed via the #refreshIfRequested message.

My instance variables are:

- refreshRequested
	If was requested to be refreshed since last refresh.

- rootOwner
	The root DataBindingOwner of the DataBindingTree.