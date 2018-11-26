import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MainPage extends StatefulWidget {
  final String title;

  MainPage({this.title}) : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.thumb_up),
       // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        foregroundColor: Colors.white,
        elevation: 0.0,
        tooltip: "Like Photo",
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 4.0,
          color: Colors.indigo,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.linked_camera, color: Colors.white),
                onPressed: () {},
              ),
            ],
          )),
      body: new GridView.extent(
        maxCrossAxisExtent: 330.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTitle(20),
      ),
    );
  }
}

List<Widget> _buildGridTitle(numberOfTitles) {
  List<Container> containers =
      new List<Container>.generate(numberOfTitles, (int index) {
    final imageName = 'images/image${index < 9 ? '0' : ''}${index + 1}.JPG';

    return new Container(
      child: new Image.asset(
        imageName,
        fit: BoxFit.cover,
      ),
    );
  });

  return containers;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new MainPage(
          title: "AhvazDM Gallery",
        ));
  }
}
