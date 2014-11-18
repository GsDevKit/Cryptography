*cryptography-core
next: count

"Returns the next count elements in the receiver's collection."

| result |
result := itsCollection species new.
count timesRepeat: [ self atEnd ifFalse:[result add: self next] ].
^result
