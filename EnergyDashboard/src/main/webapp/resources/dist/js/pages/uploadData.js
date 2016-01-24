var loaderHTML = '<div id="loader" class="overlay"><i class="fa fa-refresh fa-spin"></i></div>';

function showLoader(tagId){
	$( "#"+tagId ).append(loaderHTML);
}

function removeLoader(tagId){
	$( "#loader").remove( ".overlay" );
}

function showErrorMsg(tagId,msg){
	$( "#"+tagId).html(msg);
}

function clearErrorMsg(tagId){
	$( "#"+tagId).html("");
}


function showSuccessMsg(tagId,msg){
	$( "#"+tagId).html(msg);
}

function clearSuccessMsg(tagId){
	$( "#"+tagId).html("");
}


$( "#idUploadForm" ).submit(function( event ) {
	 event.preventDefault();
	 showLoader("idUploadDataBox");
	 var input;
	 if (!window.FileReader) {
		    showErrorMsg("idErrorMessage","The file API isn't supported on this browser yet.");
		    removeLoader("idUploadDataBox");
			return;
		}
		input = document.getElementById("idUploadForm").elements[0];
		if (!input) {
			showErrorMsg("idErrorMessage","Couldn't find the fileinput element.");
			removeLoader("idUploadDataBox");
			return;
		} else if (!input.files) {
			showErrorMsg("idErrorMessage","This browser doesn't seem to support the `files` property of file inputs.");
			removeLoader("idUploadDataBox");
			return;
		} else if (!input.files[0]) {
			showErrorMsg("idErrorMessage","Please select a file before clicking 'Load'");
			removeLoader("idUploadDataBox");
			return;
		} else {
			
			var ext = input.files[0].name.split('.').pop().toLowerCase();
			if ($.inArray(ext, [ 'csv' ]) == -1) {
				showErrorMsg("idErrorMessage","Please upload a .csv file");
				// alert(oForm[i].elements[0].name);
				removeLoader("idUploadDataBox");
				return;
			}
			
			file = input.files[0];
			var formData = new FormData();
			formData.append("file", file);
			$.ajax({
				url : "fileUpload",
				data : formData,
				dataType: 'text',
			    processData: false,
			    contentType: false,
			    type: 'POST',
				success : function(data, status, req) {
					var responseCode = parseInt(data); 
					if(responseCode != 1){
						showErrorMsg("idErrorMessage","Unable to upload data.");
						removeLoader("idUploadDataBox");
						return;
					}else{
						clearErrorMsg("idErrorMessage");
						showSuccessMsg("idSuccessMessage","Successfully Uploaded Data");
						removeLoader("idUploadDataBox");
					}
					
				},
				error : function(req, status, error) {
					showErrorMsg("idErrorMessage","Some error occured.");
					removeLoader("idUploadDataBox");
				}
			});
		}
	 
//	 removeLoader("idUploadDataBox");
});