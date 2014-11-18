services
add: aType
  | old |
  old := self definitions at: aType name ifAbsent: [ nil ].
  aType module: self.
  old ifNotNil: [ self definitions removeKey: aType name ].
  ^ self definitions at: aType name put: aType