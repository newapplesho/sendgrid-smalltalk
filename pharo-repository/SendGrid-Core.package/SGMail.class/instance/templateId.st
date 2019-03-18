accessing
templateId
	^ self jsonObject at: #template_id ifAbsent: [  ]