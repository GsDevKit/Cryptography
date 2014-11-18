as yet unclassified
genSalt: logBase2Iterations
	|  position seed rand |
	position := 1.
	rand := Random new.
	csalt := WriteStream new: self class bcryptMaxSalt.
	[ csalt atEnd ]
		whileFalse: [ 
			position \\ 4 = 0
				ifTrue: [ seed := rand next ].
			csalt nextPut: (seed bitAnd: 16rff).
			seed := seed bitShift: -8.
			position := position + 1 ].
	logRounds := logBase2Iterations < 4
		ifTrue: [ 4 ]
		ifFalse: [ 
			logBase2Iterations > 31
				ifTrue: [ 31 ]
				ifFalse: [ logBase2Iterations ] ].
			^self encodeSalt.