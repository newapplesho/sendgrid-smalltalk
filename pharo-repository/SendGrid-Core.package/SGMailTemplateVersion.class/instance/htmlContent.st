accessing
htmlContent
	^ htmlContent ifNil: [ htmlContent := '<html>', self textContent, '</html>' ]