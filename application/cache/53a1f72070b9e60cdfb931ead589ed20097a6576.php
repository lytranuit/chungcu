<div class="row equal">
    <?php foreach($arr_tin as $row): ?>
    <div class="col-md-6">
        <div class="tin-show tin-show-grid wow fadeInDown" data-id="<?php echo e($row['id_tin']); ?>" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="media">
                <div class="no-margin pull-left jumbotron" style="margin-right: 10px;padding: 0;margin-bottom: 0;">
                    <a href="<?php echo e(base_url() . $row['hinhanh']); ?>" class="swipebox-<?php echo e($row['id_tin']); ?>"><img class="media-object" src="<?php echo e(base_url() . $row['hinhanh']); ?>" alt="" width="125px"></a>
                    <div class="jumbotron-overlay-down"><span class="glyphicon glyphicon-zoom-in" style="color:white;margin: 5px 35px;cursor: pointer;"></span></div>
                    <?php foreach($row['arr_hinhanh'] as $key => $hinh): ?>
                    <?php if($key): ?>
                    <a href="<?php echo e(base_url() . $hinh['bg_src']); ?>" class="swipebox-<?php echo e($row['id_tin']); ?>" style="display: none;"><img class="media-object" src="<?php echo e(base_url() .  $hinh['bg_src']); ?>" alt="" width="125px"></a>
                    <?php endif; ?>
                    <?php endforeach; ?>
                </div>
                <div class="media-body">
                    <div class="row">
                        <a href="<?php echo e(get_url_seo("index/tin",array($row['id_tin'],$row['alias']))); ?>">
                            <span class="tin-title col-xs-12"><?php echo e($row['title']); ?></span>
                        </a>
                        <span class="tin-dientich col-xs-12" style="color: gray;">Diện tích : <?php echo e(number_format($row['dientich'])); ?> m2</span>
                        <span class="tin-quan col-xs-12"><?php echo e($row['khuvuc']); ?></span>
                    </div>
                </div>
            </div><!--/.media -->
            <div class="row">
                <p class="col-xs-12 text-center tin-gia" style="">Giá : <?php echo e($row['gia']); ?> VNĐ</p>
            </div>
        </div>

    </div>
    <?php endforeach; ?>
</div><!--/.row-->
<nav id="pagination" class="col-xs-12 text-center">

</nav>
<script src="<?php echo e(base_url()); ?>public/js/jquery.bootpag.min.js"></script>
<script>
$(document).ready(function () {
    var total = "<?php echo e($count_page); ?>";
    $('#pagination').bootpag({
        total: total,
        page: 1,
        maxVisible: 5,
        leaps: true,
        firstLastUse: true,
        first: '←',
        last: '→',
        wrapClass: 'pagination',
        activeClass: 'active',
        disabledClass: 'disabled',
        nextClass: 'next',
        prevClass: 'prev',
        lastClass: 'last',
        firstClass: 'first'
    }).on("page", function (event, num) {

        $.ajax({
            type: 'GET',
            data: {page: num},
            url: '<?php echo e(base_url()); ?>ajax/get_tin',
            beforeSend: function (xhr) {
                $(".equal").fadeOut(1000);
            },
            success: function (data) {
                $(".equal").html(data).fadeIn(1000);
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    });
})

</script>