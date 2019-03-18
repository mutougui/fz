from django.conf.urls import url

from houduan import views

urlpatterns = [
    url(r'^sy/', views.shouye, name='sy'),
    url(r'^zhuce/',views.zhuce,name='zhuce'),
# 退出

    # 登录
    url(r'^denglu/$', views.denglu, name='denglu'),
    url(r'^logout/$', views.logout, name='logout'),
    url(r'^cart/$', views.cart, name='cart'),
    url(r'^xiangqing/(\d+)/$', views.xiangqing, name='xiangqing'),
    url(r'^addcart/$',views.addcart,name='addcart'),
    url(r'^goodlist/$',views.goodlist,name='goodlist'),
    url(r'^aaa/$',views.aaa,name='aaa'),
    url(r'^generateoder/$', views.generateoder, name='generateoder'),    # 生成订单
    url(r'orderlist/$', views.orderlist, name='orderlist'), # 订单列表
    url(r'^orderdetail/(?P<identifier>[\d.]+)/$', views.orderdetail, name='orderdetail'),  # 订单详情

]