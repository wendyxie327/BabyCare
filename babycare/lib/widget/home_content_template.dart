import 'package:flutter/material.dart';
import 'package:babycare/widget/base_list_content.dart';
import 'package:babycare/util/global_config.dart';

class HomeContentTemplate extends StatefulWidget {
  String _title;

  HomeContentTemplate(this._title);

  @override
  _HomeContentTemplateState createState() => _HomeContentTemplateState(_title);
}

class _HomeContentTemplateState extends State<HomeContentTemplate> {
  String _title;

  _HomeContentTemplateState(this._title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        child: BaseListContent(
            GlobalConfig.getModelIconPath(_title),
            createContentWidget("刚刚",
                "测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升")),
      ),
    );
  }

  // 不带右侧图片的，显示内容
  createContentWidget(String recordTime, String contentText) {
    List contents = <Widget>[];

    // 历史记录时间
    contents.add(new Text(
      recordTime,
      style: new TextStyle(
          color: GlobalConfig.getModelColor(_title), fontSize: 16),
      textAlign: TextAlign.left,

    ));

    // 历史记录内容
    contents.add(new Container(
      child: new Text(
        contentText,
        softWrap: true,
        style: new TextStyle(
            color: GlobalConfig.getModelColor(_title), fontSize: 18),
        textAlign: TextAlign.left,
      ),
    ));

    return Container(
      child: Column(children: contents, mainAxisSize: MainAxisSize.min,),
      padding: EdgeInsets.all(8),
    );
  }
}
