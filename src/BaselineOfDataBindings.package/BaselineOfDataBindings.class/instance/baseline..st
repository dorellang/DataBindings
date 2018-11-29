baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec package: 'DataBindings'.
		spec package: 'DataBindings-Tests' with: [
			spec requires: #('DataBindings')
		].
	].
