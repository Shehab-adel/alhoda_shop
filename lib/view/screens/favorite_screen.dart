import 'package:alhoda/view/widgets/favorite_screen/favorite_card_items.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return ListView.builder(
        itemBuilder: (buildContext, index) {
          return SizedBox(height: size.height * 0.2, child: FavoriteCardItem());
        },
        itemCount: 20);
  }
}

/*
ListView.separated(
          itemBuilder:(buildContext,index){
            return FavoriteCardItem();
          },
          separatorBuilder: (buildContext,index)=>SizedBox(height:size.height*0.01),
          itemCount: 20),
 */