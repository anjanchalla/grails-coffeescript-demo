(function() {
  jQuery(function() {
    return $(window).scroll(function() {
      var url;
      url = $('.pagination .nextLink').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').show();
        $('.pagination').text('Fetching more books...');
        return $.get(url, function(data) {
          $('#books').append(data);
          return $('.pagination').hide();
        });
      }
    });
  });
}).call(this);
