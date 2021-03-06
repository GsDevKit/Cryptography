accessing
decrypt: aByteArray
	"Answer a copy of aByteArray which is decrypted with my key."
	| decryptedBlock |
	decryptedBlock := 
		self 
			decrypt: aByteArray copy
			from: 1
			to: aByteArray size.
	^ self isStreamCipher 
		ifTrue: [ decryptedBlock ]
		ifFalse: 
			[ decryptedBlock
				copyFrom: 1 
				to: decryptedBlock unpaddedSize ]