import hashlib
import random
import os,django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "feizhu.settings")# project_name 项目名称
django.setup()
import time

from django.http import JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from django.core.cache import cache

from houduan.models import UserM, Picture, Cart, Order, OrderGoods


def shouye(request):
    token=request.session.get('token')
    users=UserM.objects.filter(token=token)
    if users.count():
        user=users.first()
        username=user.username
    else:
        username=None

    return render(request, 'shouye.html', context={'username': username})


def generate_password(password):
    sha=hashlib.sha256()
    sha.update(password.encode('utf-8'))
    return sha.hexdigest()


def generate_token():
    token=str(time.time()) + str(random.random())
    md5=hashlib.md5()
    md5.update(token.encode('utf-8'))

    return md5.hexdigest()


def zhuce(request):
    if request.method == 'GET':
        return render(request, 'zhuce.html')
    elif request.method == 'POST':
        user=UserM()
        user.username=request.POST.get('username')

        user.password=generate_password(request.POST.get('password'))
        user.phone=request.POST.get('phone')

        user.token=generate_token()
        user.save()

        response=redirect('fz:sy')

        cache.set(user.token, user.id, 60 * 60 * 24 * 3)

        request.session['token']=user.token

        return response


def logout(request):
    response=redirect('fz:sy')

    request.session.flush()

    return response


def denglu(request):
    if request.method == 'GET':
        return render(request, 'denglu.html')
    elif request.method == 'POST':

        username=request.POST.get('username')
        password=generate_password(request.POST.get('password'))

        users=UserM.objects.filter(username=username).filter(password=password)
        if users.count():

            user=users.first()
            user.token=generate_token()
            user.save()
            request.session['token']=user.token

            response=redirect('fz:sy')
            return response
        else:
            return render(request, 'denglu.html', context={'err': '用户名或密码错误'})


def cart(request):
    token=request.session.get('token')
    users=UserM.objects.filter(token=token)
    if users.count():
        user=users.first()
        username=user.username
    else:
        username=None
    # 通过token获取用户,通过用户获取到Cart对象
    user=UserM.objects.get(token=token)

    carts=Cart.objects.filter(user=user).exclude(number=0)
    return render(request, '购物车.html', {'username': username, 'carts': carts})


def xiangqing(request, pid):
    token=request.session.get('token')
    users=UserM.objects.filter(token=token)
    if users.count():
        user=users.first()
        username=user.username
    else:
        username=None

    picture=Picture.objects.get(pk=pid)
    return render(request, '详情.html', {'picture': picture, 'username': username})


def addcart(request):
    token=request.session.get('token')

    print(token)
    if token:
        # 获取商品id
        shopid=int(request.GET.get('shopid'))
        # 获取商品数量
        number=int(request.GET.get('number'))

        # 尽管在js文件中已经转成int形式了,但是通过请求得到的数据是str类型的,需要进行转换
        # shopid = request.GET.get('shopid')
        # number = request.GET.get('number')
        # print(type(shopid))
        # print(type(shopid))

        # 获取用户以及商品对象
        user=UserM.objects.get(token=token)
        goods=Picture.objects.get(pk=shopid)

        # 添加购物车
        # 需要做一次判断,购物车中是否有该商品,如果有,直接加数量,如果没有,则增加一条记录
        carts=Cart.objects.filter(user=user).filter(goods=goods)

        if carts.exists():  # 购物车中有该商品
            cart=carts.first()
            print(type(cart.number))
            print(type(number))
            cart.number+=number
            cart.save()
            return JsonResponse({'msg': '增加成功', 'status': 1})
        else:  # 购物车中没有该商品
            cart=Cart()
            cart.user=user
            cart.goods=goods
            cart.number=number

            cart.save()
        return JsonResponse({'msg': '添加成功', 'status': 1})
    else:
        # 重定向出有问题,出现了login.html的代码,原因是ajax请求用于数据,而不能做出重定向,我们可以去客户端进行重定向
        return JsonResponse({'msg': '添加失败', 'status': 0})


def goodlist(request):
    return render(request, '商品列表.html')


def aaa(request):
    return render(request, 'aaa.html')


def generate_identifier():
    temp=str(time.time()) + str(random.randrange(1000, 10000))

    return temp


def generateoder(request):
    token=request.session.get('token')

    userid=cache.get(token)

    user=UserM.objects.get(pk=userid)

    order=Order()
    order.user=user
    order.identifier=generate_identifier()
    order.save()
    print(order.identifier)
    carts=user.cart_set.filter(isselect=True)
    for cart in carts:
        orderGoods=OrderGoods()
        orderGoods.order=order
        orderGoods.goods=cart.goods
        orderGoods.number=cart.number
        orderGoods.save()

        cart.delete()

    return render(request, 'orderdetail.html',{'order':order})


def orderlist(request):
    token=request.session.get('token')

    userid=cache.get(token)

    user=UserM.objects.get(pk=userid)

    orders=user.order_set.all()

    return render(request, 'orderlist.html', context={'orders': orders})


def orderdetail(request, identifier):
    order=Order.objects.filter(identifier=identifier).first()

    return render(request, 'orderdetail.html', context={'order': order})
