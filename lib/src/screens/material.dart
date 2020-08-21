import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Material'),
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
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Container(
                              child: Text('Fluter Widgets',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            trailing: Icon(CupertinoIcons.right_chevron),
                            onTap: () {
                              Navigator.pushNamed(context, '/actividaduno');
                            },
                            subtitle: Text('Detalles de los Widgets'),
                            leading: Icon(
                              Icons.folder_open,
                              color: Colors.blue[500],
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Container(
                              child: Text('Tareas',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            trailing: Icon(CupertinoIcons.right_chevron),
                            onTap: () {
                              Navigator.pushNamed(context, '/tareas');
                            },
                            subtitle: Text('Lista de Tareas'),
                            leading: Icon(
                              Icons.note_add,
                              color: Colors.blue[500],
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Container(
                              child: Text('Docuemntos',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            trailing: Icon(CupertinoIcons.right_chevron),
                            onTap: () {
                              Navigator.pushNamed(context, '/documentos');
                            },
                            subtitle: Text('Material de apoyo'),
                            leading: Icon(
                              Icons.note,
                              color: Colors.blue[500],
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Container(
                              child: Text('Lista',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                            ),
                            trailing: Icon(CupertinoIcons.right_chevron),
                            onTap: () {
                              Navigator.pushNamed(context, '/lista');
                            },
                            subtitle: Text('Lista de alumnos'),
                            leading: Icon(
                              Icons.list,
                              color: Colors.blue[500],
                            ),
                          ),
                        ],
                      ),
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
