
<!-- === MAIN Background === -->
<div class="slide story" id="slide-1" data-slide="1">
    <a href="<?php echo e(base_url()); ?>" style="position: absolute;z-index: 1000;top: 80px;left: 0px;width: 100%;">
        <img src="<?php echo e(base_url()); ?>public/images/logo.png" alt=""style="width: 150px;" class="onlyone" data-style='bounceInLeft'>
        <br>
        <span class="hotline onlyone" data-style="fadeIn" style="animation-delay: 1s;">
            0886 240 868/ 0968.251.192
        </span>
    </a>
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
        <div class="ws_images"><ul>
                <?php foreach($arr_slider as $key => $slider): ?>
                <li><img src="<?php echo e(base_url(). $slider['hinhanh']); ?>" alt="" title="$key" id="wows1_$key"/></li>
                <?php endforeach; ?>
            </ul></div>
    </div>	
    <script type="text/javascript" src="<?php echo e(base_url()); ?>public/engine1/wowslider.js"></script>
    <script type="text/javascript" src="<?php echo e(base_url()); ?>public/engine1/script.js"></script>
    <!-- End WOWSlider.com BODY section -->
</div><!-- /slide1 -->
