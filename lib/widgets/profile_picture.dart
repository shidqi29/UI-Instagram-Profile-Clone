import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.orange,
              ],
            ),
            borderRadius: BorderRadius.circular(55),
          ),
        ),
        Container(
          width: 103,
          height: 103,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ],
    );
  }
}
