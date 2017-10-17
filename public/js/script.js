$(document).ready(function () {
    $(document).off("inview", '.onlyone').on("inview", '.onlyone', function () {
        var style = $(this).attr("data-style");
        $(this).removeClass("onlyone").addClass('animated ' + style);
    });
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
    $(document).off("click", '.bounce123').on("click", '.bounce123', function () {
        var parent = $(this).parent();
        var box = parent.prev(".show_more");
        box.removeClass("show_more");
        parent.remove();
    });
});