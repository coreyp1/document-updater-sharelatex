ALLDOCSKEY = "AllDocIds"
PROJECTKEY = "ProjectId"
BLOCKINGKEY = "Blocking"
CHANGEQUE = "ChangeQue"
DOCSINPROJECT = "DocsIn"
PENDINGUPDATESKEY = "PendingUpdates"
DOCLINES = "doclines"
DOCOPS = "DocOps"
DOCVERSION = "DocVersion"
DOCIDSWITHPENDINGUPDATES = "DocsWithPendingUpdates"

module.exports =

	allDocs : ALLDOCSKEY
	docLines : (op)-> DOCLINES+":"+op.doc_id
	docOps : (op)-> DOCOPS+":"+op.doc_id
	docVersion : (op)-> DOCVERSION+":"+op.doc_id
	projectKey : (op)-> PROJECTKEY+":"+op.doc_id
	blockingKey : (op)-> BLOCKINGKEY+":"+op.doc_id
	changeQue : (op)-> CHANGEQUE+":"+op.project_id
	docsInProject : (op)-> DOCSINPROJECT+":"+op.project_id
	pendingUpdates : (op)-> PENDINGUPDATESKEY+":"+op.doc_id
	docsWithPendingUpdates : DOCIDSWITHPENDINGUPDATES
	combineProjectIdAndDocId: (project_id, doc_id) -> "#{project_id}:#{doc_id}"
	splitProjectIdAndDocId: (project_and_doc_id) -> project_and_doc_id.split(":")
	now : (key)->
		d = new Date()
		d.getDate()+":"+(d.getMonth()+1)+":"+d.getFullYear()+":"+key
