var ready;
ready = function(){
    // Fade out alert messages
    $('.alert').delay(5000).fadeOut(800);

    // Give Equal height to products on products page
    $(window).load(function() {
        $('.product-layout').responsiveEqualHeightGrid();
    });

};

// turbolinks compatible document ready function
$(document).ready(ready);
$(document).on('page:load', ready);