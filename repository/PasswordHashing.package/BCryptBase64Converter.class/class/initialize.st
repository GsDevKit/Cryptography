as yet unclassified
initialize
"
self initialize
"
	FromCharTable := Array new: 256.	"nils"
	ToCharTable := Array new: 64.
	($A asciiValue to: $Z asciiValue) doWithIndex: [:val :ind | 
		FromCharTable at: val+1 put: ind+1.
		ToCharTable at: ind+2 put: val asCharacter].
	($a asciiValue to: $z asciiValue) doWithIndex: [:val :ind | 
		FromCharTable at: val+1 put: ind+27.
		ToCharTable at: ind+28 put: val asCharacter].
	($0 asciiValue to: $9 asciiValue) doWithIndex: [:val :ind | 
		FromCharTable at: val+1 put: ind+26+27.
		ToCharTable at: ind+27+27 put: val asCharacter].
	FromCharTable at: $. asciiValue + 1 put: 0.
	ToCharTable at: 1 put: $..
	FromCharTable at: $/ asciiValue + 1 put: 1.
	ToCharTable at: 2 put: $/.
	