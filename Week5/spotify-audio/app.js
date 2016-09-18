$(document).ready(function() {
	$('.js-search').on("click", trackSearch);
});

function trackSearch(theSearch) {
	theSearch.preventDefault();
	console.log("trackSearch");
	$('.btn-play').removeClass("playing");
	q = 'q=' + $(".js-search-term").val() + '&type=track';
	console.log(q);
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?${q}`,
		success: showTrack,
		error: handleError
	});
};


function showTrack(response) {
	track = response.tracks.items[0];
	var current = 0;
	var duration = 0
	$('.js-status-bar').attr("value", current.toString());
	$('.js-status-bar').attr("max", duration.toString());
	$('.js-track-title').html(track.name);
	$('.js-track-artist').html(track.artists[0].name);
	$('.js-track-imgsrc').attr("src", (track.album.images[0].url));
	$('.js-track-player').attr("src", (track.preview_url));
	$('.js-track-player').on('timeupdate', printTime);
	$('.btn-play').removeClass("disabled");
	$('.btn-play').on("click", playTrack);
};

function playTrack(response) {
	$('.btn-play').toggleClass("playing");
	if ($('.btn-play').hasClass("playing")) {
		$('.js-track-player').trigger('play');
	} else {
		$('.js-track-player').trigger('pause');
	}

};

function handleError(error) {
	console.log("Error!");
	console.log(error.responseText);
};

function printTime () {
	$('.js-status-bar').attr("value", current.toString());
	$('.js-status-bar').attr("max", duration.toString());
	current = $('.js-track-player').prop('currentTime');
	duration = $('.js-track-player').prop('duration');
	console.debug('Current time: ' + current + ' - Duration: ' + duration);
};
