# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#movie_tag_list').tokenInput '/movies/tags.json',
    theme: 'mac'
    minChars: 2
    allowCustomEntry: true                        # to be able create new tag.
    preventDuplicates: true
    prePopulate: $('#movie_tag_list').data('load')