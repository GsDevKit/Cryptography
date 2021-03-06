tests - mapped
testDefinedMappedSequenceType

	| bytes obj newBytes type |
	((ASN1Module name: #test) mapped: #TestMapped)
		mapping: ASN1TestModel mappingSymbol: #testSlot1 type: #TestSequence.
	((ASN1Module name: #test) sequence: #TestSequence mapping: ASN1TestModel)
		add: #testSlot1 type: #ASN1BooleanType.
	type := (ASN1Module name: #test) find: #TestMapped.

	bytes := #(48 3 1 1 255).
	obj := ASN1Stream decodeBytes: bytes withType: type.
	self assert: (obj isKindOf: ASN1TestModel).
	self assert: (obj testSlot1 isKindOf: ASN1TestModel).
	self assert: (obj testSlot1 testSlot1 = true).
	newBytes := ASN1Stream encode: obj withType: type.
	self assert: (bytes asByteArray = newBytes).
