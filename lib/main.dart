import 'package:flutter/material.dart';

String hack= "https://wallpaperaccess.com/full/3296133.png";

main()=>runApp(HOLA());

class HOLA extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text("Uso de ClipPath"), backgroundColor: Color.fromARGB(255, 40, 204, 200),
        ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipPath(
            clipper: ClipperHack(),
            child: Image(
              image: NetworkImage(hack),
            ),
          ),
      )
  ));

}

class ClipperHack extends CustomClipper <Path>{
  @override
  Path getClip(Size size){
    Path path = Path ()
        ..lineTo(size.width , size.width*0)
        ..lineTo(size.width*0.75, size.height * 0.45)
        ..lineTo(size.width , size.height)
        ..lineTo(size.width*0.25, size.height)
        ..lineTo(size.width *0, size.height*0.45)
        ..lineTo(size.width *0.25, size.height * 0);
        return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>true;
}

