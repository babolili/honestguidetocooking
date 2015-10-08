#= require vendor/jquery.min
#= require vendor/jquery.easing.1.3
#= require vendor/jquery.scrollTo
#= require vendor/featherlight
#= require vendor/featherlight.gallery
#= require vendor/waypoints

$ ->
	$(document).on 'click', '.mobile-nav-button', (e) ->
		(e).preventDefault()
		$(this).toggleClass 'active'
		$('.nav-links').toggleClass 'active'

	$(document).on 'click', '.mobile-search-button', (e) ->
		(e).preventDefault()
		$(this).toggleClass 'active'
		$('#search-container').toggleClass 'active'

	$(document).on 'click', '#texture-toggle', (e) ->
		(e).preventDefault()
		$('#taste-toggle, #appearance-toggle').toggleClass 'hidden'
		$(this).toggleClass 'active'
		$('#texture-block').toggleClass 'active'
		$.scrollTo($(this),300,{offset:-40})

	$(document).on 'click', '#taste-toggle', (e) ->
		(e).preventDefault()
		$('#texture-toggle, #appearance-toggle').toggleClass 'hidden'
		$(this).toggleClass 'active'
		$('#taste-block').toggleClass 'active'
		$.scrollTo($(this),300,{offset:-40, easing:'easeInQuart'})

	$(document).on 'click', '#appearance-toggle', (e) ->
		(e).preventDefault()
		$('#texture-toggle, #taste-toggle').toggleClass 'hidden'
		$(this).toggleClass 'active'
		$('#taste-block').toggleClass 'active'
		$.scrollTo($(this),300,{offset:-40})

	$(document).on 'click', '.close-toggle', (e) ->
		(e).preventDefault()
		$('.savedinner-headers').removeClass 'hidden'
		$('.savedinner-headers').removeClass 'active'
		$('.savedinner-cat').removeClass 'active'



	SimpleJekyllSearch
	  searchInput: document.getElementById('search-input')
	  resultsContainer: document.getElementById('results-container')
	  json: '/search.json'