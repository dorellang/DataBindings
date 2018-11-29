# DataBindings
A small Vue.js-inspired reactive data bindings framework for Pharo.

# Load it on your image

```smalltalk
Metacello new
	baseline: 'DataBindings';
	repository: 'github://dorellang/DataBindings/src';
	load.
```

# Including it in your project baseline

```smalltalk
baseline: spec
  "add the baseline to your spec"
   spec baseline: 'DataBindings' with: [
      spec repository: 'github://dorellang/DataBindings/src'
   ].
   
   "then declare it as a dependency"
   spec package: 'YourPackage' with: [
      spec requires: #( "etc..." 'DataBindings' "etc...")
   ]
```
