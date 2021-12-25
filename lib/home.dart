import 'package:flutter/material.dart';
import 'package:qualifier_quiz_app_iitm/quizpaze.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
  ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(),
          ));
        },
        child: Material(
          color: Colors.redAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: ClipOval(
                        child:
                            Image(fit: BoxFit.cover, image: AssetImage(image)),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "This is some random description siuhfjsfsjhbyghsdbhbs\ntrffdfdsdfxdxfdfdffcxcvxhfdhtf\nfdrfdfdfdfdsfxffgdtfygghjbnb\ngrtyuyuytdfdgffhgfyfh\nrdrdtyfgdrtryiuiuui",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IITM_Bsc_Degree_Qualifier_Quiz",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Computational Thinking", images[0]),
          customcard("English", images[1]),
          customcard("Descrete Mathaematics", images[2]),
          customcard("Statistics", images[3]),
        ],
      ),
    );
  }
}
