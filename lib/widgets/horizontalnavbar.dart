import 'package:flutter/material.dart';

class HorizontalNavBar extends StatefulWidget {
  final List<String> items;
  final Function(int) onItemSelected;
  final int currentIndex;

  HorizontalNavBar({required this.items, required this.onItemSelected, required this.currentIndex});

  @override
  _HorizontalNavBarState createState() => _HorizontalNavBarState();
}

class _HorizontalNavBarState extends State<HorizontalNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.items.length,
            (index) => NavBarItem(
          title: widget.items[index],
          isActive: index == widget.currentIndex,
          onPressed: () {
            widget.onItemSelected(index);
          },
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  NavBarItem({required this.title, required this.isActive, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
        height: MediaQuery.of(context).size.height * 0.04,
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.02),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontSize: 12,
            fontFamily: 'UberMove',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
