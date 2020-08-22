import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:final_flutter_app/home.dart';

class ActividadUno extends StatelessWidget {
  const ActividadUno({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Actividades'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: CupertinoColors.systemBackground,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      //height: 10.0,
                      // color: CupertinoColors.lightBackgroundGray,
                      alignment: Alignment.center,
                      //padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Titulo de la Pag',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navTitleTextStyle,
                      ),
                    ),
                    MaterialApp(
                      home: FirestoreCRUDPage(),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
