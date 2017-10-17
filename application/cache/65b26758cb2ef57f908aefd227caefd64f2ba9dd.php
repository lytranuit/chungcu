<div style="padding: 10px">
    <div class="row">
        <div class="col-md-12" style="margin:20px 0px;">
            <a class="btn btn-success" href="<?php echo e(base_url()); ?>member/thempage">Thêm page</a>
        </div>
    </div>
    <table id="quanlytin" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>STT</th>
                <th>Tiêu đề</th>
                <th>SEO URL</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($arr_tin as $key=>$tin): ?>
            <tr>
                <td><?php echo e($key+1); ?></td>
                <td><?php echo e($tin->title); ?></td>
                <td><?php echo e($tin->alias); ?></td>   
                <td>
                    <a target="blank" href="<?php echo e(base_url() . $tin->alias); ?>"><i class="icon-eye-open"></i></a>
                    <a href="<?php echo e(base_url()); ?>member/editpage/<?php echo e($tin->id); ?>" class="text-info">
                        <i class="ace-icon fa fa-pencil bigger-120">
                        </i>
                    </a>
                    <a href="<?php echo e(base_url()); ?>member/removepage/<?php echo e($tin->id); ?>" class="text-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120">
                        </i>
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#quanlytin').DataTable();
    });
</script>