jQuery ->
    $(window).scroll ->
        url = $('.pagination .nextLink').attr('href')
        if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
            $('.pagination').show()
            $('.pagination').text('Fetching more books...')
            $.get url, (data) ->
                $('#books').append(data)
                $('.pagination').hide()