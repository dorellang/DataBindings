I am an abstract BindingStrategy. My purpose is to dictate the behavior of a DataBindingSlot --which in turn it may contain a DataBinding instance-- when its binding is bound to another DataBinding. Currently there are 3 binding strategies:

- One way binding (specified in the OneWayBinding class)
- Two way binding (specified in the TwoTimeBindingStrategy class)
- One time binding (specified in the TwoWayBindingStrategy class)