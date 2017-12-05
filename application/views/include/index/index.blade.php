
<?php
//echo $widget->lienhe();
echo $widget->banner();
echo $widget->header();
echo $widget->sliderhome();
echo $widget->khuyenmai();
?>
<!-- === Arrows === -->
<div id="arrows">
    <div id="arrow-up" class="disabled"></div>
    <div id="arrow-down"></div>
    <div id="arrow-left" class="disabled visible-lg"></div>
    <div id="arrow-right" class="disabled visible-lg"></div>
</div><!-- /.arrows -->

<!-- === Slide 2 === -->
<div class="slide story" id="slide-2" data-slide="2">
    <div class="container">
        <div class="row title-row">
            <div class="col-12 font-semibold text-center">{{$tieu_de_muc0 or ""}}</div>
        </div><!-- /row -->
        <div class="row line-row">
            <div class="hr">&nbsp;</div>
        </div><!-- /row -->
        <div class="row subtitle-row">
            <div class="col-md-12 fr-view">
                <?php echo isset($noi_dung_muc0) ? $noi_dung_muc0 : "" ?>
            </div>
        </div><!-- /row -->
    </div>

</div><!-- /slide2 -->

<!-- === SLide 3 - Portfolio -->
<div class="slide story" id="slide-3" data-slide="3">
    <div class="row slide-hinhanh"> 
        @foreach($muc_hinhanh as $hinhanh)
        <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox hover1" href="{{base_url() . $hinhanh['img']['src']}}"><img class="thumb" src="{{base_url() . $hinhanh['img']['src']}}" alt="{{$hinhanh['img']['real_hinhanh']}}"></a></div>
        @endforeach
    </div>
</div><!-- /slide3 -->

<!-- === Slide 4 Ly do === -->
<div class="slide story" id="slide-4" data-slide="4">
    <div class="container">
        <div class="row title-row">
            <div class="col-12 font-semibold text-center">{{$tieu_de_lydo or ""}}</div>
        </div><!-- /row -->
        <div class="row line-row">
            <div class="hr">&nbsp;</div>
        </div><!-- /row -->
        <ul class="timeline">
            @foreach($arr_lydo as $key => $row)
            @if($key % 2 == 0)
            <li class="onlyone"data-style='bounceInLeft'>
                <div class="timeline-image hover1">
                    <img src="{{base_url() . $row['hinhanh']}}" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h3 class="subheading">
                            {{$row['tieu_de'] or ""}}
                        </h3>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            {{$row['noi_dung'] or ""}}
                        </p>
                    </div>
                </div>
                @if(isset($arr_lydo[$key + 1]))
                <div class="line"></div>
                @endif
            </li>
            @else
            <li class="timeline-inverted onlyone"data-style='bounceInRight'>
                <div class="timeline-image hover1">
                    <img src="{{base_url() . $row['hinhanh']}}" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h3 class="subheading">
                            {{$row['tieu_de'] or ""}}
                        </h3>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            {{$row['noi_dung'] or ""}}
                        </p>
                    </div>
                </div>
                @if(isset($arr_lydo[$key + 1]))
                <div class="line"></div>
                @endif
            </li>
            @endif
            @endforeach
        </ul>
    </div><!-- /row -->
</div><!-- /container -->
<!-- === Slide 5 Mặt bằng === -->
<div class="slide story show_more" id="slide-5" data-slide ='5'>
    <div class="container">
        <div class="row title-row">
            <div class="col-12 font-semibold text-center">{{$tieu_de_muc1 or ""}}</div>
        </div><!-- /row -->
        <div class="row line-row">
            <div class="hr">&nbsp;</div>
        </div><!-- /row -->
        <div class="row subtitle-row">
            <div class="col-md-12 fr-view">
                <?php echo isset($noi_dung_muc1) ? $noi_dung_muc1 : "" ?>
            </div>
        </div><!-- /row -->
    </div>
</div>

<!-- === Slide 6 - Tiện ichs === -->
<div class="slide story show_more" id="slide-6" data-slide="6">
    <div class="container">
        <div class="row title-row">
            <div class="col-12 font-semibold text-center">{{$tieu_de_muc2 or ""}}</div>
        </div><!-- /row -->
        <div class="row line-row">
            <div class="hr">&nbsp;</div>
        </div><!-- /row -->
        <div class="row subtitle-row"> 
            <div class="col-md-12 fr-view">
                <?php echo isset($noi_dung_muc2) ? $noi_dung_muc2 : "" ?>
            </div>
        </div><!-- /row -->
    </div>
</div><!-- /slide6-->
<?php echo $widget->tienich(); ?>
<?php echo $widget->footer(); ?>

