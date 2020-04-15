import 'package:flutter/material.dart';
import 'package:wordcard/model/character.dart';
import 'package:wordcard/styleguide.dart';
class Characterdetail extends StatefulWidget {
  final Character character;
  const Characterdetail({Key key, this.character}) : super(key: key);
  @override
  _CharacterdetailState createState() => _CharacterdetailState();
}

class _CharacterdetailState extends State<Characterdetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: "back-${widget.character.name}",
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors:widget.character.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon : Icon (Icons.clear,size: 40,color: Colors.white.withOpacity(0.8),
                    ),
                      onPressed: (){
                      Navigator.pop(context);
                      },
                    )
                  ),
                  Align(alignment: Alignment.topRight,
                      child: Hero(
                          tag:"image-${widget.character.imagePath}",
                          child: Image.asset(widget.character.imagePath,height: screenHeight * 0.45,))
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                    child:Hero(
                        tag: "name-${widget.character.name}",
                        child: Material(
                            color: Colors.transparent,
                            child: Container(child: Text(widget.character.name, style: AppTheme.heading)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                    child: Text(widget.character.description,style: AppTheme.subHeading,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                    child: Text(widget.character.vocabulary[0],style: AppTheme.subHeading,),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
