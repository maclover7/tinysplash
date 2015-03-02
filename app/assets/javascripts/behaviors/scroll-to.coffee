class ScrollTo
  constructor: (element) ->
    @$trigger = $(element)
    @target = @$trigger.data().scrollTo
    @position = $(@target).offset().top
    @_bindEvents()

  _bindEvents: ->
    @$trigger.on "click", =>
      $("html, body").animate {scrollTop: @position}, 500

$ ->
  $("[data-scroll-to]").each ->
    new ScrollTo(this)
