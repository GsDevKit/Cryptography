process
v15SignMessageHash: encodedMsg
  | int emLen |
  emLen := (p * q) digitLength - 1.
  int := CryptoPlatform current largePositiveIntegerClass new: emLen neg: false.
  encodedMsg
    with: (encodedMsg size to: 1 by: -1)
    do: [ :each :index | int digitAt: index put: each ].
  int digitAt: encodedMsg size + 1 put: 0.
  encodedMsg size + 2 to: emLen - 1 do: [ :ind | int digitAt: ind put: 255 ].
  int digitAt: emLen put: 1.
  ^ (self crypt: int) asByteArray