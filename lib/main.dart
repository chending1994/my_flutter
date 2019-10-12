import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_app/common/system_const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Widget> tabs = [
    Tab(text: '推荐'),
    Tab(text: '关注'),
    Tab(text: '官方'),
    Tab(text: '教学'),
    Tab(text: '大赛'),
    Tab(text: '专栏'),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: AppBar(
        title: _title(),
        backgroundColor: Colors.white,
        // bottom: _tabBarMenu(),
      ),
      // body: _bannerList(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: BannerList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Card(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.0),
            child: HotList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.0),
            child: CategoryList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.0),
            child: GradView(),
          ),
          // _card(),
        ],
      ),
    ));
  }

//   Widget _tabBarMenu() {
//     return TabBar(
//     isScrollable: true,
//     indicator: HomeTabUnderlineTabIndicator(
//       borderSide: BorderSide(
//         width: 2.0,
//         color: ThemeColor,
//       ),
//     ),
//     indicatorPadding: EdgeInsets.all(0),
//     unselectedLabelColor: color_99,
//     labelColor: ThemeColor,
//     indicatorColor: ThemeColor,
//     labelStyle: TextStyle(
//       fontSize: 18,
//       fontWeight: FontWeight.bold,
//     ),
//     unselectedLabelStyle: TextStyle(
//       fontSize: 16,
//       fontWeight: FontWeight.normal,
//     ),
//     tabs: tabs,
//     controller: _tabController,
//   );
// }

  Widget _title() {
    return new Center(
      child: new Text(
        '思维魔法App商城',
        style: new TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _card() {
    return new Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 18.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 12.0),
            width: 167.0,
            height: 80.0,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: new LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  const Color.fromRGBO(250, 156, 119, 1),
                  const Color.fromRGBO(249, 111, 95, 1),
                ],
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '抢30元优惠券',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '数量有限，速抢',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12.0),
            width: 167.0,
            height: 80.0,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: new LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: <Color>[
                  const Color.fromRGBO(252, 214, 87, 1),
                  const Color.fromRGBO(254, 220, 72, 1),
                ],
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '购买思维魔法会员',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '送价值¥***终身会员',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// banner图
class BannerList extends StatelessWidget {
  List bannerList = [
    'http://www.cinfo.org.cn/uploads/allimg/c180429/152500529D5610-1YO.jpg',
    'http://b-ssl.duitang.com/uploads/item/201606/24/20160624131656_GeSyP.thumb.700_0.jpeg',
    'http://d.hiphotos.baidu.com/zhidao/pic/item/a1ec08fa513d26975a1d10b757fbb2fb4216d809.jpg',
    'http://b-ssl.duitang.com/uploads/item/201606/24/20160624131656_GeSyP.thumb.700_0.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144.0,
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Swiper(
        itemCount: bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext content, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.all(new Radius.circular(10.0)),
            child: Image.network(
              bannerList[index],
              fit: BoxFit.fill,
            ),
          );
        },
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              size: 6,
              activeSize: 6,
              activeColor: Color.fromRGBO(255, 255, 255, 1),
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
            margin: EdgeInsets.only(bottom: 6)),
        onTap: (index) => print('点击了第${index + 1}个'),
      ),
    );
  }
}

// 优惠卷 会员卡
class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _cartContainer(Color.fromRGBO(250, 156, 119, 1),
              Color.fromRGBO(249, 111, 95, 1), '抢30元优惠券', '数量有限，速抢！'),
          _cartContainer(Color.fromRGBO(252, 214, 87, 1),
              Color.fromRGBO(254, 220, 72, 1), '购买思维魔法会员', '送价值¥***终身会员'),
        ],
      ),
    );
  }

  _cartContainer(
      Color colorStart, Color colorEnd, String mainTitle, String subTitle) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0),
      width: 167.0,
      height: 80.0,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: new LinearGradient(
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          colors: <Color>[
            colorStart,
            colorEnd,
            // const Color.fromRGBO(250,156,119,1),
            // const Color.fromRGBO(249,111,95,1),
          ],
        ),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              mainTitle,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            child: Text(
              subTitle,
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
        ],
      ),
    );
  }
}

// 热门套装
class HotList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18.0, right: 18.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              '热门套装',
              style: new TextStyle(
                color: Color.fromRGBO(22, 22, 22, 1),
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            child: Text(
              '1000个家长都这样搭配',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontSize: 12.0),
            ),
          ),
          Container(
            height: 190.0,
            margin: EdgeInsets.only(top: 20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _hotProduct(
                    'http://www.cinfo.org.cn/uploads/allimg/c180429/152500529D5610-1YO.jpg',
                    '2019年新品思维语言/数学产品上市/新品思维语言/新品思维语言/',
                    '送「思维魔法」终身会员送「思维魔法」终身会员'),
                _hotProduct(
                    'http://b-ssl.duitang.com/uploads/item/201606/24/20160624131656_GeSyP.thumb.700_0.jpeg',
                    '年号',
                    '送「思维魔法」终身会员送「思维魔法」终身会员'),
                _hotProduct(
                    'http://www.cinfo.org.cn/uploads/allimg/c180429/152500529D5610-1YO.jpg',
                    '2019年新品思维语言/数学产品上市',
                    '送「思维魔法」终身会员'),
                _hotProduct(
                    'http://b-ssl.duitang.com/uploads/item/201606/24/20160624131656_GeSyP.thumb.700_0.jpeg',
                    '年号',
                    'nihao'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _hotProduct(String imgUrl, String name, String subName) {
    return new Container(
      width: 242.0,
      margin: EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 113.0,
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              width: 242.0,
              height: 113.0,
            ),
          ),
          Container(
            height: 77.0,
            padding: EdgeInsets.only(left: 10.0),
            child: new Stack(
              children: <Widget>[
                Container(
                  width: 242.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 160.0,
                        child: Text(
                          name,
                          style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        width: 160.0,
                        child: Text(
                          subName,
                          style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  top: 25.0,
                  child: Container(
                    width: 66.0,
                    height: 27.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 199, 65, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.0),
                        topLeft: Radius.circular(100.0),
                      ),
                    ),
                    child: Text(
                      '¥345.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 商品分类列表
class CategoryList extends StatelessWidget {
  void handle_drop() {
    print('1111222');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.0, right: 18.0),
      child: new Container(
        child: new Column(
          children: <Widget>[
            Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '逻辑狗',
                            style: new TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '1000个家长都这样搭配',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: new GestureDetector(
                        onTap: () {
                          handle_drop();
                        },
                        child: Image.asset(
                          'images/common/more_icon.png',
                          height: 18.0,
                          width: 18.0,
                        )),
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

// 网格布局
class GradView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}