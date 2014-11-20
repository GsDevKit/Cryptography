services
add: aType
  | old |
  old := self definitions at: aType name ifAbsent: [ nil ].
  aType module: self.
  ^ old
    ifNotNil: [ 
      self gemStone: old become: aType.
      self definitions at: old name put: old ]
    ifNil: [ self definitions at: aType name put: aType ]