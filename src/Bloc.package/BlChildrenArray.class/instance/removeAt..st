removing
removeAt: anIndex
	array := array copyReplaceFrom: anIndex to: anIndex with: #().
	self arrayChanged