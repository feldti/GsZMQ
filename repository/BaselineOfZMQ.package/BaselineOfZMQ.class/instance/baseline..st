other
baseline: spec 
	<baseline>
	spec
		for: #'gemstone'
		do: [
			"First the prerequisites"
			spec
				baseline: 'MSKPlatformExtension'	
				with: [ 
					spec
						loads: #('MSKPlatformExtension');
						repository: 'github://feldti/MSKPlatformExtension:main/repository' ];				
				yourself.

			"First the prerequisites"
			spec
				baseline: 'MSKExtension'	
				with: [ 
					spec
						loads: #('MSKExtensions');
						repository: 'github://feldti/MSKExtension:main/repository' ];				
				yourself.

			"Now the actual delivered packages"
			spec
				package: 'MSKZeroMQGemstone'  with: [ spec requires: #('MSKPlatformExtension' 'MSKExtension') ] ;
				package: 'MSKZeroMQBase' with: [ spec requires: #('MSKZeroMQGemstone') ] ;
				package: 'MSKZeroMQWrapper' with: [ spec requires: #('MSKZeroMQBase') ] ;
				yourself.

			"Now the names for more specific loading"
			spec
				group: 'default' with: #('MSKZeroMQWrapper');
				yourself
		]
