binding
bind: aBinding to: anotherBinding
	aBinding value: anotherBinding value.
	aBinding subscribeTo: anotherBinding.
	anotherBinding subscribeTo: aBinding