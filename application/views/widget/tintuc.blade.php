<div class="widget categories">
    <div class="title-news">
        <h3 class="title-hot">Tin tức mới</h3>
        <span class="span-hot"></span>
    </div>
    <div class="row">
        <div class="col-sm-12">
            @foreach($arr_tin as $tin)
            <div class="single_comments">
                <div class="media" >
                    <div class="media-body">
                        <a href="{{get_url_seo("index/tintuc",array($tin['id_tintuc'],sluggable($tin['title'])))}}"style="color: #464646;
                           font-weight: 600;">{{$tin['title']}}</a>
                        <div class="entry-meta small muted">
                            <span>By <a href="#">{{$tin['author']}}</a></span> <span class="glyphicon glyphicon-time"></span><span><a href="#" class="tin-date">{{$tin['date']}}</a></span>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>                     
</div><!--/.recent comments-->
<script>
    $(document).ready(function () {
        moment.updateLocale('en', {
            relativeTime: {
                future: "in %s",
                past: "%s trước",
                s: "giây",
                m: "1 phút",
                mm: "%d phút",
                h: "1 giờ",
                hh: "%d giờ",
                d: "1 ngày",
                dd: "%d ngày",
                M: "1 tháng",
                MM: "%d tháng",
                y: "1 năm",
                yy: "%d năm"
            }
        });
        $(".tin-date").each(function () {
            var date = $(this).html();
            var ngay = moment(date).fromNow();
            $(this).html(ngay);
        });
    })
</script>