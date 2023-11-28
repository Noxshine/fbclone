
import 'package:anti_fb/widgets/icon/IconMessageWidget.dart';
import 'package:anti_fb/widgets/icon/IconSearchWidget.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'appbar.dart';
import 'createpostbar.dart';
import 'listpost.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key, required this.coin, required this.email});

  final String coin ;
  final String email;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: HomeAppBarTitle(coin),
            centerTitle: false,
            backgroundColor: WHITE,
            floating: true,
            actions: const [
              Align(
                  alignment: Alignment.centerRight,
                  child: Row( children: [ IconSearchWidget(), IconMessageWidget() ],)
              ),
            ],
          ),

          const SliverToBoxAdapter( child: CreatePostButton()),

          SliverList( delegate: SliverChildListDelegate( [const ListPostWidget()])),

        ]
    );
  }
}








