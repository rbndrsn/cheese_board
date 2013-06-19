// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
  $('.alert-success').delay(2500).fadeOut();
  $('.close').on('click', function(e){
    $(e.currentTarget.parentNode).fadeOut();
  });

  var do_filter = function(evt) {
    var stars = $('#filter_rating').val();
    var country = $('#filter_country').val();
    var milk_type = $('#filter_milktype').val();
    var texture = $('#filter_texture').val();

    var qry = [];

    if (stars > 0) qry.push("stars=" + stars);
    if (country > 0) qry.push("country=" + country);
    if (milk_type > 0) qry.push("milk_type=" + milk_type);
    if (texture > 0) qry.push("texture=" + texture);

    qry = "?" + qry.join("&");

    $.ajax({
      url: '/filter_sort' + qry,
      method: 'GET',
      dataType: 'HTML',
      success: function(data){
        $('#filtered_cheeses').html(data);
        $('.cheese-filters').on('change', do_filter);
      }
    });
  };

  $('.cheese-filters').on('change', do_filter);
});