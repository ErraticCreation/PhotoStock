var ready;
ready = function(){
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' } );
  $('.rated').raty( { path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  } );
}

// turbolinks compatible document ready function which still functions upon page refresh
$(document).ready(ready);
$(document).on('page:load', ready);