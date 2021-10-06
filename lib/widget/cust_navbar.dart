import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/details.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';
import 'package:flutter_task_5/Homepage/home.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  final tabs = [
    const Home(),
    const FormKeluhan(),
    const Detail(),
  ];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return CustomBotNavbar(
      iconList: const [
        Icons.person,
        Icons.search,
        Icons.details,
      ],
      onChange: (val) {
        setState(() {
          _selectedItem = val;
          tabs[val];
        });
      },
      defaultSelectedIndex: 0,
    );
  }
}

class CustomBotNavbar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  const CustomBotNavbar(
      {Key? key,
      this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange})
      : super(key: key);

  @override
  _CustomBotNavbarState createState() => _CustomBotNavbarState();
}

class _CustomBotNavbarState extends State<CustomBotNavbar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavbarItem(_iconList[i], i));
    }
    return Row(children: _navBarItemList);
  }

  Widget buildNavbarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: const Border(
                  bottom: BorderSide(width: 4, color: Colors.amber),
                ),
                gradient: LinearGradient(colors: [
                  Colors.amber.withOpacity(0.3),
                  Colors.amber.withOpacity(0.5),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              )
            : const BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
