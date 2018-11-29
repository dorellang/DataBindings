I am a data binding. I am basically like a value holder that belongs to a DataBindingOwner (stored in the owner instance variable). You can get and set my contained value via the #value and #value: messages, and you can ask me to #flush it (i.e, to propagate it to the bindings I am bound to).

You can also dispose me with the #release message.