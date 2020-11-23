import 'package:flutter/material.dart';
import 'package:myapp/models/models.dart';

class LectureList extends StatelessWidget {
  final String title; 
  final List<Content> contentList;
  final bool muharram;

  const LectureList({
    Key key, 
    @required this.title, 
    @required this.contentList, 
    this.muharram = false,
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.blue,  // colour of content headings
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ),
           Container(
            height: muharram ? 500.0 : 220.0,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
            
           ),
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () => print(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: muharram ? 400.0 : 200.0,
                    width: muharram ? 300.0 : 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(content.imageUrl),
                        fit: BoxFit.cover,
                  ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}