import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modelclass/modelclass.dart';


class ApiData{
  JokesDetails? Jokes;

  Future loadApiData(String cate) async {
    final  Data = await http.get(Uri.parse('https://api.chucknorris.io/jokes/random?category=$cate'));
    print(Data);

    var d = jsonDecode(Data.body);

    Jokes = JokesDetails.fromJson(d);

    return Jokes;

  }




  Future loadJson() async {
    http.Response  res = await http.get(Uri.parse('https://api.chucknorris.io/jokes/categories'));
    print(res);
    var d = jsonDecode(res.body);
    for (var e in d){
      categoriesList.add(e);
    }
  }

}

List<String> categoriesList = [];