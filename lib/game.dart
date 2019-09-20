import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("遊戲世界👾"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello Wolrd"),
            RaisedButton(
              onPressed: () => Navigator.pop(context, "我是返回值"),
              child: Text("返回"),
            )
          ],
        ),
      ),
    );
  }
}
