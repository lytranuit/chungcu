<div class="title-news">
    <h2 class="title-hot">Bất động sản</h2>
    <span class="span-hot"></span>
</div>
<div class="row">
    <?php foreach($arr_tin as $tin): ?>
    <div class="box-list-po col-lg-4 col-md-4 col-sm-6 col-xs-12" data-id="<?php echo e($tin['id_tin']); ?>">
        <div class="box-item">
            <div class="border-list">
                <div class="jumbotron" style="padding: 0;border-radius: 0;margin: 0;">
                    <?php foreach($tin['arr_hinhanh'] as $key => $hinh): ?>
                    <?php if($key): ?>
                    <a href="<?php echo e(base_url() . $hinh['bg_src']); ?>" class="swipebox-<?php echo e($tin['id_tin']); ?>" style="display: none;"><img class="" style="width: 100%; height: 200px;" src="<?php echo e(base_url() . $hinh['bg_src']); ?>" alt=""></a>
                    <?php else: ?>
                    <a href="<?php echo e(base_url() . $hinh['bg_src']); ?>" class="swipebox-<?php echo e($tin['id_tin']); ?>"><img class="" style="width: 100%; height: 130px;"src="<?php echo e(base_url() . $hinh['thumb_src']); ?>"></a>
                    <?php endif; ?>
                    <?php endforeach; ?>
                    <div class="jumbotron-overlay-down background-opacity"><span class="glyphicon glyphicon-zoom-in" style="font-size:1.5em;color:white;cursor: pointer;position: absolute;top: 45%;left: 45%;margin: 0;padding: 0;overflow: inherit;"></span></div>
                </div>
                <a href="<?php echo e(get_url_seo("index/tin",array($tin['id_tin'],$tin['alias']))); ?>"><p><?php echo e($tin['title']); ?></p></a>
                <span><?php echo e(strip_tags($tin['content'])); ?></span>
                <div class="address2">
                    <span class="glyphicon glyphicon-map-marker pull-left"></span>
                    <span class="pull-right"><?php echo e($tin['khuvuc']); ?></span>
                </div>
                <div class="bottom-dn">
                    <span>Giá bán</span><label><b><?php echo e($tin['gia']); ?></b></label>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
</div>