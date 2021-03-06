import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Recycle Categories'),
          centerTitle: true,
        ),
        body: Scaffold(
            appBar: TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: "Recycleable",
              ),
              Tab(
                text: "Non-Recycleable",
              )
            ]),
            body: Scaffold(
              body: TabBarView(
                  children: [RecycleablePage(), NonRecycleablePage()]),
            )),
      ),
    );
  }
}

class NonRecycleablePage extends StatefulWidget {
  const NonRecycleablePage({
    Key? key,
  }) : super(key: key);
  _NonRecycleablePageState createState() => _NonRecycleablePageState();
}

class _NonRecycleablePageState extends State<NonRecycleablePage> {
  double _containerHeight = double.infinity;
  Color _containerColor = Color.fromARGB(255, 192, 192, 192);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: MediaQuery.of(context).size.height,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 192, 192, 192)),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _containerColor = Colors.white;
                          });
                        },
                        child: Container(
                          width: 90,
                          color: _containerColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              ImageIcon(
                                AssetImage("assets/prohibited.png"),
                                size: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Prohibited Items"),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _containerColor = Colors.white;
                          });
                        },
                        child: Container(
                          width: 90,
                          color: _containerColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              ImageIcon(
                                AssetImage("assets/danger.png"),
                                size: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Dangerous Disposal"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column()
          ],
        ),
      ),
    );
  }
}

class RecycleablePage extends StatefulWidget {
  const RecycleablePage({
    Key? key,
  }) : super(key: key);
  _RecycleablePageState createState() => _RecycleablePageState();
}

class _RecycleablePageState extends State<RecycleablePage> {
  double _containerHeight = double.infinity;
  Color _containerColor = Color.fromARGB(255, 192, 192, 192);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: MediaQuery.of(context).size.height,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 192, 192, 192)),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _containerColor = Colors.white;
                          });
                        },
                        child: Container(
                          width: 90,
                          color: _containerColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              ImageIcon(
                                AssetImage("assets/metal.png"),
                                size: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Metal"),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _containerColor = Colors.white;
                          });
                        },
                        child: Container(
                          width: 90,
                          color: _containerColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              ImageIcon(
                                AssetImage("assets/plastic.png"),
                                size: 50,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Plastic"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/paper.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Paper"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/fabric.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Fabric"),
                      SizedBox(
                        height: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/glass.png"),
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Glass"),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column()
          ],
        ),
      ),
    );
  }
}
