import 'package:flutter/material.dart';
import 'package:myapp/assets.dart';

// Custom App bar: Islamic Lectures, Islamic Movies, Hadiths

class CustomAppBar extends StatelessWidget {

  final double scrollOffset;
  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

// Scroll clean fade away of Custom App Bar

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0
      ),
      color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      // Taking scroll offset, 0 in the beginning 
      // User scrolls down on screen scroll offset will increase
      child: SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.shiaflixLogo0),
          const SizedBox(width: 12.0,),
          Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              AppBarButton(title: 'Islamic Lectures', onTap: () => print('Lectures')),
              AppBarButton(title: 'Islamic Movies', onTap: () => print('Movies')),
              AppBarButton(title: 'Hadiths', onTap: () => print('Hadiths')),
            ],
        ),
          )
      ],
     ),
    ),
  );
 }
}

class AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const AppBarButton({Key key, 
  this.title,
  this.onTap
  }) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: onTap,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white, 
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                ),
              )
            );
  }
}