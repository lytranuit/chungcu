<?php $__env->startSection("title"); ?>
<?php echo e($title); ?> - @parent
<?php $__env->stopSection(); ?>
<?php $__env->startSection("content"); ?>
<?php echo $__env->make("include.$content", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection("right-side"); ?>
<?php echo $__env->make("include.sidebar-right", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection("left-side"); ?>
<?php echo $__env->make("include.sidebar-left", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make("layouts.$template", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>