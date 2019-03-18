from django.db import models

class UserM(models.Model):
    username = models.CharField(max_length=80)
    password = models.CharField(max_length=255)
    phone = models.CharField(max_length=20)
    token = models.CharField(max_length=255)

class Picture(models.Model):

    shu = models.CharField(max_length=100)
    img = models.CharField(max_length=100)
    num = models.IntegerField()
    span= models.CharField(max_length=255)
    p = models.CharField(max_length=255)
class Cart(models.Model):
    user = models.ForeignKey(UserM)

    goods = models.ForeignKey(Picture)

    number = models.PositiveIntegerField()

    isselect = models.BooleanField(default=True)

class Order(models.Model):

    # 用户

    user = models.ForeignKey(UserM)

    # 创建时间

    createtime = models.DateTimeField(auto_now_add=True)

    # 更新时间

    updatetime = models.DateTimeField(auto_now=True)

    # 状态

    # -1 过期

    # 0 未付款

    # 1 已付款，待发货

    # 2 已发货，待收货

    # 3 已收货，待评价

    # 4 已评价

    status = models.IntegerField(default=0)

    # 订单号

    identifier = models.CharField(max_length=256)


class OrderGoods(models.Model):

    # 订单

    order = models.ForeignKey(Order)

    # 商品

    goods = models.ForeignKey(Picture)

    number = models.IntegerField()
