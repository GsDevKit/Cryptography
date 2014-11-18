as yet unclassified
ffiCrypt: password with: salt
|lib callout |
lib:=CLibrary named: 'libxcrypt'.
callout:=CCallout library: lib name: 'crypt' result:#'char*' args:(Array with: #'const char*' with:#'const char*').
^callout callWith:(Array with: password with: salt ).