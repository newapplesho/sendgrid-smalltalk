baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'JSON' with: [
			spec
				className: 'ConfigurationOfJSON';
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main'. ].
	].
