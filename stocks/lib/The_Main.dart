import 'package:flutter/material.dart';

class The_Main extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight;
    return Scaffold(
      body:
       Text("ALIAH AL-3AB6AN",
       style: TextStyle( 
        fontSize: 50,
        fontWeight: FontWeight.bold ,
        color: Color.fromARGB(255, 3, 35, 89),
       ),),
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: top, 
        child: buildProfileImage(),
        ),
      ],
      )
    );
  }
  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.network("https://th.bing.com/th/id/R.e13be0fa81793eb36f2e42c816ff723c?rik=ypYd9HsLeoXQ7Q&pid=ImgRaw&r=0",
    width: double.infinity,
    height: coverHeight,
    fit: BoxFit.cover,
    ),
  );
  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Color.fromARGB(255, 3, 35, 89),
    backgroundImage: NetworkImage(
    "https://th.bing.com/th/id/OIP.HMYkJjxkNwVKAiXUx-HxDQHaFj?w=263&h=197&c=7&r=0&o=5&dpr=1.5&pid=1.7",

    ),
  );
}