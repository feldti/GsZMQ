Accessing
telegram

   "Return the value of the instance variable 'telegram'."
   ^telegram ifNil: [ telegram := ZMQTelegram newOnSocket: self server socket ].
