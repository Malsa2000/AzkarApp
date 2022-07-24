import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String value = "استغفر الله العظيم";
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          elevation: 0,
          title: Text("اذكاري",
              style: GoogleFonts.arefRuqaa(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFFEB1D36))),
          actions: [
            PopupMenuButton<String>(
              color: Color(0xFFEB1D36),
              onSelected: (String value1) {
                if (value1 == "3") {
                  value = "استغفر الله العظيم";
                } else if (value1 == "2") {
                  value = "سبحان الله";
                } else if (value1 == "1") {
                  value = "الحمد لله";
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      onTap: () {
                        setState(() {
                          value = "الحمد لله";
                          _counter = 0;
                        });
                      },
                      child: Text("الحمد لله"),
                      value: "1"),
                  PopupMenuDivider(),
                  PopupMenuItem(
                      onTap: () {
                        setState(() {
                          value = "سبحان الله ";
                          _counter = 0;
                        });
                      },
                      child: Text("سبحان الله "),
                      value: "2"),

                  PopupMenuDivider(),

                  PopupMenuItem(
                      onTap: () {
                        setState(() {
                          value = "استغفر الله العظيم";
                          _counter = 0;
                        });                     },
                      child: Text("استغفر الله العظيم"),
                      value: "3")
                ];
              },
            )
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/test");
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Color(0xFFEB1D36)),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFFCFD2CF), Color(0xFFEF5EDDC)])),
          child: Column(children: [
            Image.asset("images/azkar.jpg"),
            Image(image: AssetImage("images/page_view1.png")),

            ClipOval(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("$value",
                            style: GoogleFonts.arefRuqaa(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFEB1D36))),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        color: Colors.black26,
                        child: Text(_counter.toString(),
                            style: GoogleFonts.arefRuqaa(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFEB1D36))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() => _counter++);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF9F2ED),
                      padding: EdgeInsets.all(10),
                      elevation: 5),
                  child: Text("قم بالعد",
                      style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFFEB1D36))),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() => _counter = 0);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF9F2ED),
                      padding: EdgeInsets.all(10),
                      elevation: 5),
                  child: Text("أعد",
                      style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFFEB1D36))),
                )
              ],
            )
          ]),
        ));
  }
}
