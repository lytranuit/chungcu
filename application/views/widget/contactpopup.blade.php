<div class="chat-window col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading top-bar">
            <h3 class="panel-title"><span class="fa fa-comment"></span> Đăng kí xem nhà mẫu</h3>
        </div>
        <div class="panel-body">
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">Họ và Tên</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Họ và Tên">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Số điện thoai</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Số diện thoại">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Lời nhắn</label>
                    <textarea class="form-control" id="exampleInputEmail1"></textarea>
                </div>
                <div class="form-group">
                    <button class="btn btn-success">Gửi</button>
                </div>
            </form>
        </div>
    </div>
</div>

<style>
    .chat-window{
        bottom:0;
        position:fixed !important;
        right: 0px;
        margin-left:10px;
        z-index: 1000;
        font-size: 0.8rem;
    }
    .chat-window .panel{
        border-radius: 5px 5px 0 0;
        padding: 0px; 
        margin-bottom: 0px;
    }
    .chat-window .panel-body{
        padding:15px;
    }
    .top-bar {
        background: green;
        color: white;
        padding: 10px;
        position: relative;
        overflow: hidden;
        margin: 0px;
    }
</style>