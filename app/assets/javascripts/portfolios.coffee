ready = undefined
set_positions = undefined

set_positions = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return
#ready happens when page loads
ready = ->
  set_positions()
  $('.sortable').sortable()
  # happens when someone clicks and drags on a portfolio items
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    # when sort update occurs
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    # $.ajax communicates with the rails db  
    $.ajax
    # PUT updates a value in the database
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return

$(document).ready ready