import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',
      home: TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  TODOAPP({Key? key}) : super(key: key);

  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value = '123';
  var listTODO = [''];
  addTODO(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addTODO(value);
          }),
      body: 
        ListView.builder(
            itemCount: listTODO.length,
            itemBuilder: (context, index) {
              return index == 0? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField( onChanged: (val){
                    setState(() {
                      value = val;
                    });
                  }
                  ),
                ),
                 
              );
            })
      ]),);
    );
  }
}
