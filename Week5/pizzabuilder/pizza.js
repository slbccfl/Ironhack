// Write your Pizza Builder JavaScript in this file.
$(document).ready(function() {
	$('.sauce').toggleClass('sauce-white');
	$('.crust').toggleClass('crust-gluten-free');
	$('.btn-sauce').toggleClass('active');
	$('.btn-crust').toggleClass('active');
	$('.btn-pepperonni').toggleClass('active');
	$('.btn-mushrooms').toggleClass('active');
	$('.btn-green-peppers').toggleClass('active');
	$("[class^='pep']").toggle();
	$("[class^='mushroom']").toggle();
	$("[class^='green-pepper']").toggle();
	$('.pp-pepperoni').hide();
	$('.pp-mushrooms').hide();
	$('.pp-green-peppers').hide();
	$('.pp-white-sauce').hide();
	$('.pp-gluten-free').hide();
	var price = 10
	$('strong').text('$'+price);
	var amount = 0

	$('.btn-pepperonni').on('click', function () {
		$("[class^='pep']").fadeToggle();
		$('.btn-pepperonni').toggleClass('active');
		if ($('.btn-pepperonni').hasClass('active')) {
			amount = 1
			$('.pp-pepperoni').show();
		} else {
			amount = -1
			$('.pp-pepperoni').hide();
		}
		price += amount;
		$('strong').text('$'+price);

	});
	$('.btn-mushrooms').on('click', function () {
		$("[class^='mushroom']").fadeToggle();
		$('.btn-mushrooms').toggleClass('active');
		if ($('.btn-mushrooms').hasClass('active')) {
			amount = 1
			$('.pp-mushrooms').show();
		} else {
			amount = -1
			$('.pp-mushrooms').hide();
		}
		price += amount;
		$('strong').text('$'+price);
	});
	$('.btn-green-peppers').on('click', function () {
		$("[class^='green-pepper']").fadeToggle();
		$('.btn-green-peppers').toggleClass('active');
		if ($('.btn-green-peppers').hasClass('active')) {
			amount = 1
			$('.pp-green-peppers').show();
		} else {
			amount = -1
			$('.pp-green-peppers').hide();
		}
		price += amount;
		$('strong').text('$'+price);
	});
	$('.btn-sauce').on('click', function () {
		$('.sauce').toggleClass('sauce-white');
		$('.btn-sauce').toggleClass('active');
		if ($('.btn-sauce').hasClass('active')) {
			amount = 3
			$('.pp-white-sauce').show();
		} else {
			amount = -3
			$('.pp-white-sauce').hide();
		}
		price += amount;
		$('strong').text('$'+price);


	});
	$('.btn-crust').on('click', function () {
		$('.crust').toggleClass('crust-gluten-free');
		$('.btn-crust').toggleClass('active');
		if ($('.btn-crust').hasClass('active')) {
			amount = 5
			$('.pp-gluten-free').show();
		} else {
			amount = -5
			$('.pp-gluten-free').hide();
		}
		price += amount;
		$('strong').text('$'+price);
	});
})