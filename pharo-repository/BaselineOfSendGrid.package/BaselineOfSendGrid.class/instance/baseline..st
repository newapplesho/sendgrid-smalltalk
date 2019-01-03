baselines
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec 
			baseline: 'NeoJSON' 
			with: [ 
				spec repository: 'github://svenvc/NeoJSON/repository' ].
		spec 
			package: 'SendGrid-Core'.
	].