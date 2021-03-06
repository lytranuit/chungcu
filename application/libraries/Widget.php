<?php

use Philo\Blade\Blade;

class Widget {

    private $data = array();
    protected $CI;

    function __construct() {
        $this->CI = &get_instance();
        $this->CI->load->helper(array('url', 'language', 'my'));
        ////////////////////////////////
        $views = APPPATH . "views/";
        $cache = APPPATH . "cache/";
        $this->blade = new Blade($views, $cache);
    }

    function tinnew() {
        $this->CI->load->model("tin_model");
        $this->CI->load->model("user_model");
        $this->CI->load->model("khuvuc_model");
        $this->CI->load->model("hinhanh_model");
        $per_page = 10;
        $total_posts = $this->CI->tin_model->where(array('deleted' => 0, 'active' => 1))->count_rows();
        $this->data['count_page'] = round($total_posts / $per_page);
        $this->data['arr_tin'] = $this->CI->tin_model->where(array('deleted' => 0, 'active' => 1))->order_by("id_tin", "DESC")->as_array()->paginate($per_page, $total_posts);
        foreach ($this->data['arr_tin'] as &$row) {
            $arr_hinhanh = $this->CI->tin_model->get_tin_hinhanh($row['id_tin']);
            if (count($arr_hinhanh)) {
                $hinhanh = $arr_hinhanh;
            } else {
                $hinhanh = $this->CI->hinhanh_model->where(array("default" => 1, 'deleted' => 0))->as_array()->get_all();
            }
            $author = $this->CI->user_model->where(array('id' => $row['id_user']))->as_array()->get_all();
            $khuvuc = $this->CI->khuvuc_model->where(array('id_khuvuc' => $row['id_khuvuc']))->as_array()->get_all();
            $row['hinhanh'] = $hinhanh[0]['thumb_src'];
            $row['arr_hinhanh'] = $hinhanh;
            $row['author'] = $author[0]['username'];
            $row['khuvuc'] = $khuvuc[0]['ten_khuvuc'];
            if ($row['gia'] != 0) {
                if ($row['gia'] < 1000) {
                    $row['gia'] = $row['gia'] . " triệu";
                } else {
                    if ($row['gia'] % 1000) {
                        $row['gia'] = number_format($row['gia'] / 1000, 2, ',', ".") . " tỷ";
                    } else {
                        $row['gia'] = number_format($row['gia'] / 1000) . " tỷ";
                    }
                }
            } else {
                $row['gia'] = "Thương lượng";
            }
        }
        echo $this->blade->view()->make('widget/tin-related', $this->data)->render();
    }

    function tinlienquan() {
        $this->CI->load->model("tin_model");
        $this->CI->load->model("user_model");
        $this->CI->load->model("khuvuc_model");
        $this->CI->load->model("hinhanh_model");
        $this->data['count_page'] = 0;
        $this->data['arr_tin'] = $this->CI->tin_model->where(array('deleted' => 0, 'active' => 1))->order_by("id_tin", "DESC")->limit(4)->as_array()->get_all();
        foreach ($this->data['arr_tin'] as &$row) {
            $arr_hinhanh = $this->CI->tin_model->get_tin_hinhanh($row['id_tin']);
            if (count($arr_hinhanh)) {
                $hinhanh = $arr_hinhanh;
            } else {
                $hinhanh = $this->CI->hinhanh_model->where(array("default" => 1, 'deleted' => 0))->as_array()->get_all();
            }
            $author = $this->CI->user_model->where(array('id' => $row['id_user']))->as_array()->get_all();
            $khuvuc = $this->CI->khuvuc_model->where(array('id_khuvuc' => $row['id_khuvuc']))->as_array()->get_all();
            $row['hinhanh'] = $hinhanh[0]['thumb_src'];
            $row['arr_hinhanh'] = $hinhanh;
            $row['author'] = $author[0]['username'];
            $row['khuvuc'] = $khuvuc[0]['ten_khuvuc'];
            if ($row['gia'] != 0) {
                if ($row['gia'] < 1000) {
                    $row['gia'] = $row['gia'] . " triệu";
                } else {
                    if ($row['gia'] % 1000) {
                        $row['gia'] = number_format($row['gia'] / 1000, 2, ',', ".") . " tỷ";
                    } else {
                        $row['gia'] = number_format($row['gia'] / 1000) . " tỷ";
                    }
                }
            } else {
                $row['gia'] = "Thương lượng";
            }
        }
        echo $this->blade->view()->make('widget/tin-related', $this->data)->render();
    }

