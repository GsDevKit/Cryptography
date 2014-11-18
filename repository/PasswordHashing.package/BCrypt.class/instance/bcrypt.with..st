as yet unclassified
bcrypt: aKey with: aSalt
	self setSaltCharacteristics: aSalt.
	self setKeysSBoxesAndSubKeys: aKey.
	self performEncryption.
	self prepEncryptedResult.
	^encrypted