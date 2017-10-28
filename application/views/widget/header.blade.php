<link rel="stylesheet" href="{{base_url()}}public/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="{{base_url()}}public/assets/dropdown/css/style.css">
<link rel="stylesheet" href="{{base_url()}}public/assets/theme/css/style.css">
<link rel="stylesheet" href="{{base_url()}}public/assets/mobirise/css/mbr-additional.css" type="text/css">
<section id="ext_menu-e">

    <nav class="navbar navbar-dropdown navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="{{base_url()}}" class="navbar-logo"><img src="{{base_url()}}public/images/local/logo-146x128.png" alt="Mobirise"></a>
                        <!--<a class="navbar-caption text-white" href="{{base_url()}}">CELADONCITY<br></a>-->
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>
                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
                        <li class="nav-item">
                            <a class="nav-link link" href="{{base_url()}}">TRANG CHỦ</a>
                        </li>
                        <?= $menu ?> 
                    </ul>
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<script src="{{base_url()}}public/js/jquery.validate.js"></script>
<script src="{{base_url()}}public/assets/smooth-scroll/smooth-scroll.js"></script>
<script src="{{base_url()}}public/assets/dropdown/js/script.min.js"></script>
<script src="{{base_url()}}public/assets/touch-swipe/jquery.touch-swipe.min.js"></script>
<script src="{{base_url()}}public/assets/viewport-checker/jquery.viewportchecker.js"></script>
<script src="{{base_url()}}public/assets/theme/js/script.js"></script>
<script src="{{base_url()}}public/js/script-header.js"></script>