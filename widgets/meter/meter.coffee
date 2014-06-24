class Dashing.Meter extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'value', (value) ->
      meter = $(@node).find(".meter")
      if value > 90
        color = "#31B404"
      else if value > 80
        color = "#3ADF00"
      else if value > 70
        color = "#64FE2E"
      else if value > 70
        color = "#82FA58"
      else if value > 60
        color = "#BCF5A9"
      else if value > 50
        color = "#F2F5A9"
      else if value > 40
        color = "#F3F781"
      else if value > 30
        color = "#F5A9A9"
      else if value > 20
        color = "#FA5858"
      else if value > 10
        color = "#B40404"
      meter.val(value).trigger('configure', fgColor: color)
      meter.val(value).trigger('change')

  ready: ->
    meter = $(@node).find(".meter")
    meter.attr("data-bgcolor", meter.css("background-color"))
    meter.attr("data-fgcolor", meter.css("color"))
    meter.knob()
