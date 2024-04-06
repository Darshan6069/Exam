class JokesDetails {
  final String? id;
  final String? icon_url;
  final String? url;
  final String? value;
  final String? created_at;
  final String? updated_at;

  JokesDetails(
      {required this.id,
      required this.icon_url,
      required this.url,
      required this.value,
      required this.created_at,
      required this.updated_at});

  factory JokesDetails.fromJson(Map map) {
    return JokesDetails(
        id: map['id'],
        icon_url: map['icon_url'],
        url: map['url'],
        value: map['value'],
        created_at: map['created_at'],
        updated_at: map['updated_at']);
  }
}


class CatagaryList {
  final String? catagory;
  final String? Image;

  CatagaryList({required this.catagory, required this.Image});
}

List<CatagaryList> Categories = [
  CatagaryList(catagory: 'animal', Image:'https://i.chzbgr.com/full/9127182592/h6ECFC824'),
  CatagaryList(catagory: 'career', Image:'https://i.pinimg.com/736x/85/68/c0/8568c007768d94f264d66ffbb52331ac.jpg'),
  CatagaryList(catagory: 'celebrity', Image:'https://www.cinejosh.com/newsimg/newsmainimg/ananya-pandey_b_0901240741.jpg'),
  CatagaryList(catagory: 'dev', Image:'https://bestlifeonline.com/wp-content/uploads/sites/3/2024/03/best-dark-jokes.jpg?quality=82&strip=all&w=500'),
  CatagaryList(catagory: 'explicit', Image:'https://imgix.bustle.com/uploads/image/2023/6/29/fbfd0e52-23e3-4ff0-9e9b-50098f394671-insert-nose.jpg?w=414&h=414&fit=crop&crop=faces&auto=format%2Ccompress'),
  CatagaryList(catagory: 'fashion', Image:'https://www.just-style.com/wp-content/uploads/sites/27/2023/08/shutterstock_258257798.jpg'),
  CatagaryList(catagory: 'food', Image:'https://www.tasteofhome.com/wp-content/uploads/2018/02/noodledadjoke.jpg'),
  CatagaryList(catagory: 'history', Image:'https://i.redd.it/4luj0p8g13s71.jpg'),
  CatagaryList(catagory: 'money', Image:'https://walletsquirrel.com/wp-content/uploads/2021/04/Money-Jokes-for-Instagram33-705x705.jpg'),
  CatagaryList(catagory: 'music', Image:'https://i.ytimg.com/vi/cTR8zpavXvI/hqdefault.jpg'),
  CatagaryList(catagory: 'political', Image:'https://qph.cf2.quoracdn.net/main-qimg-23e83c41ee2adad7737fb4214cc2ee97-pjlq'),
  CatagaryList(catagory: 'religion', Image:'https://i.pinimg.com/236x/8e/4f/9b/8e4f9b4dcccfba4927d58da7d4371f7a.jpg'),
  CatagaryList(catagory: 'science', Image:'https://hips.hearstapps.com/hmg-prod/images/funny-science-jokes5-1652978910.jpg'),
  CatagaryList(catagory: 'sport', Image:'https://c.ndtvimg.com/2019-11/4mjs20j_virat-kohli-rishabh-pant-twitter_625x300_05_November_19.jpg'),
  CatagaryList(catagory: 'travel', Image:'https://www.boredpanda.com/blog/wp-content/uploads/2023/05/travel-jokes-cover_800.jpg'),
];


class likedJokes{
  final String? jokes;

  likedJokes({required this.jokes});
}

List<likedJokes> likesJokesList=[];
