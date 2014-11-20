gemstone
gemStone: old become: new
  "if old or new is on the stack, the become is disallowed (in GemStone2.x)"

  ((old _onStackAsSelfBelow: 1) or: [ new _onStackAsSelfBelow: 1 ])
    ifTrue: [ 
      | sema |
      sema := Semaphore new.
      [ 
      old become: new.
      sema signal ] fork.
      sema wait ]
    ifFalse: [ old become: new ]