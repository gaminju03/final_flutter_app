import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Contacto'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: CupertinoColors.systemBackground,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Ingresa tus datos:',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navTitleTextStyle,
                      ),
                    ),
                    Container(
                      height: 2.0,
                      color: CupertinoColors.lightBackgroundGray,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    CupertinoTextField(
                      prefix: Icon(
                        CupertinoIcons.person,
                        color: CupertinoColors.lightBackgroundGray,
                        size: 28.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
                      clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 0.0, color: CupertinoColors.inactiveGray),
                        ),
                      ),
                      placeholder: 'Nombre',
                    ),
                    CupertinoTextField(
                      prefix: Icon(
                        CupertinoIcons.mail,
                        color: CupertinoColors.lightBackgroundGray,
                        size: 28.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
                      clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                      obscureText: false,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 0.0, color: CupertinoColors.inactiveGray),
                        ),
                      ),
                      placeholder: 'Email',
                    ),
                    CupertinoTextField(
                      prefix: Icon(
                        CupertinoIcons.phone,
                        color: CupertinoColors.lightBackgroundGray,
                        size: 28.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
                      clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                      obscureText: false,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 0.0, color: CupertinoColors.inactiveGray),
                        ),
                      ),
                      placeholder: 'Telefono',
                    ),
                    CupertinoTextField(
                      prefix: Icon(
                        CupertinoIcons.news,
                        color: CupertinoColors.lightBackgroundGray,
                        size: 28.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
                      clearButtonMode: OverlayVisibilityMode.editing,
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                      obscureText: false,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 0.0, color: CupertinoColors.inactiveGray),
                        ),
                      ),
                      placeholder: 'Comentario',
                    ),
                    Container(
                      height: 1.0,
                      color: CupertinoColors.lightBackgroundGray,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    CupertinoButton(
                      child: Text('Ingresar'),
                      onPressed: () {},
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
