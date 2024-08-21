import 'package:flutter/material.dart';

// ignore: camel_case_types
class CoustomBottomAppBar extends StatefulWidget {
  final Function(int) onTap;
  final Color? bgcolors;
  final Gradient? kMainHomeBtnColor;

  const CoustomBottomAppBar({
    super.key,
    required this.onTap, 
    this.bgcolors, 
    this.kMainHomeBtnColor,
  });

  @override
  State<CoustomBottomAppBar> createState() => kCoustom_BottomAppBarState();
}

// ignore: camel_case_types
class kCoustom_BottomAppBarState extends State<CoustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: widget.bgcolors,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  widget.onTap(0);
                },
                icon: const Icon(
                  Icons.create_new_folder_outlined,
                  size: 25,
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.onTap(2);
                  });
                },
                icon: const Icon(
                  Icons.person,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.of(context).size.width / 2 - 40,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: widget.kMainHomeBtnColor,
            ),
            child: IconButton(
              onPressed: () {
                widget.onTap(1);
              },
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}


/*
==============================================================

int _index = 1; 

 // should be befor
  Widget build(BuildContext context) 

==============================================================

    final List<Widget> pages = [
      const ToDosPage(),
      const CategoryPage(),
      const ProfilePage(),
    ];

==============================================================

    //call back function
    
    void _updateData(int newData) {
      setState(() {
        _index = newData;
      });
    }

==============================================================

    Scaffold(
      bottomNavigationBar: CoustomBottomAppBar(
        onTap: _updateData,
      ),
      body: pages[_index],
    ),

==============================================================


 */