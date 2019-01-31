import 'package:babycare/util/global_config.dart';
import 'package:babycare/widget/home_content_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text(GlobalConfig.appName),
//          centerTitle: true,
//        ),
        body: new NestedScrollView(
          headerSliverBuilder: _sliverAppBarBuilder,
          body: new ListView(
            children: homeBody(),
          ),
        ));
  }

  List<Widget> _sliverAppBarBuilder(
      BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        centerTitle: true,
        //标题居中
        expandedHeight: 200.0,
        //展开高度200
        floating: false,
        //不随着滑动隐藏标题
        pinned: true,

        //固定在顶部
        flexibleSpace: FlexibleSpaceBar(
            title: Text("糖糖 6月12天", style: TextStyle(
              fontSize: 16,
            ),),
          background: Image.asset(
            "images/bg.png",
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    ];
  }

  // 首页显示内容
  homeBody() {
    var body = <Widget>[];
    // 内容
    List titles = ["喂养", "尿片", "睡眠", "身高"];
    for (var i = 0; i < titles.length; i++) {
      body.add(HomeContentTemplate(titles[i]));
    }

    return body;
  }
}
