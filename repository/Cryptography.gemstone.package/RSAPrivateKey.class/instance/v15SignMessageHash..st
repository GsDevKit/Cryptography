process
v15SignMessageHash: encodedMsg
  | int emLen basicAtOffset |
  emLen := (p * q) digitLength - 1.
  int := CryptoPlatform current largePositiveIntegerClass new: emLen neg: false.
  basicAtOffset := CryptoPlatform current largePositiveIntegerBasicAtOffset.
  encodedMsg
    with: (encodedMsg size to: 1 by: -1)
    do: [ :each :index | int basicAt: index + basicAtOffset put: each ].
  int basicAt: encodedMsg size + 1 + basicAtOffset put: 0.
  encodedMsg size + 2 to: emLen - 1 do: [ :ind | int basicAt: ind + basicAtOffset put: 255 ].
  int basicAt: emLen + basicAtOffset put: 1.
  ^ (self crypt: int) asByteArray