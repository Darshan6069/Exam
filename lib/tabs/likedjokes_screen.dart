import 'package:exam/modelclass/modelclass.dart';
import 'package:flutter/material.dart';

class LikedJokesScreen extends StatefulWidget {
  const LikedJokesScreen({super.key});

  @override
  State<LikedJokesScreen> createState() => _LikedJokesScreenState();
}

class _LikedJokesScreenState extends State<LikedJokesScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Jokes', style: TextStyle(
          fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1),),),
      body: Container(height: height,
      width: width,
        child: ListView.builder(
          itemCount: likesJokesList.length,
          itemBuilder: (context, index) {
        return
        Column(
          children: [
            ListTile(
              title:  Text(likesJokesList[index].jokes!,style: TextStyle(fontSize: 18),),
              trailing: IconButton(onPressed: (){
                setState(() {
                  likesJokesList.removeAt(index);
                });
              },icon:Icon(Icons.close,size: 20,)),
            ),
            Divider(thickness: 3,)
          ],
        );

        },),
      ),
    );
  }
}
