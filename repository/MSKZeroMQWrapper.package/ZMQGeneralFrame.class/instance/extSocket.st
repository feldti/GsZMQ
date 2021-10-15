Accessing
extSocket

   "Return the value of the instance variable 'extSocket'."
   ^extSocket ifNil: [ self telegram isNil ifTrue:[ nil ] ifFalse:[ self telegram extSocket ]]
