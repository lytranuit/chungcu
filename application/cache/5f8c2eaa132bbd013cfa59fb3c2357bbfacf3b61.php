<?php $__env->startSection("title"); ?>
Website @parent
<?php $__env->stopSection(); ?>
<?php $__env->startSection("content"); ?>
<section id="error" class="container text-center">
    <h1>404, Page not found</h1>
    <p>The Page you are looking for doesn't exist or an other error occurred.</p>
    <a class="btn btn-primary" href="<?php echo e(base_url()); ?>">GO BACK TO THE HOMEPAGE</a>
</section><!--/#error-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.template", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>