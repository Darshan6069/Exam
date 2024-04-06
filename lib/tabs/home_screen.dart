import 'package:flutter/material.dart';

import '../apicalling/apicalling.dart';
import '../displayjokes/display_jokes_screen.dart';
import '../modelclass/modelclass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  JokesDetails? Jokes;
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isLoading = true;
    });
    ApiData().loadJson().then((value) {
      setState(() {
        isLoading = false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'Categories',
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: (isLoading == true)
          ? Center(child: CircularProgressIndicator())
          : Container(
              height: height,
              width: width,
              child: GridView.builder(
                itemCount: categoriesList.length,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DisplayJokes(cate: categoriesList[index]),));
                        },
                        child: Stack(children: [
                          Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Categories[index].Image!),
                                    fit: BoxFit.cover,
                                    opacity: .6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                    child: Center(
                                      child: Text(categoriesList[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                          ),
                        ])
                      ),
                    ],
                  );
                },
              ),
            ),
    );
  }
}
