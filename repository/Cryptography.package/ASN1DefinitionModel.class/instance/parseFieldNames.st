services parsing
parseFieldNames
	| aTempString tempFields |
	aTempString := self asn1DefinitionString.
	tempFields := OrderedCollection new.
	(aTempString copyFrom: (aTempString indexOf: ${) + 1 to: (aTempString indexOf: $}) - 1) linesDo: [:aLine |
		(((aLine indexOfSubCollection: '--') > 0) or: [aLine withBlanksTrimmed isEmpty])ifFalse: [
			tempFields add: aLine subStrings first
		].
	].
	^tempFields