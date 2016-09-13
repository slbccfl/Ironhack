$(document).ready(function() {
	// Page has finished loading, so we are ready to select things...
	$('.hello-button').on('click', function () {
	alert('hello world')
	})
	$('#fade').on('click', function () {
		var selection = $('.everythingelse').not('#fade')
		console.log(selection);
		selection.fadeToggle(2000);
	})
})