    function searchtop() {
        $this->CI->load->model("khuvuc_model");
        $this->CI->load->model("huong_model");
        $this->data['khuvuc'] = $this->CI->khuvuc_model->order_by("order")->as_array()->get_all();
        $this->data['huong'] = $this->CI->huong_model->as_array()->get_all();
        echo $this->blade->view()->make('widget/search-top', $this->data)->render();
    }

    function tintucmoi() {
        $this->CI->load->model("tintuc_model");
        $this->CI->load->model("user_model");
        $this->CI->load->model("hinhanh_model");
        $this->data['arr_tin'] = $this->CI->tintuc_model->where(array('deleted' => 0, 'active' => 1))->limit(5)->as_array()->get_all();
        foreach ($this->data['arr_tin'] as &$row) {
            $arr_hinhanh = $this->CI->tintuc_model->get_tintuc_hinhanh($row['id_tintuc']);
            if (count($arr_hinhanh)) {
                $hinhanh = $arr_hinhanh;
            } else {
                $hinhanh = $this->CI->hinhanh_model->where(array("default" => 1, 'deleted' => 0))->as_array()->get_all();
            }
            $author = $this->CI->user_model->where(array('id' => $row['id_user']))->as_array()->get_all();
            $row['hinhanh'] = $hinhanh[0]['thumb_src'];
            $row['author'] = $author[0]['username'];
        }
        echo $this->blade->view()->make('widget/tintuc', $this->data)->render();
    }

    function tintucslider() {
        $this->CI->load->model("tintuc_model");
        $this->CI->load->model("user_model");
        $this->CI->load->model("hinhanh_model");
        $this->data['arr_tin'] = $this->CI->tintuc_model->where(array('deleted' => 0, 'active' => 1))->limit(5)->as_array()->get_all();
        foreach ($this->data['arr_tin'] as &$row) {
            $arr_hinhanh = $this->CI->tintuc_model->get_tintuc_hinhanh($row['id_tintuc']);
            if (count($arr_hinhanh)) {
                $hinhanh = $arr_hinhanh;
            } else {
                $hinhanh = $this->CI->hinhanh_model->where(array("default" => 1, 'deleted' => 0))->as_array()->get_all();
            }
            $author = $this->CI->user_model->where(array('id' => $row['id_user']))->as_array()->get_all();
            $row['hinhanh'] = $hinhanh[0]['bg_src'];

            $row['author'] = $author[0]['username'];
        }
        echo $this->blade->view()->make('widget/tintucslider', $this->data)->render();
    }

    function sliderhome() {
        $this->CI->load->model("slider_model");
        $this->CI->load->model("hinhanh_model");
        $arr_slider = $this->CI->slider_model->where(array('deleted' => 0))->order_by('order')->as_array()->get_all();
        foreach ($arr_slider as &$slider) {
            $hinh = $this->CI->hinhanh_model->where(array('id_hinhanh' => $slider['id_hinhanh']))->as_array()->get_all();
            $slider['hinhanh'] = $hinh[0]['slider_src'];
        }
        $this->data['arr_slider'] = $arr_slider;
//        echo "<pre>";
//        print_r($arr_slider);
//        die();
        echo $this->blade->view()->make('widget/slider', $this->data)->render();
    }

