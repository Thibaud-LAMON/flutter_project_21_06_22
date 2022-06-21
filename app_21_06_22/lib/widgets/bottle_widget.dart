import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottleWidget extends StatelessWidget {
    final Map<String, dynamic> post;

  const BottleWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
/*         PageView(
          children: items.map((item) {
            return Image.asset(item ["image"]);
          }).toList()
        ), */

        Image.asset(post ["image"], fit: BoxFit.cover,),

        Row(
            
          children: [
            Padding(padding: EdgeInsets.only(bottom: 50, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                  
                children: [
                  Text(post['title'], 
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(post['description'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 600, left: 125),
              child: IconButton(
                icon: const Icon(
                  Icons.favorite_rounded,
                  size: 64,
                  color: Colors.pink,
                ),
                onPressed: () {
                  print("Coucou les devs");
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}