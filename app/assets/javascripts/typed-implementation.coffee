ready = ->
  options = {
    strings:[
      'this website is a built as a case study for a tutorial'
      'this is a new phrase',
      'and this is another new phrase',
      'have a good day with this tutorial !'
    ],
    typeSpeed: 40
  }
  typed = new Typed '.element', options
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready