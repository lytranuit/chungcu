<div class="profile-sidebar">
    <!-- SIDEBAR USERPIC -->
    <div class="profile-userpic">
        <img src="{{base_url()}}public/img/testimonial-dummy1.jpg" class="img-responsive" alt="">
    </div>
    <!-- END SIDEBAR USERPIC -->
    <!-- SIDEBAR USER TITLE -->
    <div class="profile-usertitle">
        <div class="profile-usertitle-name">
            {{$_SESSION['identity']}}
        </div>
    </div>
    <!-- END SIDEBAR USER TITLE -->
    <!-- SIDEBAR BUTTONS -->
    <div class="profile-userbuttons">
        <button type="button" class="btn btn-success btn-sm">Follow</button>
        <button type="button" class="btn btn-danger btn-sm">Message</button>
    </div>
    <!-- END SIDEBAR BUTTONS -->
    <!-- SIDEBAR MENU -->
    <div class="profile-usermenu">
        <ul class="nav">
            <li>
                <a href="{{get_url_seo("member/index")}}">
                    <i class="glyphicon glyphicon-lock"></i>
                    Thông tin tài khoản 
                </a>
            </li>
            @if($is_admin)
            <li>
                <a href="{{get_url_seo("member/quanlypage")}}">
                    <i class="glyphicon glyphicon-flag"></i>
                    Page</a>
            </li>
            <li>
                <a href="{{get_url_seo("member/slider")}}">
                    <i class="glyphicon glyphicon-flag"></i>
                    Slider </a>
            </li>
            <li>
                <a href="{{get_url_seo("member/quanlymessage")}}">
                    <i class="icon icon-envelope"></i>
                    Tin nhắn </a>
            </li>
            @endif
            <li>
                <a href="{{get_url_seo("index/logout")}}">
                    <i class="glyphicon glyphicon-flag"></i>
                    Đăng xuất </a>
            </li>
        </ul>
    </div>
    <!-- END MENU -->
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".profile-usermenu a[href='{{current_url()}}']").parent().addClass("active");
    });
</script>