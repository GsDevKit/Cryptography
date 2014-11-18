as yet unclassified
bcrypt: passwordString with: saltString
"This implementation is currently broken.  It does not calculate the correct hash.  It is also very very slow, taking a minute to hash a password.  Until the Blowfish algorithm can be sped up effort to correct the inaccuracy seems secondary. "
	"^self new bcrypt: passwordString with: saltString."