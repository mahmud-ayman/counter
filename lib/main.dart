import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatefulWidget {
  PointCounter({super.key});

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int team1Points = 0;
  int team2Points = 0;
  //done

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Point Counter'),
          backgroundColor: const Color.fromARGB(255, 60, 75, 159),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "team 1",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 180, // المساحة اللي الرقم هيظهر فيها
                        width: 100,
                        child: FittedBox(
                          fit: BoxFit.scaleDown, // بيصغّر النص لما الرقم يكبر
                          child: Text(
                            "$team1Points",
                            style: TextStyle(
                              fontSize:
                                  200, // الحجم الأساسي (هيتصغر تلقائيًا لو الرقم طويل)
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team1Points++;
                          });
                        },
                        child: Text("add 1 point"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team1Points += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("add 2 points"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team1Points += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("add 3 points"),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (team1Points > 0) {
                              team1Points--;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            145,
                            33,
                            243,
                          ),
                          foregroundColor: Colors.white,
                        ),

                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(color: Colors.grey, thickness: 3),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "team 2",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 180,
                        width: 100,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "$team2Points",
                            style: TextStyle(
                              fontSize: 400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team2Points++;
                          });
                        },
                        child: Text("add 1 point"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team2Points += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("add 2 points"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            team2Points += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("add 3 points"),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (team2Points > 0) {
                              team2Points--;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            128,
                            67,
                            251,
                          ),
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      team1Points = 0;
                      team2Points = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("reset", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
