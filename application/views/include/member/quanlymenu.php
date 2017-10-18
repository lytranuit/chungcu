<div class="col-md-12">
    <div class="col-md-6">
        <button class="btn btn-success" id="add_menu">Thêm menu</button>
        <div id="menu" class="col-md-12">

        </div>
    </div>
    <div id="menu-details" class="col-md-6">
        a
    </div>
</div>
<script>
    $(document).ready(function () {
        var treeview = $("#menu").kendoTreeView({
            dragAndDrop: true,
            dataSource: [
                {text: "Furniture", expanded: true, items: [
                        {text: "Tables & Chairs"},
                        {text: "Sofas"},
                        {text: "Occasional Furniture"}
                    ]},
                {text: "Decor", items: [
                        {text: "Bed Linen"},
                        {text: "Curtains & Blinds"},
                        {text: "Carpets"}
                    ]}
            ],
        }).data("kendoTreeView");

        /*
         * EVENT
         */
        $("#add_menu").click(function () {

        });
    })
</script>