// Цей файл містить JavaScript-код, який використовується на сторінці `show.html.erb`.

// Ініціалізація бібліотеки jQuery.
$(document).ready(function () {

    // Показ інформації про фільм.
    var movie = $(".movie-info").data("movie");
    $("#title").text(movie.title);
    $("#year").text(movie.year);
    $("#genre").text(movie.genre.name);
    $("#director").text(movie.director.name);
    $("#actors").text(movie.actors.join(", "));
    $("#rating").text(movie.rating);
});
