notification
notifyBindingValueChanged: aDataBinding
	"When the value of a data binding is changed, this notification will be sent to me in order
	to propagate the assignment through the other bindings. By default I will just ignore it.
	You may override this method in order in a subclass to take some action (i.e. flushing the
	binding for value change propagation)"