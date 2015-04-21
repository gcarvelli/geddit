
// controls the character counter for post title
$('document').ready(function() {
    $('#post_title').bind('change paste keyup', function() {
            var len = $(this).val().length;
            $('#title_char_count').text(len.toString() + "/300") 

            if(len >= 300) {
                $('#title_char_count').css("color", "red");
            }
            else
            {
                $('#title_char_count').css("color", "gray");
            }
        });
    });
// controls the character counter for post body
$('document').ready(function() {
    $('#post_text').bind('change paste keyup', function() {
            var len = $(this).val().length;
            $('#text_char_count').text(len.toString() + "/15000") 

            if(len >= 15000) {
                $('#text_char_count').css("color", "red");
            }
            else
            {
                $('#text_char_count').css("color", "gray");
            }
        });
    });
// activate the upvote and downvote button when clicked
$('document').ready(function() {
    $('.upvote').click(function() {
        up = $(this);
        // if it isn't active activate it
        if(up.attr('src').indexOf('up.png') > -1)
        {
            up.attr("src", "/images/general/up_active.png");
            up.closest('.post_list_item_scorediv').find('img.downvote').attr("src", "/images/general/down.png");
        }
        // otherwise deactivate it
        else
        {
            up.attr("src", "/images/general/up.png")
        }
    });
    $('.downvote').click(function() {
        down = $(this);
        // if it isn't active activate it
        if(down.attr('src').indexOf('down.png') > -1)
        {
            down.attr("src", "/images/general/down_active.png");
            down.closest('.post_list_item_scorediv').find('img.upvote').attr("src", "/images/general/up.png");
        }
        // otherwise deactivate it
        else
        {
            down.attr("src", "/images/general/down.png");
        }
    });
});