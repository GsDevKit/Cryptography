as yet unclassified
setSaltCharacteristics: aSalt
	| salt saltTokens |
	salt := aSalt == nil
		ifTrue: [ self genSalt: self class bcryptDefaultRounds ]
		ifFalse: [ aSalt ].
	saltTokens := salt findTokens: '$'.
	minor := ((saltTokens at: 1 )= '2a')
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	logRounds := (saltTokens at: 2) asInteger.
	rounds:=1 bitShift: logRounds .
	csalt := self decodeBase64: (saltTokens at: 3).
	saltLength := self class bcryptMaxSalt