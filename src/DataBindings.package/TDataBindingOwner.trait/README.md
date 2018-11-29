I am a trait that provides a lot of methods that are required on instances that have a DataBindingSlot. You need to use me in all classes that have DataBindingSlots.

Besides in all concrete classes that use me you need to override:

- #refresher (Returns a DataBindingRefresher instance. Go to method for more details)

And optionally:

- #onChanges: (It's sent with a BoundDataChanges when changes are detected. Go to method for more details).

You can #dispose me to avoid memory leaks and unnecessary refreshes.

See DataBindingSlot class comment for a explanation on how to use a DataBindingSlot.