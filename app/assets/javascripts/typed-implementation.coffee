ready = ->
  Typed.new '.element',
    strings: [
      'Product Manager'
      "It's my goal to ensure that anyone with a passion for coding can become a true programming artisan."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready