import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DataView extends StatefulWidget {
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Center(
            child: ClipOval(
              child: ImageProvider(),
            ),
          ),
        ),
        title: Text("数据"),
        bottom: CustomBottomBar(),
      ),
      body: Container(
        child: Center(
          child: Text('This is Data view.'),
        ),
      ),
    );
  }
}

class FadeInImageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image:
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556685465531&di=0e3c7e532ba5b62833ab8d81db3adee9&imgtype=0&src=http%3A%2F%2Fdata.whicdn.com%2Fimages%2F48087360%2Flarge.png");
  }
}

class ImageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556685465531&di=0e3c7e532ba5b62833ab8d81db3adee9&imgtype=0&src=http%3A%2F%2Fdata.whicdn.com%2Fimages%2F48087360%2Flarge.png",
      placeholder: (ctx, url) => new CircularProgressIndicator(),
      errorWidget: (context, url, error) => new Icon(Icons.error),
    );
  }
}

class CustomBottomBar extends StatefulWidget with PreferredSizeWidget {
  final Size preferredSize = new Size(0.0, 60.0);

  @override
  State<StatefulWidget> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(this._onTextValueChanged);
  }

  void _onTextValueChanged() {
    print("text: ${controller.text}");
  }

  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                  controller: controller, maxLines: 1, style: TextStyle(decoration: TextDecoration.none), decoration: InputDecoration(fillColor: Colors.white, filled: true, hintText: "请输入")),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
