var postNewItem = function() {
  $('.new_item').change(function() {
    var val = $(this).val();
    var request = $.ajax({
      url: window.location.pathname + "/items",
      type: 'POST',
      data: { item: {name: $(this).val() }},
      success: function(json){
        $('table tbody').children().last().remove();
        $('table tbody').append(json.data);
        $('.item_name').off();
        editOrDeleteItem();
      }
    })
  })
};

postNewItem();

var editOrDeleteItem = function() {
  $(".item_name").change(function() {
    var id = $(this).attr("id");

    if ($(this).val() == "") {
      $.ajax({
        url: window.location.pathname + "/items/" + id,
        type: 'DELETE',
        success: function(){
          $('table tbody').find("#" + id).parent().parent().remove();
        }
      })
    } else {
      $.ajax({
        url: window.location.pathname + "/items/" + id,
        type: 'PUT',
        data:  { item: {name: $(this).val()}}
      })
    }
  })
};
