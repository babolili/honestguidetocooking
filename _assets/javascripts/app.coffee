#= require vendor/jquery.min
#= require vendor/jquery.easing.1.3
#= require vendor/jquery.scrollTo
#= require vendor/featherlight
#= require vendor/featherlight.gallery
#= require vendor/waypoints

$ ->
	$(document).on 'click', '.mobile-search-button', (e) ->
		(e).preventDefault()
		$(this).toggleClass 'active'
		$('#search-container').toggleClass 'active'
		
	SimpleJekyllSearch
	  searchInput: document.getElementById('search-input')
	  resultsContainer: document.getElementById('results-container')
	  json: '/search.json'