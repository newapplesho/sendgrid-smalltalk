baselines
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec project: 'JSON' with: [
			spec
				className: 'ConfigurationOfJSON';
				file: 'ConfigurationOfJSON';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main'. ].
		spec 
			package: 'SendGrid-Core'.
	].