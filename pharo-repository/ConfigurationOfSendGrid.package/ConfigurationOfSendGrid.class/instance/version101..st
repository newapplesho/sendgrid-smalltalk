versions
version101: spec
	<version: '1.0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'ShoYoshida'.
		spec project: 'JSON' with: #stable.
		spec
			baseline: 'SendGrid' with: [ spec repository:'github://newapplesho/sendgrid-smalltalk:ce676f2225374264108042c4c734fe116b3c5080/pharo-repository' ];
		import: 'SendGrid' ].
