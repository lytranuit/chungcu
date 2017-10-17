<!doctype html>
<html>
    <head lang="en">
        <?php echo $__env->make("include.head", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </head><!--/head-->

    <body class='<?php echo e(isset($template) ? $template : ""); ?>'>
        <?php echo $__env->yieldContent("content"); ?>
    </body>
</html>