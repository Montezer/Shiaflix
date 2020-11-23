import 'package:flutter/material.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/screens/nav_screen.dart';


class Scholars extends StatelessWidget {
  final String title; 
  final List<Content> contentList;

  

//Scholars picture section

  const Scholars({Key key, this.title, this.contentList}) : super(key: key); 


  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: 
          const TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,)),
        ),
        Container(
        height: 165.0,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: contentList.length,
          itemBuilder: (BuildContext context, int index){
            final Content content = contentList[index];
            return GestureDetector(
            onTap: () => print(content.name),
            child: Stack(children: [
              Container(margin: const EdgeInsets.symmetric(horizontal: 26.0),
              height: 130.0,
              width: 130.0,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(content.imageUrl),
              fit: BoxFit.cover,

              ),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.yellow, width: 4.0),
              ),
              ),
            ],
            ),
            );
          }
         ),
        ),
      ]
    );
    
  }
}