<script>
    $(document).ready(function (e) {
        //    $('#myModal').modal('show');
        /*
         * Silder 3
         */
        /*
         * Dem so img and set width
         */
        var num_img = $(".slide-hinhanh > div").length;
        var width = 300 * (num_img + 1) / 2;
        var scceen = $(window).width();
        var left = 0;
        if (width > scceen) {
            left = (width - scceen) / 2;
        }
        $(".slide-hinhanh").css({"width": width + "px", "left": -left + "px"});
        $(".fancybox").fancybox({
            padding: 10,
            helpers: {
                overlay: {
                    locked: false
                }
            }
        });
        var images = $('#slide-3 a');
        images.hover(function (e) {
            var asta = $(this).find('img');
            $('#slide-3 img').not(asta).stop(false, false).animate(
                    {
                        opacity: .5
                    },
                    'fast',
                    'linear'
                    );
            var zoom = $('<div class="zoom"></div>');
            if ($(this).hasClass('video')) {
                zoom.addClass('video');
            }
            $(this).prepend(zoom);
        }, function (e) {
            $('#slide-3 img').stop(false, false).animate(
                    {
                        opacity: 1
                    },
                    'fast',
                    'linear'
                    );
            $('.zoom').remove();
        });
        /******************
         * = Arrows click  *
         ******************/
        var arrows = $('#arrows div');

        arrows.click(function (e) {
            e.preventDefault();

            if ($(this).hasClass('disabled'))
                return;
            var datasheet = $("#arrows").data("dataslide");
            var offset_top = false;
            var offset_left = false;


            switch ($(this).attr('id')) {
                case 'arrow-up':
                    offset_top = (datasheet - 1 == 1) ? '0px' : $('.slide[data-slide="' + (datasheet - 1) + '"]').offset().top;
                    break;
                case 'arrow-down':
                    offset_top = $('.slide[data-slide="' + (datasheet + 1) + '"]').offset().top;
                    break;
                case 'arrow-left':
                    offset_left = $('#slide-3 .row').offset().left + 452;
                    if (offset_left > 0) {
                        offset_left = '0px';
                    }
                    break;
                case 'arrow-right':
                    offset_left = $('#slide-3 .row').offset().left - 452;
                    if (offset_left < $('body').width() - $('#slide-3 .row').width()) {
                        offset_left = $('body').width() - $('#slide-3 .row').width();
                    }
                    break;
            }

            if (offset_top != false) {
                $('html,body').stop(false, false).animate({
                    scrollTop: offset_top
                }, 1500, 'easeInOutQuart');
            }

            if (offset_left != false) {
                if ($('#slide-3 .row').width() != $('body').width()) {
                    $('#slide-3 .row').stop(false, false).animate({
                        left: offset_left
                    }, 1500, 'easeInOutQuart');
                }
            }
        });
        /*
         * Scroll
         */
        var pause = 10;
        $(document).scroll(function (e) {
            delay(function () {
                var tops = [];
                $('.story').each(function (index, element) {
                    tops.push($(element).offset().top - 200);
                });
                var scroll_top = $(this).scrollTop();
                for (var i = tops.length - 1; i >= 0; i--) {
                    if (scroll_top >= tops[i]) {
                        enable_arrows(i + 1);
                        break;
                    }
                }
            },
                    pause);
        });
        $(document).scroll();
        /*
         * show more slide
         */
        $(".show_more").each(function () {
            var append = '<div style="height: 140px;"><div class="bounce123"><i class="fa fa-angle-double-down"></i></div></div>';
            var $this = $(this);
            $(append).insertAfter($this);
        });
        $(".fr-view").each(function () {
            /*
             * FADE IN IMAGE SHOW MORE
             */
            $("img", $(this)).addClass("onlyone img-responsive").attr("data-style", "fadeIn").wrap(function () {
                return "<a href='" + $(this).attr("src") + "'></a>";
            });
        });
        /*
         * Chan debugger
         */
        //    $(document).keydown(function (event) {
        //        if (event.keyCode == 123) {
        //            return false;
        //        } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) {
        //            return false;  //Prevent from ctrl+shift+i
        //        }
        //    });
        //    $(document).on("contextmenu", function (e) {
        //        e.preventDefault();
        //    });
    });

    var delay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function enable_arrows(dataslide) {
        $("#arrows").data("dataslide", dataslide);
        $('#arrows div').addClass('disabled');
        if (dataslide != 1) {
            $('#arrow-up').removeClass('disabled');
        }
        if (dataslide < $('.story').length) {
            $('#arrow-down').removeClass('disabled');
        }
        if (dataslide == 3) {
            $('#arrow-left').removeClass('disabled');
            $('#arrow-right').removeClass('disabled');
        }
    }
</script>
