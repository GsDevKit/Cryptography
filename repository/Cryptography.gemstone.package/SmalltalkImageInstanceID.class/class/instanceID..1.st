inquires
instanceID
  | key |
  key := #'SmalltalkImageInstanceID_instanceID'.
  ^ SessionTemps current
    at: key
    ifAbsent: [ SessionTemps current at: key put: UUID new ]