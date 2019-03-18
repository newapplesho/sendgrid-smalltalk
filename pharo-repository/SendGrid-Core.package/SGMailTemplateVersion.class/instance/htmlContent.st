accessing
htmlContent
	^ htmlContent ifNil: [ htmlContent := '<html><pre>' , self textContent asHTMLString , '</pre></html>' ]