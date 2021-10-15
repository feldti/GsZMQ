helpers
sendTelegram

	self extSocket sendTelegram: self.
	self setNow.
	self receivedTelegram: false
