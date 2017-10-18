$(document).ready(function () {
    $(".dropdown-toggle").dblclick(function () {
        var href = $(this).attr("href");
        if (href != "" && href) {
            window.location = href;
        }
    });
    $(".dropdown-toggle").click(function () {
        $(this).trigger("dblclick");
    });
    $(".dropdown").on({
        mouseenter: function () {
            $(".dropdown-toggle", $(this)).attr("aria-expanded", true);
            $(this).addClass("open");
        },
        mouseleave: function () {
            $(".dropdown-toggle", $(this)).attr("aria-expanded", false);
            $(this).removeClass("open");
        }
    });
});