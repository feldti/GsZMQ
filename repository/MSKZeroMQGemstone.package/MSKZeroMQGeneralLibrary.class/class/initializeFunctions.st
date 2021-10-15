initialize
initializeFunctions
	"MSKZeroMQGeneralLibrary initializeFunctions"

	super initializeFunctions.

	"general functions"
	lcVersion := CCallout library: self cLibrary name: 'zmq_version' result: #void args: #(#ptr #ptr #ptr).
	lcErrNo := CCallout library: self cLibrary name: 'zmq_errno' result: #int64 args: #().
	lcStrError := CCallout library: self cLibrary name: 'zmq_strerror' result: #ptr args: #(#int64).

	"context service methods"
	lcInit := CCallout library: self cLibrary name: 'zmq_init' result: #ptr args: #(#int64).
	lcTerm := CCallout library: self cLibrary name: 'zmq_term' result: #int64 args: #(#ptr).

	"socket methods"
	lcBind := CCallout library: self cLibrary name: 'zmq_bind' result: #int64 args: #(#ptr #ptr).
	lcConnect := CCallout library: self cLibrary name: 'zmq_connect' result: #int64 args: #(#ptr #ptr).
	lcSocket := CCallout library: self cLibrary name: 'zmq_socket' result: #ptr args: #(#ptr #int64).
	lcClose := CCallout library: self cLibrary name: 'zmq_close' result: #int64 args: #(#ptr ).

	"management socket options"
	lcSetSocketOption := CCallout library: self cLibrary name: 'zmq_setsockopt' result: #int64 args: #(ptr int64 ptr int64 ).
	lcGetSocketOption := CCallout library: self cLibrary name: 'zmq_getsockopt' result: #int64 args: #(ptr int64 ptr ptr ).

	"sending data"
	lcSend := CCallout library: self cLibrary name: 'zmq_send' result: #int64 args: #(ptr ptr int64 ).
	
	"managing message buffer"
	lcMsgClose := CCallout library: self cLibrary name: 'zmq_msg_close' result: #int64 args: #(ptr).
	lcMsgInit := CCallout library: self cLibrary name: 'zmq_msg_init' result: #int64 args: #(ptr).
	lcMsgSize := CCallout library: self cLibrary name: 'zmq_msg_size' result: #int64 args: #(ptr).
	lcMsgData := CCallout library: self cLibrary name: 'zmq_msg_data' result: #ptr args: #(ptr).

	"manage receiving"
	lcRecv := CCallout library: self cLibrary name: 'zmq_recv' result: #int64 args: #(ptr ptr int64).
