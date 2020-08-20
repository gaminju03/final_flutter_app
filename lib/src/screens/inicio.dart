import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Inicio App '),
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
                      // color: CupertinoColors.lightBackgroundGray,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Ingresa Correo y Contraseña:',
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
                      // controller: _txtMail,
                      prefix: Icon(
                        CupertinoIcons.mail_solid,
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
                      placeholder: 'Email',
                    ),
                    CupertinoTextField(
                      prefix: Icon(
                        CupertinoIcons.padlock_solid,
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
                      placeholder: 'Password',
                    ),
                    Container(
                      height: 1.0,
                      color: CupertinoColors.lightBackgroundGray,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    CupertinoButton(
                      child: Text('Ingresar'),
                      onPressed: () => _showDialog(context),
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

  void _showDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Saludo'),
            // content: Text('Hola! $_name se encio el correo ${_txtMail.text}'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('OK'),
                isDefaultAction: true,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }
}
