window.onload=function () {
function accounts() {
        var sum = 0;

        $('.goods').each(function () {
            var result = $(this).find('.goodsbox');

            if(result){
                var num = parseInt($(this).find('.bottom').html());

                var pri = parseInt($(this).find('.goodprice').html());

                sum += num * pri
            }
        });

        $('.money .ab').html(sum + '元')
    }
accounts()

}