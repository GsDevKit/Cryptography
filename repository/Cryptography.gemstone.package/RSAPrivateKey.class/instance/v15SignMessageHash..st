process
v15SignMessageHash: encodedMsg
  | int emLen |
  emLen := (p * q) digitLength - 1.
  int := LargeInteger new: emLen neg: false.
  encodedMsg
    with: (encodedMsg size to: 1 by: -1)
    do: [ :each :index | int basicAt: index + 4 put: each ].
  int basicAt: encodedMsg size + 1 put: 0.
  encodedMsg size + 2 to: emLen - 1 do: [ :ind | int basicAt: ind put: 255 ].
  int basicAt: emLen put: 1.
  ^ (self crypt: int) asByteArray