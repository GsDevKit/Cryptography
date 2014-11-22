as yet unclassified
fromFile: filename
  "(Pkcs12PrivateKeyFileReader fromFile: '/Users/slosher/Desktop/squeak/certificates/usarhiocertpks12.pfx')"

  | password |
  password := (GsTextInteraction requestPassword: 'Enter your password') signal.
  ^ self fromFile: filename password: password