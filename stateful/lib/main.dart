import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(home: add(

)
)
);

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);
  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  int age =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('StatefulWidget' ,),
      ),

       floatingActionButton :  FloatingActionButton(onPressed: () {
        setState(() {
          age+=1;
        });
        },child:
        Text('+'),)
      ,

      body: Padding(
        padding:EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Name' , style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize:30.0 ),),
            SizedBox(height: 10),
            Text('Luffy' , style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize:30.0 ),),
            SizedBox(height: 10),
            Text('Age' , style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize:30.0 ),
            ),
            SizedBox(height: 10.0),
            Text('$age' , style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize:30.0 ),
            ),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}
