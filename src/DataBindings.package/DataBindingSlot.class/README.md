I represent an slot that holds a DataBinding. I am intended to be used in a class definition. I define an instance variable that holds a DataBinding. If you use me, then you the class must also use the TDataBindingOwner trait.

I have the following constructors for use inside a slot defintion:

- oneWay. Defines a DataBindingSlot with the OneWayBindingStrategy.
- twoWay. Defines a DataBindingSlot with the TwoWayBindingStrategy.
- oneTime. Defines a DataBindingSlot with the OneTimeBindingStrategy.

You can learn more about the diferent data binding strategies in the class comments of BindingStrategy and its descendants.

Example:

	Object subclass: #MyCoolBeerList
		uses: TDataBindingOwner
		slots: { #beersToShow => DataBindingSlot oneWay }
		classVariables: {  }
		package: ''

The code above would make a MyCoolBeerList instance respond to the #beersToShow and #beersToShow: with
accessor-like behavior. You assign values to that data binding, just as if it were a MyCoolBeerList instance variable:

	beersToShow := { 'Kwak'. 'Cuvee des Trolls' }. "via variable"
	beerList beersToShow: { 'Delirium Tremens'. 'Gulden Draak' }. "via accessor"

You can also bind a DataBinding to the one that I hold via the following syntax:

	beersToShow := aDataBindingOwner &#anotherSlot. "instance variable"
	beerList beersToShow: aDataBindingOwner &#anotherSlot. "and accessor"