printing
standardMessageText
	"Generate a standard textual description"
	
	^ String streamContents: [ :stream |
		stream print: self signaler class.
		stream << ' has to be installed in a class using TWithDataBindings trait'.
	]