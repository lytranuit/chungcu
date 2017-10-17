<tr>
    <td><span class="id"></span></td>
    <td><input class="page form-control" value="" /></td>
    <td>
        <select class="link form-control">
            <?php foreach($link as $row): ?>
            <?php if(in_array($row,$page_ava)): ?>
            <option value="<?php echo e($row); ?>" disabled=""><?php echo e($row); ?></option>
            <?php else: ?>
            <option value="<?php echo e($row); ?>" style="color:black;"><?php echo e($row); ?></option>
            <?php endif; ?>
            <?php endforeach; ?>
        </select>
    </td>
    <td><input href="#" class="param form-control" value=""/></td>
    <td><input href="#" class="seo form-control" value=""/></td>
    <td>
        <select class="template form-control" >
            <option value="box">Box</option>
            <option value="left">Left</option>
            <option value="right">Right</option>
            <option value="template">Full</option>
        </select>
    </td>
    <td>
        <button class="btn btn-xs btn-success add">
            <i class="ace-icon glyphicon glyphicon-plus bigger-120">
            </i>
        </button>
    </td>
</tr>