    function profile_bar() {
        $this->CI->load->library(array('ion_auth'));
        $this->CI->lang->load('auth');
        $this->data['is_admin'] = $this->CI->ion_auth->is_admin();
        echo $this->blade->view()->make('widget/profile-bar', $this->data)->render();
    }

    function khuvuc() {
        $this->CI->load->model("khuvuc_model");
        $this->data['arr_khuvuc'] = $this->CI->khuvuc_model->get_khuvuc_co_tin();
        echo $this->blade->view()->make('widget/khuvuc', $this->data)->render();
    }

    function quangcao() {
        echo $this->blade->view()->make('widget/quangcao', $this->data)->render();
    }

    function facebook() {
        echo $this->blade->view()->make('widget/facebook', $this->data)->render();
    }

    function header() {
//        echo "tran";die();
//        echo APPPATH;die();
        $this->CI->load->model("menu_model");
        $all_menu = $this->CI->menu_model->where("deleted", 0)->order_by(array('id_parent' => "ASC", 'order' => "ASC"))->as_array()->get_all();
//        array_unshift($all_menu, array('id' => 0, 'id_page' => 0, 'text' => "Trang chủ", 'id_parent' => 0));
        $this->data['menu'] = recursive_menu_html($all_menu, 0);
//        echo "<pre>";
//        print_r($this->data['menu']);
//        die();
        echo $this->blade->view()->make('widget/header', $this->data)->render();
    }

    function footer() {

        $this->CI->load->model("option_model");
        /*
         * Muc 1
         */

        $tieu_de = $this->CI->option_model->where(array('name' => "muc1f_header"))->as_array()->get();
        $noi_dung = $this->CI->option_model->where(array('name' => "muc1f_content"))->as_array()->get();
        if (!empty($tieu_de))
            $this->data['tieu_de_muc1'] = $tieu_de['content'];
        if (!empty($noi_dung))
            $this->data['noi_dung_muc1'] = $noi_dung['content'];
        echo $this->blade->view()->make('widget/footer', $this->data)->render();
    }

    function background() {
        echo $this->blade->view()->make('widget/background', $this->data)->render();
    }

    function chat() {
        echo $this->blade->view()->make('widget/chat', $this->data)->render();
    }

    function contactpopup() {
        echo $this->blade->view()->make('widget/contactpopup', $this->data)->render();
    }

    function banner() {
        $this->CI->load->model("option_model");
        $this->CI->load->model("hinhanh_model");
        $banner = $this->CI->option_model->where('name', "banner")->as_array()->get();
        if (!empty($banner)) {
            $id_img_banner = $banner['content'];
            $img_banner = $this->CI->hinhanh_model->where(array('id_hinhanh' => $id_img_banner))->as_array()->get();
            if (!empty($img_banner)) {
                $this->data['img_banner'] = $img_banner;
                echo $this->blade->view()->make('widget/banner', $this->data)->render();
            }
        }
    }

    function lienhe() {
        echo $this->blade->view()->make('widget/lienhe', $this->data)->render();
    }

    function tienich() {
        $this->CI->load->model("tienich_model");
        $this->CI->load->model("hinhanh_model");

        $tienich = $this->CI->tienich_model->where(array('deleted' => 0))->as_array()->get_all();
        foreach ($tienich as &$row) {
            $hinhanh = $this->CI->hinhanh_model->where(array('id_hinhanh' => $row['id_hinhanh'], 'deleted' => 0))->as_array()->get();
            $row['hinhanh'] = $hinhanh;
        }
        $this->data['tienich'] = $tienich;
        echo $this->blade->view()->make('widget/tienich', $this->data)->render();
    }

    function khuyenmai() {

        $this->CI->load->model("option_model");
        /*
         * Muc 1
         */
        $noi_dung = $this->CI->option_model->where(array('name' => "muckhuyenmai_content"))->as_array()->get();
        if (!empty($noi_dung)) {
            $this->data['noi_dung'] = $noi_dung['content'];
            echo $this->blade->view()->make('widget/khuyenmai', $this->data)->render();
        }
    }

}
