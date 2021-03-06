encryption/decryption
applyToSBoxes: anInteger
	| result bits |
	result := 0.
	1 to: 8 do: [:i |
		bits := (anInteger bitShift: i*6-48) bitAnd: 63.
		result := (result bitShift: 4) + ((SBoxes at: i) at: bits+1)].
	^result