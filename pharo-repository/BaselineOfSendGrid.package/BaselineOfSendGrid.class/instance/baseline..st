baselines
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec project: 'JSON' with: [
			spec
				className: 'ConfigurationOfNeoJSON';
				file: 'ConfigurationOfNeoJSON';
				repository: 'http://smalltalkhub.com/mc/MetaRepoForPharo60/main'. ].
		spec 
			package: 'SendGrid-Core'.
	].