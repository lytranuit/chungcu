<div id="main-slider" class="no-margin ">
    <div class="carousel slide">
        <ol class="carousel-indicators">
            <?php for($i = 0; $i < count($arr_slider);$i++): ?>
            <?php if($i): ?>
            <li data-target="#main-slider" data-slide-to="<?php echo e($i); ?>"></li>
            <?php else: ?>
            <li data-target="#main-slider" data-slide-to="<?php echo e($i); ?>" class="active"></li>
            <?php endif; ?>
            <?php endfor; ?>
        </ol>
        <div class="carousel-inner">
            <?php foreach($arr_slider as $key => $slider): ?>
            <?php if($key): ?>
            <div class="item" style="background-image: url(<?php echo e(base_url(). $slider['hinhanh']); ?>);background-size: cover;
                 background-repeat: no-repeat;
                 background-position: center center;
                 background-color: #D4D4D4;">
                <div class="container">
                    <div class="row slide-margin">
                        <div class="col-sm-6">
                            <div class="carousel-content">
                                <h1 class="animation animated-item-1"><?= $slider['animate_1'] ?></h1>
                                <h2 class="animation animated-item-2"><?= $slider['animate_2'] ?></h2>
                                <h2 class="animation animated-item-3"><?= $slider['animate_3'] ?></h2>
                                <!--                                <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
            <?php else: ?>
            <div class="item active" style="background-image: url(<?php echo e(base_url(). $slider['hinhanh']); ?>);background-size: cover;
                 background-repeat: no-repeat;
                 background-position: center center;
                 background-color: #D4D4D4;">
                <div class="container">
                    <div class="row slide-margin">
                        <div class="col-sm-6">
                            <div class="carousel-content">
                                <h1 class="animation animated-item-1"><?= $slider['animate_1'] ?></h1>
                                <h2 class="animation animated-item-2"><?= $slider['animate_2'] ?></h2>
                                <h2 class="animation animated-item-3"><?= $slider['animate_3'] ?></h2>
                                <!--                                <a class="btn-slide animation animated-item-3" href="#">Read More</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
            <?php endif; ?>

            <?php endforeach; ?>
        </div><!--/.carousel-inner-->
    </div><!--/.carousel-->
    <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
        <i class="fa fa-chevron-left"></i>
    </a>
    <a class="next hidden-xs" href="#main-slider" data-slide="next">
        <i class="fa fa-chevron-right"></i>
    </a>
</div><!--/#main-slider-->
<div id="type_feature">
    <div class="circle col-md-3">
        <label>Đất nền</label>
        <img src="<?php echo e(base_url()); ?>public/img/fFTFte5nTkOpOnqLzkBWqQ_2.jpg" />
    </div>
    <div class="circle col-md-3">
        <label>Nhà phố</label>
        <img src="<?php echo e(base_url()); ?>public/img/1489808997z611221973109_e0701acf421e82826b1ba07132e755c0.jpg" />
    </div>
    <div class="circle col-md-3">
        <label>Căn hộ</label>
        <img src="<?php echo e(base_url()); ?>public/img/1491229493_0_63046441.jpg" />
    </div>
    <div class="circle col-md-3">
        <label>Biệt thự</label>
        <img src="<?php echo e(base_url()); ?>public/img/1477887933201503122549_file.393293.jpg" />
    </div>

</div>