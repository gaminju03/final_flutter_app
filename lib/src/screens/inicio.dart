import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

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
                    Divider(),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/juan.jpg'),
                      radius: 100,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        '  Juan Gamiño  ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 40.0,
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
                    Divider(),
                    Column(children: [
                      ListTile(
                        title: Text('Fluter Widgets',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        subtitle: Text('Detalles de los Widgets'),
                        leading: Icon(
                          Icons.folder_open,
                          color: Colors.blue[500],
                        ),
                      ),
                      Divider(),
                    ]),
                    Column(children: [
                      ListTile(
                        title: Text('Fluter Widgets',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        subtitle: Text('Detalles de los Widgets'),
                        leading: Icon(
                          Icons.folder_open,
                          color: Colors.blue[500],
                        ),
                      ),
                      Divider(),
                    ]),
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
