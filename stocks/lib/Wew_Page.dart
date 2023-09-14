import 'package:flutter/material.dart';
import 'package:stocks/The_Main.dart';
import 'package:stocks/pages/datails.dart';

class Wew extends StatelessWidget {
  Wew({super.key});
  var Companies = [
    Ashm(CompanyName: "SUBOL",
   number: "%18.1+",
    image: "assets/IMG_7014.jpg",
    stock: "assets/subol.png"),
    Ashm(CompanyName: "AGILITY",
  number: "%06.1+",
  image: "assets/IMG_7015.png",
  stock: "assets/AGILITY.png"),
   Ashm(CompanyName: "KFH",
   number: "%81.0+",
    image: "assets/kfh.png",
    stock: "assets/KFHl.png"),
    Ashm(CompanyName: "ZAIN",
   number: "%0.20+",
   image: "assets/zain.webp",
   stock: "assets/zain.png"),
  Ashm(CompanyName: "APPLE",
   number: "%19.1-", 
    image: "assets/R.jpg",
    stock: "assets/APPLE.png"),
  Ashm(CompanyName: "X-cite AL-GHANIM", 
  number: "%17.2+",
   image: "assets/xcite-kuwait.jpg",
   stock: "assets/ALGHANIM.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:GestureDetector(
          onTap: (){
          Navigator.push 
          (context, MaterialPageRoute
          (builder: (context) => The_Main()
          )
          );
          },
          child:Icon(Icons.person_2_rounded), 
        ),
      
        title: Center(
  child: Text("!!أسهم أفضل الشركات", 
  style: TextStyle( 
  color: Color.fromARGB(255, 97, 136, 204), 
  fontSize: 30,
  fontWeight: FontWeight.bold,
      ),
      )
      ),
      backgroundColor:
  Color.fromARGB(255, 3, 35, 89),
      ),
      body: 
          ListView.separated(
         itemCount: Companies.length,
         itemBuilder: (context, index) {
         return InkWell(
          onTap: () {
            Navigator.push(context,
             MaterialPageRoute(builder:
              (context)=>details(i: Companies[index])));
          },
           child: ListTile(
           leading: Image.network(Companies[index].image,scale: 2,),
                 title: Text(Companies[index].CompanyName),
                trailing: Text("${Companies[index].number}"),
                  ),
         );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 25,);
              },
            ),
        
      
    );
  }
}

class Ashm {
  String CompanyName;
  String number;
  String image;
  String stock;

  Ashm({required this.CompanyName,
   required this.number,
    required this.image,
    required this.stock});
    
}