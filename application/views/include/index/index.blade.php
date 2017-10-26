
<?php
echo $widget->lienhe();
echo $widget->banner();
echo $widget->chat();
echo $widget->header();
echo $widget->sliderhome();
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
            <div class="col-12 font-semibold text-center">NHỮNG LÝ DO CHỌN SỐNG TẠI CĂN HỘ CELADON CITY</div>
        </div><!-- /row -->
        <div class="row line-row">
            <div class="hr">&nbsp;</div>
        </div><!-- /row -->
        <ul class="timeline">
            <li class="onlyone"data-style='bounceInLeft'>
                <div class="timeline-image hover1">
                    <img src="{{base_url()}}public/images/24.jpg" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Celadon City - Khu rừng nhiệt đới rộng 16ha với 3 hồ sinh thái - Một Đà Lạt thơ mộng tại TPHCM</h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Khu công viên nội có diện tích rộng 16.4 ha và 3 hồ sinh thái, là một trong 3 công viên có quy mô lớn nhất TPHCM bên cạnh Công viên Tao Đàn (20ha)  &  Công viên Đầm Sen (19ha). Điều đặc biệt là khu công viên này nằm trọn trong khu dân cư Celadon City, là một tiện ích độc đáo và duy nhất, mà chưa khu dân cư nào khác tại TPHCM có được. Mật độ xây dựng toàn khu chỉ 20%.
                        </p>
                    </div>
                </div>
                <div class="line"></div>
            </li>
            <li class="timeline-inverted onlyone"data-style='bounceInRight'>
                <div class="timeline-image hover1">
                    <img class="" src="{{base_url()}}public/images/map.gif" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Celadon City - giao thông thuận tiện tới mọi điểm đến</h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Celadon City chỉ cách trung tâm thành phố 7 km và cách sân bay Tân Sơn Nhất 3 km. Vị trí rất thuận tiện, kết nối với đại lộ Đông Tây và quốc lộ 1A.
                        </p>
                        <p class="text-muted">
                            Địa chỉ: Đường Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân Phú, TP.HCM. Khi tuyến tàu điện ngầm số 2 Tham Lương - Chợ Bến Thành hoàn tất, từ Celadon City, bạn chỉ mất 10 phút để đến trung tâm quận 1. 
                        </p>
                    </div>
                </div>
                <div class="line"></div>
            </li>
            <li class="onlyone" data-style='bounceInLeft'>
                <div class="timeline-image hover1">
                    <img class="img-circle img-responsive" src="{{base_url()}}public/images/logo.png" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Celadon City - Chủ Đầu Tư Uy Tín
                        </h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Celadon City là thành quả của sự hợp tác chiến lược giữa hai tập đoàn bất động sản uy tín: Gamuda (Malaysia) & Sacomreal (Việt Nam). 
                        </p>
                    </div>
                </div>
                <div class="line"></div>
            </li>
            <li class="timeline-inverted onlyone"data-style='bounceInRight'>
                <div class="timeline-image hover1">
                    <img class="img-circle img-responsive" src="{{base_url()}}public/images/35.jpg" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Chất lượng xây dựng tốt - Celadon City đạt tiêu chuẩn của hệ thống CONQUAS 
                        </h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Hệ thống đánh giá chất lượng công trình được xây dựng và phát triển bởi Cục Quản Lý Công Trình và Xây Dựng Singapore.
                        </p>
                    </div>
                </div>
                <div class="line"></div>
            </li>
            <li class="onlyone"data-style='bounceInLeft'>
                <div class="timeline-image hover1">
                    <img class="img-circle img-responsive" src="{{base_url()}}public/images/4.jpg" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Celadon City Cuộc sống tiện nghi - đầy đủ tiện ích
                        </h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Trung tâm thương mại & giải trí AEON (Nhật Bản) - 3.51 ha - đã khai trương ngày 11/1/2014 - tập trung các thương hiệu thời trang, mỹ phẩm, nhà hàng nổi tiếng, xuất xứ từ Nhật Bản. Trường dạy ngoại ngữ ILA, dạy toán KUMON. Rạp chiếu phim CGV - Megastar. Khu vui chơi dành cho trẻ em: Tini Town...
                        </p>
                    </div>
                </div>
                <div class="line"></div>
            </li>
            <li class="timeline-inverted onlyone"data-style='bounceInRight'>
                <div class="timeline-image hover1">
                    <img class="img-circle img-responsive" src="{{base_url()}}public/images/25.jpg" alt="">
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">
                            Thiết kế đẹp, hiện đại.  Diện tích căn hộ phù hợp                   
                        </h4>
                    </div>
                    <div class="timeline-body">
                        <p class="text-muted">
                            Cẩn trọng đến từng chi tiết thiết kế, từ cảnh quan đến tiện ích hạ tầng, tối đa hóa sự tiện nghi cho cư dân và mang phong cách hiện đại đến từng căn hộ. 
                        </p>
                    </div>
                </div>
            </li>
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

            /*
             * FADE IN IMAGE SHOW MORE
             */
            $("img", $(this)).addClass("onlyone img-responsive").attr("data-style", "fadeIn");
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
