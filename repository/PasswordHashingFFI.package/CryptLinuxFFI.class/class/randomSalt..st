as yet unclassified
randomSalt: aSize
	|  combined targetStream char random |
	 combined:='0123456789ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz'.
	targetStream := WriteStream on: (String new: aSize ).
	random := Random new.
	[targetStream contents size <= aSize] whileTrue: 
			[char :=combined 
						at: (random next * (combined size - 1)) rounded + 1.
			char isAlphaNumeric ifTrue: [targetStream nextPut: char]].
	^targetStream contents