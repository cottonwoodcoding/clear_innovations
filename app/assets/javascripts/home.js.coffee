$ ->
  $('.about-icon').on 'mouseenter', ->
    $(@).addClass('hide')
    $(@).siblings('.about-text').removeClass('hide').hide().fadeIn('slow')

  $('.about-text').on 'mouseleave', ->
    $(@).addClass('hide')
    $(@).siblings('.about-icon').removeClass('hide').hide().fadeIn('slow')

  $('.scroll-icon').on 'click', ->
    $('html, body').animate { scrollTop: $('#icons').offset().top }, 2000

  $('.scroll-to-table').on 'click', ->
    $('html, body').animate { scrollTop: $('#product').offset().top }, 1000

  $('.scroll-to-difference').on 'click', ->
    $('html, body').animate { scrollTop: $('.footer-section').offset().top }, 2000

  $('.scroll-top').on 'click', ->
    $('html, body').animate { scrollTop: $('.navbar').offset().top }, 1000

  $(document).ready ->
    if window.location.pathname == '/'
      distance = $('#icons').offset().top
      table_distance = $('#product').offset().top
      $window = $(window)
      $window.scroll ->
        if $window.scrollTop() >= distance
          $('.scroll-to-table').removeClass('hide')
        else
          $('.scroll-to-table').addClass('hide')
        if $window.scrollTop() >= table_distance
          $('.scroll-to-difference').removeClass('hide')
        else
          $('.scroll-to-difference').addClass('hide')
