as yet unclassified
prepEncryptedResult

	encrypted := '$' , self class bcryptVersion , self minorVersionString , '$', self logRoundsString   , '$'.
	encrypted := encrypted , ((self encodeBase64: csalt readStream) greaseString).
	encrypted := encrypted , ((self encodeBase64: cipherText readStream) greaseString ).
	
	
