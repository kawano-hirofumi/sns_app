import 'package:flutter/material.dart';
import 'package:sns_app/pages/search/search_second.dart';
import '../pages/search/search.dart';
import '../pages/post/post.dart';

class SearchNav{
    static final searchRoutes = <String,WidgetBuilder>{
    "/" : (context) => SearchScreen(),
    "/search/second" : (context) => SearchSecond(),
  };
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static NavigatorState  _navigatorState = navigatorKey.currentState!;
  static NavigatorState get navigatorState => _navigatorState;


  static void backToMain(){
    _navigatorState.popUntil(ModalRoute.withName('/'));
  }
  static Future<void> toSearchSecondPage(BuildContext context){
    return _navigatorState.pushNamed('/search/second');
  }
}