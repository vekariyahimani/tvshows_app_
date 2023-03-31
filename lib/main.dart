import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvshows_app/screen/tvshows/provider/tv_provider.dart';
import 'package:tvshows_app/screen/tvshows/view/tv_screen1.dart';
import 'package:tvshows_app/screen/tvshows/view/tv_screen2.dart';


void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => TvProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Tvscreen1(),
          'view':(context) => Tvscreen2(),
        },
      ),
    )
  );
}