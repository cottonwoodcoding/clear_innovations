$ ->
  $('.card').flip({trigger: 'hover'})

  $(document).on 'click', '.flip', ->
    card = $(@).parent().parent().siblings().find('.card')
    if $(@).hasClass('flipped')
      $(@).removeClass('flipped')
      card.flip(true)
    else
      $(@).addClass('flipped')
      card.flip(false)

  $(document).on 'click', '.more-info', ->
    card = $(@).parent().parent().siblings().find('.card')
    product_type = card.attr('id')
    $.ajax '/more_info',
      type: 'GET'
      dataType: 'html'
      data:
        product_type: product_type
      success: (data) ->
        $('.info-body').html(data)
        $('#moreInfoModal').modal 'toggle'

  $(document).on 'click', '.request', ->
    card = $(@).parent().parent().siblings().find('.card')
    type = $(@).closest('.residential')
    if type.length == 0
      film_type = 'commercial'
    else
      film_type = 'residential'
    title = card.find('.front h2').text().trim()
    $('#message').val("I would like more info on #{title} for a #{film_type} application.")
    $('#contact_modal').modal('show')

