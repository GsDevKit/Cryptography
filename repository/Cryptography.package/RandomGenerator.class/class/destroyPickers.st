initialize-release
destroyPickers
  self
    withAllSubclassesDo: [ :each | 
      (each instVarNamed: #'picker') ifNotNilDo: [ :thePicker | thePicker destroy ].
      picker := nil ]