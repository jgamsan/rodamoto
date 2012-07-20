$ ->
  $('#tire_width_id, #tire_profile_id, #tire_innertube_id, #tire_ic_id, #tire_speed_code_id, #tire_fr_id, #tire_tttl_id').live "change", ->
    ancho = $('select#tire_width_id').val()
    if ancho == ""
      ancho =  0
    perfil = $('select#tire_profile_id').val()
    if perfil == ""
      perfil =  0
    llanta = $('select#tire_innertube_id').val()
    if llanta == ""
      llanta =  0
    ic = $('select#tire_ic_id').val()
    if ic == ""
      ic =  0
    vel = $('select#tire_speed_code_id').val()
    if vel == ""
      vel =  0
    fr = $('select#tire_fr_id').val()
    if fr == ""
      fr =  0
    tttl = $('select#tire_tttl_id').val()
    if tttl == ""
      tttl =  0
    $.get '/update_tires_select/' + ancho + '/' + perfil + '/' + llanta + '/' + ic + '/' + vel + '/' + fr + '/' + tttl, (data)->
        $("#tiresSettings").html(data)
    return false
