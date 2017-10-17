<!DOCTYPE html>
<html lang="en">
    <head>
        <?php echo $__env->make("include.head", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </head><!--/head-->

    <body class='<?php echo e(isset($template) ? $template : ""); ?>'>
        <?php echo $__env->make("include.header", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <section>
            <div class="container">
                <div class="row">
                    <?php echo $__env->yieldContent("content"); ?>
                </div>
            </div>
        </section>
        <?php echo $__env->make("include.footer", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </body>
</html>