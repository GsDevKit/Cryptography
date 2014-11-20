initialization-release
key: aByteArray
  | srcIndex |
  key := CryptoPlatform current largePositiveIntegerClass
    new: (aByteArray size min: 64)
    neg: false.
  srcIndex := 0.
  key digitLength to: 1 by: -1 do: [ :i | key digitAt: i put: (aByteArray at: (srcIndex := srcIndex + 1)) asInteger ].
  (CryptoPlatform current highBitFor: key) > 512
    ifTrue: [ key := key bitShift: (CryptoPlatform current highBitFor: key) - 512 ].
  key := key normalize.
  seed := 16rEFCDAB8998BADCFE10325476C3D2E1F067452301	"initial seed"