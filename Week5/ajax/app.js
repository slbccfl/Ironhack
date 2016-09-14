console.log("We are GO!!!");

$(document).ready(function() {
	$('.js-fetch-characters').on("click", fetchCharacters);
	$('.js-add-chewwie').on("click", addChewwie);
	$('.js-add-character').on("click", addCharacter);
})

function fetchCharacters() {

	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
	// $.get( "https://ironhack-characters.herokuapp.com/characters", function() {
	// 	console.log( "Fetch Successful" );
	// })
 //  	.done(function() {
 //    	showCharacters;
 //  	})
 //  	.fail(function() {
	//     handleError;
 //  	})
}

function showCharacters(response) {

	var charactersArray = response;
	charactersArray.forEach(function (theCharacter) {
		var html = `<li>${theCharacter.name} - ${theCharacter.occupation} - ${theCharacter.weapon}</li>`;
		$('.js-characters-list').append(html);
	});
}

function handleError(error) {
	console.log("Error!");
	console.log(error.responseText);
}

function addChewwie () {
	var newCharacter = {
		name: "Jar Jar Binks Must Die",
		occupation: "Redshirt",
		weapon: "Unarmed"
	}

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: fetchCharacters,
		error: handleError
	})
}

function addCharacter (theEvent) {
	theEvent.preventDefault();

	console.log("Add New Character");

	var newCharacter = {
		name: $(".js-character-name").val(),
		occupation: $(".js-character-occupation").val(),
		weapon: $(".js-character-weapon").val()
	}

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: fetchCharacters,
		error: handleError
	})
}