import 'package:flutter/material.dart';

class ListaCard extends StatefulWidget {
  const ListaCard({super.key});

  @override
  State<ListaCard> createState() => _ListaCardState();
}

class _ListaCardState extends State<ListaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista Card")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue[400]),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
                    Container(width: 40, height: 40, color: Colors.blue[800]),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 20,
                          color: Colors.blue[200],
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 100,
                          height: 12,
                          color: Colors.blueAccent[100],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
