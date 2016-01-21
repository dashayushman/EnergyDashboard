var loaderHTML = '<div id="loader" class="overlay"><i class="fa fa-refresh fa-spin"></i></div>';

function showLoader(tagId){
	$( "#"+tagId ).append(loaderHTML);
}

function removeLoader(tagId){
	$( "#loader").remove( ".overlay" );
}

$( "#idUploadForm" ).submit(function( event ) {
	 event.preventDefault();
	 showLoader("idUploadDataBox");
	 removeLoader("idUploadDataBox");
});