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
    return new Scaffold(body: new ListView(children: _bodyContent()));
  }

  _bodyContent() {
    var bodyArr = <Widget>[];
    bodyArr.add(_headerImage());
    bodyArr.addAll(_mainContent());
    return bodyArr;
  }

  _headerImage() {
    return Stack(
      alignment: Alignment(0, 1),
      children: [
        Image.asset(
          "images/bg.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 160,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          color: GlobalConfig.primaryColor.withOpacity(0.6),
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "糖糖 6个月20天",
                style: TextStyle(color: Colors.white),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.history, color: Colors.white, ),
                  Icon(Icons.settings, color: Colors.white,)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  // 首页显示内容
  _mainContent() {
    var body = <Widget>[];
    List titles = ["喂养", "尿片", "睡眠", "身高"];
    for (var i = 0; i < titles.length; i++) {
      body.add(HomeMainContentTemplate(titles[i]));
    }

    return body;
  }
}
