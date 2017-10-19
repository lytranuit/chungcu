<section class="slide story mbr-footer mbr-section mbr-section-md-padding" data-slide='7' id="contacts5-n" style="background-color: rgb(47, 47, 47); padding-top: 90px; padding-bottom: 90px;text-align: left;">
    <div class="row">
        <div class="mbr-footer-content col-xs-12 col-sm-12 col-md-6 col-lg-4">
            <strong>{{$tieu_de_muc1 or ""}}</strong>
            <div class="fr-view">
                <?php echo isset($noi_dung_muc1) ? $noi_dung_muc1 : "" ?>
            </div>
        </div>
        <div class="mbr-footer-content col-xs-12 col-sm-6 col-md-6 col-lg-4" data-form-type="formoid">
            <strong class="font-semibold">Fanpage</strong>
            <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fceladoncityhcm%2F&tabs&width=340&height=214&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="214" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
        </div>
        <div class="mbr-footer-content col-xs-12 col-sm-12 col-md-12 col-lg-4">
            <strong class="font-semibold">Đăng kí xem nhà mẫu</strong>
            <div class="form-area row">  
                <form method="POST" action="" id="formlienhe">
                    <div class="form-group col-xs-4">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Tên" required="">
                    </div>
                    <div class="form-group col-xs-4">
                        <input type="text" class="form-control" id="email" name="email" placeholder="Email" required="">
                    </div>
                    <div class="form-group col-xs-4">
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Số điện thoại" required="">

                    </div>
                    <div class="form-group col-xs-12">
                        <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="5" name="message"></textarea>
                    </div>
                    <div class="col-xs-12">
                        <button type="submit" name="submit" class="btn btn-primary">Gửi đi</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</section>
<div class="hotline-left col-sm-2 hidden-sm" style="position: fixed;
     bottom: 5px;
     left: 0px;
     z-index: 1000;
     background: whitesmoke;
     ">
    <img class="img-responsive" src="{{base_url()}}public/images/hotline-bg.png"/>
</div>
<script>
    $(document).ready(function () {
//        $("#formlienhe .form-control").tooltip();
        $.validator.setDefaults({
            debug: true,
            success: "valid"
        });
        $("#formlienhe").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                mobile: {
                    number: true
                }
            },
            errorPlacement: function (error, element) {
                element.attr("title", error.text()).tooltip();
            },
            submitHandler: function (form) {
                var data = $(form).serialize();
                $.ajax({
                    type: 'POST',
                    data: data,
                    url: '{{base_url()}}ajax/contactsubmit',
                    success: function (data) {
                        alert("Đăng kí thành công!");
                        $(form).trigger("reset");
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    }
                });
                return false;
            }
        });
    });
</script>