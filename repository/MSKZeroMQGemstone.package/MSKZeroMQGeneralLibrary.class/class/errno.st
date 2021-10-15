api-calls-general
errno
	"^<Integer> Returns the last error number of a zmq call. 

		MSKZeroMQGeneralLibrary zmqErrno

	"

	^self fnErrNo callWith: nil
