I am concrete BindingStrategy. I determine the value change propagation for the binding in the slot that uses me in this way:

- (From my data binding point-of-view) When I am bound to another binding, then value changes will be propagated from that other binding to me and viceversa too.