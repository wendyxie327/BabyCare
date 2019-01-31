import 'package:babycare/util/global_config.dart';
import 'package:babycare/widget/base_list_content.dart';
import 'package:flutter/material.dart';

class HomeMainContentTemplate extends StatefulWidget {
  String _title;

  HomeMainContentTemplate(this._title);

  @override
  _HomeMainContentTemplateState createState() =>
      _HomeMainContentTemplateState(_title);
}

class _HomeMainContentTemplateState extends State<HomeMainContentTemplate> {
  String _title;

  _HomeMainContentTemplateState(this._title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        child: BaseListContent(
            GlobalConfig.getModelIconPath(_title),
            _createContentWidget("刚刚",
                "测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升测试100毫升")),
      ),
    );
  }

  // 不带右侧图片的，显示内容
  _createContentWidget(String recordTime, String contentText) {
    List contents = <Widget>[];

    // 记录时间
    contents.add(new Container(
      child: new Text(
        recordTime,
        style: new TextStyle(color: GlobalConfig.getModelColor(_title)),
      ),
    ));

    // 内容
    contents.add(new Text(
      contentText,
      softWrap: true,
      style: new TextStyle(
          color: GlobalConfig.getModelColor(_title), fontSize: 18),
    ));

    return Container(
      child: Column(
        children: contents,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
      ),
      padding: EdgeInsets.all(8),
    );
  }
}
