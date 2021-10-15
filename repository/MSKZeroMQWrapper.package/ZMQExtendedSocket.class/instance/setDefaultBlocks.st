initialize
setDefaultBlocks

	preOpenBlock := self class defaultPreOpenBlock.
	postOpenBlock := self class defaultPostOpenBlock.
	preCloseBlock := self class defaultPreCloseBlock.
	postCloseBlock := self class defaultPostCloseBlock.
