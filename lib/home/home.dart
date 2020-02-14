import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../flavor/config.dart';
import '../i18n.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [
        const I18nDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: I18nDelegate.supportedLocals,
      title: 'Flutter Home',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flavored flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //App flavor
            new Text(
              'This is ${Config.helloMessage}',
            ),
            Config.helloIcon,
            //Translation
            Text(I18n.of(context).appTitle),
            Text(I18n.of(context).description(var1: "2")),
            Text(I18n.of(context).littleTest(age: 32)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        I18n.load(Locale('fr'));
                      });
                    },
                    child: Text('fr')),
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        I18n.load(Locale('en'));
                      });
                    },
                    child: Text('en')),
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        I18n.load(Locale('es'));
                      });
                    },
                    child: Text('es')),
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        I18n.load(Locale('de', 'CH'));
                      });
                    },
                    child: Text('de, CH'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
