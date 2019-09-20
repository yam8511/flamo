import 'package:flutter/material.dart';
import 'package:flamo/game.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var _token = '';
  final IconData newGame = Icons.add_box;
  final IconData joinGame = Icons.assistant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '請選擇要「建立遊戲」或是「加入遊戲」',
            ),
            Text(
              '$_token',
              style: Theme.of(context).textTheme.display1,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  tooltip: "建立遊戲",
                  icon: Icon(newGame),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NewRoute();
                        },
                        fullscreenDialog: false,
                      )),
                ),
                IconButton(
                  tooltip: "加入遊戲",
                  icon: Icon(joinGame),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NewRoute();
                        },
                        fullscreenDialog: false,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
