<div style="padding: 10px">
    
    <table id="quanly" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Tin nhắn</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($arr_tin as $key=>$tin): ?>
            <tr>
                <td><?php echo e($key+1); ?></td>
                <td><?php echo e($tin->ten); ?></td>
                <td><?php echo e($tin->email); ?></td>   
                <td><?php echo e($tin->sodt); ?></td>
                <td><?php echo e($tin->message); ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#quanly').DataTable();
    });
</script>