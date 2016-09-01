versions
version103: spec
	<version: '1.0.3' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'ShoYoshida'.
		spec project: 'JSON' with: #stable.
		spec
			baseline: 'SendGrid' with: [ spec repository:'github://newapplesho/sendgrid-smalltalk:v1.0.3/pharo-repository' ];
		import: 'SendGrid' ].
