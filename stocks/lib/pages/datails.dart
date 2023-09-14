import 'package:flutter/material.dart';
import 'package:stocks/Wew_Page.dart';

class details extends StatelessWidget {
  details({Key? key, required this.i}) : super(key: key);

  final Ashm i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('~ تفاصييييل ~')),
          backgroundColor: Color.fromARGB(255, 3, 35, 89),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "${i.stock}",
                scale: 2,
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "شراء السهم",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700]))
          ],
        ));
  }
}
// class Details {
//   String img;

//   Details({
//     required this.img
//   });
// }