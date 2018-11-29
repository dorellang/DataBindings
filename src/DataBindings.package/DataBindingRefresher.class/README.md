I am an abstract DataBindingRefresher. My duty is to handle and propagate changes in data bindings that have me. I do this by responding appropiately when these to messages are sent to me:

- #notifyBindingValueChanged:
Sent with a DataBinding, when that DataBinding value is changed. Overriding this message is optional.

- #requestRefresh
Sent from your code when you want to refresh the values in the data bindings. Must be overriden.