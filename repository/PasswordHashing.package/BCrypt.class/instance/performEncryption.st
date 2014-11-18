as yet unclassified
performEncryption
	(1 to: 64) do: [:each| state blfEnc: cdata for: self blocks / 2 ].
	(1 to: self blocks)
		do: [ :each | 
			| cData index | index:=each -1.
			cData := cdata at: each.
			cipherText at:( 4 * index + 4) put: (cData bitAnd: 16rff).
			cData := cData bitShift: -8.
			cipherText at: (4 * index + 3) put: (cData bitAnd: 16rff).
			cData := cData bitShift: -8.
			cipherText at: (4 * index + 2) put: (cData bitAnd: 16rff).
			cData := cData bitShift: -8.
			cipherText at: (4 * index + 1) put: (cData bitAnd: 16rff) ]