<div class="widget categories">
    <div class="title-news">
        <h3 class="title-hot" style="font-size: 14px;">Khu vực</h3>
        <span class="span-hot"></span>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <ul class="blog_category">
                <?php foreach($arr_khuvuc as $row): ?>
                <li><a href="#"><?php echo e($row['ten_khuvuc']); ?><span class="badge"><?php echo e($row['num_tin']); ?></span></a></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>                     
</div><!--/.categories-->