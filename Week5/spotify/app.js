console.log("We are GO!!!");

$(document).ready(function() {
	$('.js-artist-search').on("click", artistSearch);
})

function artistSearch(theSearch) {
	theSearch.preventDefault();
	q = 'q=artist:' + $(".js-artist-name").val() + '&type=artist';
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?${q}`,
		success: showArtists,
		error: handleError
	});
};

function showArtists(response) {
	artistsArray = response.artists.items;
	htmlArtistList = '';
	artistsArray.forEach(function(artist) {
		htmlArtistList += `<li><h2>${artist.name}</h2>`
		htmlArtistList += `<button class="js-album-search" data-artist-id=${artist.id}>See artist's albums</button>`
		if (artist.images.length > 0) {
			htmlArtistList += `<br><img src=${artist.images[0].url} width=200></li>`;
		}
		
	});
	$('.artistList').html(htmlArtistList);
	$(".js-album-search").on("click",albumSearch)
};

function handleError(error) {
	console.log("Error!");
	console.log(error.responseText);
};

 

function albumSearch (theEvent) {
	artistId = $(theEvent.currentTarget).data("artist-id");

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: showAlbums,
		error: handleError
	});
};

function showAlbums(response) {
	albumArray = response.items;
	var albumHTML = '';
	albumArray.forEach(function(album) {
		albumHTML += `<li><h2>${album.name}</h2>`;
		albumHTML += `<button class="js-tracks-search" data-album-id=${album.id}>See album's tracks</button>`;
	});
	$('.js-album-list').html(albumHTML);
	$(".js-album-modal").modal("show");
	$(".js-tracks-search").on("click",tracksSearch)
};

function tracksSearch (theEvent) {
	albumId = $(theEvent.currentTarget).data("album-id");

	console.log("Tracks Search CLICK!! on albumId: " + albumId);
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/albums/${albumId}/tracks`,
		success: showTracks,
		error: handleError
	});
};

function showTracks(response) {
	tracksArray = response.items;
	var tracksHTML = '';
	tracksArray.forEach(function(track) {
		tracksHTML += `<li>${track.name}</li>` ;
	});
	$('.js-tracks-list').html(tracksHTML);
	$(".js-tracks-modal").modal("show");
};