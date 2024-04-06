import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_it/share_it.dart';

import '../apicalling/apicalling.dart';
import '../modelclass/modelclass.dart';

class DisplayJokes extends StatefulWidget {
  final String cate;
  const DisplayJokes({super.key, required this.cate});

  @override
  State<DisplayJokes> createState() => _DisplayJokesState();
}

class _DisplayJokesState extends State<DisplayJokes> {
  JokesDetails? Jokes;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isLoading= true;
    });
    ApiData().loadApiData(widget.cate).then(
          (value) {
            Jokes = value;
        setState(() {

          isLoading= false;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text('Jokes',  style: TextStyle(
          fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1),)),
      body: (isLoading==true)?Center(child: CircularProgressIndicator()):Container(height: height,width: width,
     child: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             width: 300,
             height: 300,
             decoration: BoxDecoration(
             borderRadius: BorderRadiusDirectional.circular(20),
               color: Colors.white30
             ),
             child: Column(
               children: [
                 Text(widget.cate,style: TextStyle(
             fontSize: 28,
             letterSpacing: 1,
                   fontWeight: FontWeight.bold,
                   decorationStyle: TextDecorationStyle.dotted
             )),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(Jokes!.value!,style: TextStyle(
                     fontSize: 22,
                     letterSpacing: 1
                   ),),

                 ),
               ],
             ),
           ),SizedBox(height: 20,),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white30),
                 child: IconButton(onPressed: (){
                   setState(() {
                     likesJokesList.add(likedJokes(jokes: Jokes!.value!));
                   });


                 }, icon: Icon(CupertinoIcons.heart,size: 35,)),
               ),
               SizedBox(width: 60,),
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white30),
                 child: IconButton(onPressed: (){
                   ShareIt.text(content: Jokes!.value!,androidSheetTitle:widget.cate );
                 }, icon: Icon(Icons.share,size: 35,)),
               ),
             ],),
           )
         ],
       ),
     ),
      ),
    );
  }
}
