process
crypt: anInteger

	| m1 m2 h |
	m1 := anInteger raisedTo: self dP modulo: self p.
	m2 := anInteger raisedTo: self dQ modulo: self q.
	h := (m1 - m2) * self qInv \\ self p.
	^ m2 + (self q * h).
	