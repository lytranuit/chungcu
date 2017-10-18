<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" type="image/x-icon" href="<?= base_url() ?>public/images/favicon.ico">
<title>
    <?php $__env->startSection("title"); ?> 
    Celadon City
    <?php echo $__env->yieldSection(); ?>
</title>

<!-- core CSS -->
<?php foreach($stylesheet_tag as $url): ?>
<link href="<?php echo e($url); ?>" rel="stylesheet">
<?php endforeach; ?>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->      
<?php foreach($javascript_tag as $url): ?>
<script src="<?php echo e($url); ?>"></script>
<?php endforeach; ?>