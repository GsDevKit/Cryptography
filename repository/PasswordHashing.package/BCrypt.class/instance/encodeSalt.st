as yet unclassified
encodeSalt

	^ '$' , self class bcryptVersion , self minorVersionString , '$' , logRounds greaseString
		, ((self encodeBase64: csalt readStream) contents greaseString copyFrom: 1 to: self class bcryptMaxSalt)