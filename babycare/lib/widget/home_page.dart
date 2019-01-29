import 'package:flutter/material.dart';
import 'package:babycare/util/global_config.dart';
import 'package:babycare/widget/home_content_template.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(GlobalConfig.appName),
        centerTitle: true,
      ),
      body: new Column(
        children: homeBody(),
      ),
    );
  }

  // 首页显示内容
  homeBody() {
    var body = <Widget>[];

    // 图片内容
    body.add(new Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Image.asset(
        "images/bg.png",
        height: 200,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    ));

    // 内容
    List titles = ["喂养", "尿片", "睡眠", "身高"];
    for (var i = 0; i < titles.length; i++) {
      body.add(HomeContentTemplate(titles[i]));
    }

    return body;
  }
}
