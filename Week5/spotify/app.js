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

	console.log("Album Search CLICK!! on artist.id: " + artistId);
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
		albumHTML += `<li>${album.name}</li>` ;
	});
	$('.js-album-list').html(albumHTML);
	console.log(albumHTML);
	$(".js-album-modal").modal("show");
};