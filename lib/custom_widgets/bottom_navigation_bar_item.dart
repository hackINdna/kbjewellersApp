import 'package:flutter/material.dart';

// class BottomNavigationItem extends StatefulWidget {
//   final MediaQueryData mediaQuery;
//   final AnimatedIconData iconName;
//   final String iconText;
//   final Color color;
//   const BottomNavigationItem({
//     super.key,
//     required this.mediaQuery,
//     required this.iconName,
//     required this.iconText,
//     required this.color,
//   });

//   @override
//   State<BottomNavigationItem> createState() => _BottomNavigationItemState();
// }

// class _BottomNavigationItemState extends State<BottomNavigationItem>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.mediaQuery.size.width * 0.15,
//       height: widget.mediaQuery.size.height * 0.048,
//       // color: Colors.red,
//       child: FittedBox(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             AnimatedIcon(
//               icon: widget.iconName,
//               progress: _animationController,
//               color: widget.color,
//             ),
//             Text(
//               widget.iconText,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: widget.color,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

Widget bottomNavigationIcon(
  MediaQueryData mediaQuery,
  IconData iconName,
  String iconText,
  Color color,
  // bool iconSize,
) {
  return SizedBox(
    width: mediaQuery.size.width * 0.15,
    height: mediaQuery.size.height * 0.048,
    // color: Colors.red,
    child: FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            iconName,
            color: color,
            // size: iconSize,
          ),
          Text(
            iconText,
            style: TextStyle(
              fontSize: 12,
              color: color,
            ),
          ),
        ],
      ),
    ),
  );
}
