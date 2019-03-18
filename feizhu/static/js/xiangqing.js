window.onload = function () {
    $('.add').click(function () {
        var number = parseInt($('.num').val()) + 1;

        $('.num').val(number)

        console.log($('.num').val())
    });
    //添加按钮点击事件,增加数量
    $('.cut').click(function () {
        if(parseInt($('.num').val()) > 1){
            var number = parseInt($('.num').val()) - 1;

            $('.num').val(number)
        }
    });
    $('.buy-btn').click(function () {
    //    获取商品的数量
        var number = $('.num').val();

        //获取商品的id
        var shopid = $('.buy-btn').attr('shopid');
    //    发起ajax请求
    //    请求的数据
        data = {
            'number':number,
            'shopid':shopid
        };

        console.log(number)
        $.get('/fz/addcart/',data,function (response) {

            if(response.status){
                alert(response.msg)
            }else {
                window.open('/fz/denglu/',target='_self')
            }
        })
    })
}
