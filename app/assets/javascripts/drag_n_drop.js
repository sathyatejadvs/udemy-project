// drag_n_drop

$(document).ready(function() {

  $("#sortables").sortable({
  	update: function() {
  		Rails.ajax({
  			url: $(this).sortable("serialize"),
  		});
  	}
  });
  
});