import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final IconData icon;
  final String name;
  final void Function()? onTap;
  const listTile({super.key, required this.icon, required this.name, this.onTap, this.margin});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              margin: margin,
              child: InkWell(
                onTap: onTap,
                child: ListTile(
                  leading: Icon(icon, color: Colors.white, size: 25,),
                  title: Text(name, style: TextStyle(
                    color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          );
  }
}