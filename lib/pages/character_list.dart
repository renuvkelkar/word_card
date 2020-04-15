import 'package:flutter/material.dart';
import 'package:wordcard/model/character.dart';
import 'package:wordcard/widgets/characterWidget.dart';

import '../styleguide.dart';
class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  PageController _pageController;
  int currentPage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 1,
      keepPage: false,
      initialPage: currentPage,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text("Animal Kingdom",style: AppTheme.display1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text("Friends",style: AppTheme.display2),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    for (var i = 0; i<characters.length; i++)
                    CharacterWidget(character: characters[i], pageController: _pageController, currentPage: i),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

