<div style="padding: 10px">
    <div class="row">
        <div class="col-md-12" style="margin:20px 0px;">
            <a class="btn btn-success addpage" href="#">Thêm page</a>
        </div>
    </div>
    <table id="quanlytin" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tiêu đề</th>
                <th>Link</th>
                <th>Param</th>
                <th>Seo URL</th>
                <th>Template</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($arr_page as $key=>$page): ?>
            <tr>
                <td><span class="id"><?php echo e($page['id']); ?></span></td>
                <td><input class="page form-control" value="<?php echo e($page['page']); ?>" /></td>
                <td>
                    <select class="link form-control">
                        <?php foreach($link as $row): ?>
                        <?php if($row == $page['link']): ?>
                        <option value="<?php echo e($row); ?>" selected="" style="font-weight: bold;color:black;"><?php echo e($row); ?></option>
                        <?php elseif(in_array($row,$page_ava)): ?>
                        <option value="<?php echo e($row); ?>" disabled=""><?php echo e($row); ?></option>
                        <?php else: ?>
                        <option value="<?php echo e($row); ?>" style="color:black;"><?php echo e($row); ?></option>
                        <?php endif; ?>
                        <?php endforeach; ?>
                    </select>
                </td>
                <td><input href="#" class="param form-control" value="<?php echo e($page['param']); ?>"/></td>
                <td><input href="#" class="seo form-control" value="<?php echo e($page['seo_url']); ?>"/></td>
                <td>
                    <select class="template form-control" >
                        <option value="box" <?php echo e($page['template'] == "box" ? "selected" : ""); ?>>Box</option>
                        <option value="left" <?php echo e($page['template'] == "left" ? "selected" : ""); ?>>Left</option>
                        <option value="right" <?php echo e($page['template'] == "right" ? "selected" : ""); ?>>Right</option>
                        <option value="template" <?php echo e($page['template'] == "template" ? "selected" : ""); ?>>Full</option>
                        <option value="page" <?php echo e($page['template'] == "page" ? "selected" : ""); ?>>Page</option>
                    </select>
                </td>
                <td>
                    <a target="blank" href="<?php echo e(get_url_seo($page['link'])); ?>"><i class="icon-eye-open"></i></a>
                    <a href="#" class="text-info edit">
                        <i class="icon icon-edit">
                        </i>
                    </a>
                    <a href="#" class="text-danger remove">
                        <i class="icon icon-remove">
                        </i>
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<style>
    .form-control{
        padding: 5px;
        min-height: 0px;
    }
</style>
<script type="text/javascript">

    $(document).ready(function () {
        $('#quanlytin').DataTable({
            iDisplayLength: -1
        });

        $(document).on("click", '.edit', function () {
            var tr = $(this).parents("tr");
            var id = $(".id", tr).text();
            var page = $(".page", tr).val();
            var link = $(".link", tr).val();
            var param = $(".param", tr).val();
            var seo = $(".seo", tr).val();
            var template = $(".template", tr).val();
            $.ajax({
                url: '<?php echo e(base_url()); ?>ajax/editpage',
                data: {id: id, param: param, page: page, link: link, seo: seo, template: template},
                success: function () {
                    location.reload();
                }
            })
        })
        $(document).on("click", '.remove', function () {
            var tr = $(this).parents("tr");
            var id = $(".id", tr).text();
            $.ajax({
                url: '<?php echo e(base_url()); ?>ajax/removepage',
                data: {id: id},
                success: function () {
                    location.reload();
                }
            })
        })
        $(document).on("click", '.addpage', function () {
            $.ajax({
                url: '<?php echo e(base_url()); ?>ajax/rowpage',
                success: function (data) {
                    $("#quanlytin tbody").prepend(data);
                }
            })
        });
        $(document).on("click", '.add', function () {
            var tr = $(this).parents("tr");
            var page = $(".page", tr).val();
            var link = $(".link", tr).val();
            var seo = $(".seo", tr).val();
            var param = $(".param", tr).val();
            var template = $(".template", tr).val();
            $.ajax({
                url: '<?php echo e(base_url()); ?>ajax/addpage',
                data: {page: page, param: param, link: link, seo: seo, template: template},
                success: function () {
                    location.reload();
                }
            })
        });
    });
</script>