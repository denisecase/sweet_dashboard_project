class Dashing.Clock extends Dashing.Widget

  ready: ->
    setInterval(@startTime, 500)
    

  startTime: =>
    today = new Date()

    h = today.getHours()
    m = today.getMinutes()
    s = today.getSeconds()
    m = @formatTime(m)
    s = @formatTime(s)
    @set('time', h + ":" + m + ":" + s)
    @set('date', today.toDateString())
    @set('dashing_link', 'Click to go to dashing.io')

  formatTime: (i) ->
    if i < 10 then "0" + i else i
    
  onData: (data) ->
      $('date').click (e) ->
           window.open('http://dashing.io', '_blank')