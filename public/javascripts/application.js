$(document).ready(function() {
    var audioSection = $('section#audio');
    $('a.html5').click(function() {

        var audio = $('<audio>', {
			 autoPlay : 'autoplay',
             controls : 'controls'
        });

        var url = $(this).attr('href');
        $('<source>').attr('src', url).appendTo(audio);
        audioSection.html(audio); 
        return false;
    });
});
