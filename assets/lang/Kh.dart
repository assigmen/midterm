class Kh {
  Kh({
      this.login, 
      this.welcome, 
      this.username, 
      this.password, 
      this.createAccount, 
      this.logout, 
      this.myPosts, 
      this.testPostNews, 
      this.home, 
      this.news, 
      this.account, 
      this.create,});

  Kh.fromJson(dynamic json) {
    login = json['login'];
    welcome = json['welcome'];
    username = json['username'];
    password = json['password'];
    createAccount = json['create_account'];
    logout = json['logout'];
    myPosts = json['my_posts'];
    testPostNews = json['test_post_news'];
    home = json['home'];
    news = json['news'];
    account = json['account'];
    create = json['create'];
  }
  String? login;
  String? welcome;
  String? username;
  String? password;
  String? createAccount;
  String? logout;
  String? myPosts;
  String? testPostNews;
  String? home;
  String? news;
  String? account;
  String? create;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = login;
    map['welcome'] = welcome;
    map['username'] = username;
    map['password'] = password;
    map['create_account'] = createAccount;
    map['logout'] = logout;
    map['my_posts'] = myPosts;
    map['test_post_news'] = testPostNews;
    map['home'] = home;
    map['news'] = news;
    map['account'] = account;
    map['create'] = create;
    return map;
  }

}