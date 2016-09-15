console.log("We are GO!!!");

$(document).ready(function() {
	$('.js-artist-search').on("click", artistSearch);
})

function artistSearch() {
	console.log('artistSearch');
	q = 'q=artist:' + $(".js-artist-name").val() + '&type=artist';
	console.log(q);
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?${q}`,
		success: showArtists,
		error: handleError
	});
}

function showArtists(response) {
	console.log("Successful GET");
	console.log(response);
	artistHash = JSON.parse(response);
	

}

function handleError(error) {
	console.log("Error!");
	console.log(error.responseText);
}