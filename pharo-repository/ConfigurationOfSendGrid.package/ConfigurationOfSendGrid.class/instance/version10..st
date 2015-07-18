versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'ShoYoshida'.
		spec project: 'JSON' with: #stable.
		spec
			baseline: 'SendGrid' with: [ spec repository:'github://newapplesho/sendgrid-smalltalk:cab0a5bb425aa557bc8d51fe956b376289fba6ed/pharo-repository' ];
		import: 'SendGrid' ].
