
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