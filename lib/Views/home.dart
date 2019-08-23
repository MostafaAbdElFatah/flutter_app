import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Material(
        color: Colors.deepOrangeAccent,
        child: getDynamicListView(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showSnackBarMessage(context);
        },
      ),
    );
  }



  void showSnackBarMessage(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    this._scaffoldKey.currentState.showSnackBar(snackBar);
  }

  List<String> getArrayList() {
    var items = List<String>.generate(100, (index) => "item $index");
    return items;
  }

  Widget getDynamicListView() {
    var items = getArrayList();
    var listView = ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("This is Title of " + items[index]),
            subtitle: Text("This is Subtitle of " + items[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          );
        });
    return listView;
  }

  Widget getStaticListView() {
    return ListView(
      children: <Widget>[
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
        getListViewCell(),
      ],
    );
  }

  Widget getListViewCell() {
    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text("THis is Title"),
      subtitle: Text("This is Subtitle"),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {},
    );
  }

  Widget getContent() {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(30),
      alignment: Alignment.topLeft,
      color: Colors.blueAccent,
      child: getStaticListView(),
//      child: Text(
//        "Fligh with Flutter",
//        style: TextStyle(
//            fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
//      ),
    );
  }

  Widget getScrollingListView() {
    return ListView(
      children: <Widget>[
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
        getScrollingListViewContent(),
      ],
    );
  }

  Widget getScrollingListViewContent() {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Fligh with Flutter",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.deepOrange),
        ),
      ),
    );
  }

  Widget getColumn() {
    return Column(
      children: <Widget>[
        getRow(),
        Spacer(),
        getRow(),
        Spacer(),
        getRow(),
        Spacer(),
        getRow()
      ],
    );
  }

  Widget getRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "Fligh with Flutter",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        Spacer(),
        Expanded(
          child: Text(
            "Fligh with Flutter",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
        Spacer(),
        Expanded(
          child: Text(
            "Fligh with Flutter",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
