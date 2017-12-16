ready = ->
  Typed.new '.element',
    strings: [
      "Developer"
      "Marketer"
      "Designer"
      'Manager'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready