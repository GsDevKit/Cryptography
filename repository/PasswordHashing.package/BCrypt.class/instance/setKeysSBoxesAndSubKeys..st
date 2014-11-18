as yet unclassified
setKeysSBoxesAndSubKeys: aKey
	key:= aKey asByteArray.
	self setKeyLength.
	state := Blowfish new bCryptKey: key.
	
	state expandState: csalt keyLength: keyLength dataLength: saltLength.
	(1 to: rounds)
		do: [ :each | 
			state expandZeroState:  key length: keyLength.
			state expandZeroState: csalt length: saltLength.
			count:=count+2. ].
	state current: 1.
	cdata := WordArray new: self blocks.
	(1 to: self blocks)
		do: [ :each | 
			cdata
				at: each
				put: (((state stream2word: cipherText length: (self blocks * 4)) asByteArray) unsignedLongAt: 1 bigEndian: true) ]