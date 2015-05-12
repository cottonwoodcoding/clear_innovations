$ ->
  $(document).ready ->
    if window.location.pathname == '/gallery'
      $('.carousel').carousel()
      $(document).on 'click', '.gallery-panel', ->
        $(@).siblings('.collapse').collapse('toggle')

      $('.panel-heading').each ->
        id = $(@).attr('id').split("_")[1]
        el = $("#album_thumbs_#{id}").elastislide(minItems: 3)

      $('#image_shack_check').change ->
        if $(@).is(':checked')
          $("#image_shack_options .checkbox input").prop('checked', false)
          $('#image_shack_options').removeClass('hide')
        else
          $("#image_shack_options .checkbox input").prop('checked', false)
          $('#image_shack_options').addClass('hide')
    $(window).load ->
      $('.loading-gif').addClass('hide')
      $('#gallery_accordion').removeClass('hide')
      $('.feed-wrapper').removeClass('hide')


  $(document).on 'click', '.img-thumb', (e) ->
    e.preventDefault()
    e.stopPropagation()
    number = parseInt($(@).attr('data-id'))
    player = $(@).closest('.collapse').find('.carousel')
    player.carousel(number)
