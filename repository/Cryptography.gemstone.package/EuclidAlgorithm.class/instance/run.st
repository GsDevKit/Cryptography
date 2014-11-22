as yet unclassified
run
  ((a isKindOf: CryptoPlatform current largePositiveIntegerClass)
    and: [ b isKindOf: CryptoPlatform current largePositiveIntegerClass ])
    ifTrue: [ self lehmer ]
    ifFalse: [ self doBasicAlgorithm ]