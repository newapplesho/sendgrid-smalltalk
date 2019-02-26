accessing
htmlContent
	^ htmlContent ifNil: [ htmlContent := '<html><pre>', self textContent, '</pre></html>' ]