import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCRUDPage extends StatefulWidget {
  @override
  FirestoreCRUDPageState createState() {
    return FirestoreCRUDPageState();
  }
}

class FirestoreCRUDPageState extends State<FirestoreCRUDPage> {
  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;

  Card buildItem(DocumentSnapshot doc) {
    return Card(
      color: CupertinoColors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Actividad: ${doc.data['name']}',
            ),
            Text(
              'Estado: ${doc.data['todo']}',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => updateData(doc),
                  child: Text('Actualizar Estado',
                      style: TextStyle(color: CupertinoColors.white)),
                  color: CupertinoColors.activeGreen,
                ),
                Divider(),
                FlatButton(
                  onPressed: () => deleteData(doc),
                  child: Text('Eliminar',
                      style: TextStyle(color: CupertinoColors.white)),
                  color: CupertinoColors.systemBlue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Actividad a realizar',
        fillColor: CupertinoColors.white,
        filled: true,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Por Favor Ingrese su actividad';
        }
      },
      onSaved: (value) => name = value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      child: Center(
        child: Scaffold(
          body: ListView(
            padding: EdgeInsets.all(55),
            children: <Widget>[
              Form(
                key: _formKey,
                child: buildTextFormField(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: createData,
                    child: Text('Crear',
                        style: TextStyle(color: CupertinoColors.white)),
                    color: CupertinoColors.activeBlue,
                  ),
                  RaisedButton(
                    onPressed: id != null ? readData : null,
                    child: Text('Leer'),
                    color: CupertinoColors.inactiveGray,
                  ),
                ],
              ),
              StreamBuilder<QuerySnapshot>(
                stream: db.collection('CRUD').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                        children: snapshot.data.documents
                            .map((doc) => buildItem(doc))
                            .toList());
                  } else {
                    return SizedBox();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void createData() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DocumentReference ref = await db
          .collection('CRUD')
          .add({'name': '$name ', 'todo': randomTodo()});
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }

  void readData() async {
    DocumentSnapshot snapshot = await db.collection('CRUD').document(id).get();
    print(snapshot.data['name']);
  }

  void updateData(DocumentSnapshot doc) async {
    await db
        .collection('CRUD')
        .document(doc.documentID)
        .updateData({'todo': 'En Proceso'});
  }

  void deleteData(DocumentSnapshot doc) async {
    await db.collection('CRUD').document(doc.documentID).delete();
    setState(() => id = null);
  }

  String randomTodo() {
    final randomNumber = Random().nextInt(4);
    String todo;
    switch (randomNumber) {
      case 1:
        todo = 'Falta';
        break;
      case 2:
        todo = 'Continual';
        break;
      case 3:
        todo = 'Implementar';
        break;
      case 4:
        todo = 'Corregir ';
        break;
    }
    return todo;
  }
}
