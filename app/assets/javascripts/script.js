$(document).on('turbolinks:load',function(){
  $('#searchform').on('ajax:success', function (e, data, status){
      console.log(data)
  })

})
