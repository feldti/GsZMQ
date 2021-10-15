api-calls-general
version
	"^<Array of: Integer of: Integer of: Integer> MSKZeroMQGeneralLibrary zmqVersion"

	| args major minor patch  |

	major :=	self byteArrayFor64BitInstances: 1.
	minor := self byteArrayFor64BitInstances: 1.
	patch := self byteArrayFor64BitInstances: 1.

	args := Array with: (CPointer newFrom: major) with: (CPointer newFrom: minor)  with: (CPointer newFrom: patch) .

	self fnVersion callWith: args.

	^Array with: (major int32At: 0) with: (minor int32At: 0)  with: (patch int32At: 0) .
