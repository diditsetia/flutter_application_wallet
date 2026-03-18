// import 'package:flutter/material.dart';
// import 'package:flutter_application_wallet/beranda_screen.dart';

// void main() {
//   runApp(const WalletApp());
// }

// class WalletApp extends StatefulWidget {
//   const WalletApp({super.key});

//   @override
//   State<WalletApp> createState() => _WalletAppState();
// }

// class _WalletAppState extends State<WalletApp> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     // const Center(child: Text("Home")),
//     BerandaScreen(),
//     const Center(child: Text("Duitin")),
//     const Center(child: Text("Statistic")),
//     const Center(child: Text("Profile")),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   Widget buildTabItem({
//     required String icon,
//     required String activeIcon,
//     required String label,
//     required int index,
//   }) {
//     final bool isActive = _selectedIndex == index;

//     return InkWell(
//       onTap: () => _onItemTapped(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(isActive ? activeIcon : icon, width: 20, height: 20),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 11,
//               color: isActive ? Colors.black : Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color(0xfffe5e2e5), // penting
//         extendBody: true,

//         body: Container(child: _pages[_selectedIndex]),

//         floatingActionButton: SizedBox(
//           height: 65,
//           width: 65,
//           child: Container(
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xff7B8FF5), Color(0xff4A63E7)],
//               ),
//             ),
//             child: FloatingActionButton(
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               onPressed: () {},
//               child: Image.asset(
//                 "assets/icons/ic_qr.png",
//                 width: 24,
//                 height: 24,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),

//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: MediaQuery.removePadding(
//           removeTop: true,
//           context: context,
//           removeBottom: true,
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border(
//                 top: BorderSide(color: Colors.grey.shade300, width: 1),
//               ),
//             ),
//             child: SizedBox(
//               height: 80,
//               child: BottomAppBar(
//                 shape: WideSmoothNotch(),
//                 notchMargin: 0,
//                 color: Colors.white,
//                 elevation: 10,
//                 shadowColor: Colors.black26,

//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       buildTabItem(
//                         icon: "assets/icons/ic_home_line.png",
//                         activeIcon: "assets/icons/ic_active_home.png",

//                         label: "Home",
//                         index: 0,
//                       ),
//                       buildTabItem(
//                         icon: "assets/icons/ic_wallet.png",
//                         activeIcon: "assets/icons/ic_dompet_active.png",

//                         label: "Duitin",
//                         index: 1,
//                       ),
//                       const SizedBox(width: 70),
//                       buildTabItem(
//                         icon: "assets/icons/ic_statistic.png",
//                         activeIcon: "assets/icons/ic_statistic_active.png",

//                         label: "Statistic",
//                         index: 2,
//                       ),
//                       buildTabItem(
//                         icon: "assets/icons/ic_profile.png",
//                         activeIcon: "assets/icons/ic_profile_active.png",

//                         label: "Profile",
//                         index: 3,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class WideSmoothNotch extends NotchedShape {
//   @override
//   Path getOuterPath(Rect host, Rect? guest) {
//     if (guest == null) return Path()..addRect(host);

//     final double fabRadius = guest.width / 3;

//     final double notchWidth = fabRadius * 2.6;
//     final double notchDepth = fabRadius * 2.0;

//     final double center = guest.center.dx;

//     final Path path = Path();

//     path.moveTo(host.left, host.top);

//     path.lineTo(center - notchWidth, host.top);

//     path.cubicTo(
//       center - fabRadius * 1.7,
//       host.top,
//       center - fabRadius * 1.9,
//       host.top + notchDepth,
//       center,
//       host.top + notchDepth,
//     );

//     path.cubicTo(
//       center + fabRadius * 1.9,
//       host.top + notchDepth,
//       center + fabRadius * 1.7,
//       host.top,
//       center + notchWidth,
//       host.top,
//     );

//     path.lineTo(host.right, host.top);
//     path.lineTo(host.right, host.bottom);
//     path.lineTo(host.left, host.bottom);

//     path.close();

//     return path;
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_wallet/beranda_screen.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatefulWidget {
  const WalletApp({super.key});

  @override
  State<WalletApp> createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    BerandaScreen(),
    const Center(child: Text("Duitin")),
    const Center(child: Text("Statistic")),
    const Center(child: Text("Profile")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildTabItem({
    required String icon,
    required String activeIcon,
    required String label,
    required int index,
  }) {
    final bool isActive = _selectedIndex == index;

    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(isActive ? activeIcon : icon, width: 20, height: 20),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 11,
              color: isActive ? Colors.black : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notchShape = WideSmoothNotch();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfffe5e2e5),
        extendBody: true,
        body: _pages[_selectedIndex],

        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff7B8FF5), Color(0xff4A63E7)],
              ),
            ),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.transparent,
              onPressed: () {},
              child: Image.asset(
                "assets/icons/ic_qr.png",
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: MediaQuery.removePadding(
          removeTop: true,
          removeBottom: true,
          context: context,
          child: SizedBox(
            height: 80,
            child: Stack(
              children: [
                /// BORDER YANG MENGIKUTI NOTCH
                CustomPaint(
                  size: const Size(double.infinity, 80),
                  painter: NotchShadowPainter(
                    shape: notchShape,
                    guest: Rect.fromCircle(
                      center: Offset(MediaQuery.of(context).size.width / 2, 0),
                      radius: 28,
                    ),
                  ),
                  // NotchBorderPainter(
                  //   shape: notchShape,
                  //   guest: Rect.fromCircle(
                  //     center: Offset(MediaQuery.of(context).size.width / 2, 0),
                  //     radius: 28,
                  //   ),
                  //   borderColor: Colors.grey.shade300,
                  //   borderWidth: 1.2,
                  // ),
                ),

                /// BOTTOM APP BAR
                BottomAppBar(
                  shape: notchShape,
                  notchMargin: 0,
                  color: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildTabItem(
                        icon: "assets/icons/ic_home_line.png",
                        activeIcon: "assets/icons/ic_active_home.png",
                        label: "Home",
                        index: 0,
                      ),
                      buildTabItem(
                        icon: "assets/icons/ic_wallet.png",
                        activeIcon: "assets/icons/ic_dompet_active.png",
                        label: "Duitin",
                        index: 1,
                      ),
                      const SizedBox(width: 70),
                      buildTabItem(
                        icon: "assets/icons/ic_statistic.png",
                        activeIcon: "assets/icons/ic_statistic_active.png",
                        label: "Statistic",
                        index: 2,
                      ),
                      buildTabItem(
                        icon: "assets/icons/ic_profile.png",
                        activeIcon: "assets/icons/ic_profile_active.png",
                        label: "Profile",
                        index: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WideSmoothNotch extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null) return Path()..addRect(host);

    final double fabRadius = guest.width / 3;
    final double notchWidth = fabRadius * 2.6;
    final double notchDepth = fabRadius * 2.0;

    final double center = guest.center.dx;

    final Path path = Path();

    path.moveTo(host.left, host.top);

    path.lineTo(center - notchWidth, host.top);

    path.cubicTo(
      center - fabRadius * 1.7,
      host.top,
      center - fabRadius * 1.9,
      host.top + notchDepth,
      center,
      host.top + notchDepth,
    );

    path.cubicTo(
      center + fabRadius * 1.9,
      host.top + notchDepth,
      center + fabRadius * 1.7,
      host.top,
      center + notchWidth,
      host.top,
    );

    path.lineTo(host.right, host.top);
    path.lineTo(host.right, host.bottom);
    path.lineTo(host.left, host.bottom);

    path.close();

    return path;
  }
}

/// PAINTER UNTUK BORDER NOTCH
class NotchBorderPainter extends CustomPainter {
  final NotchedShape shape;
  final Rect guest;
  final Color borderColor;
  final double borderWidth;

  NotchBorderPainter({
    required this.shape,
    required this.guest,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Rect host = Rect.fromLTWH(0, 0, size.width, size.height);

    final Path path = shape.getOuterPath(host, guest);

    final Paint paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class NotchShadowPainter extends CustomPainter {
  final NotchedShape shape;
  final Rect guest;

  NotchShadowPainter({required this.shape, required this.guest});

  @override
  void paint(Canvas canvas, Size size) {
    final Rect host = Rect.fromLTWH(0, 0, size.width, size.height);

    final Path path = shape.getOuterPath(host, guest);

    final Paint shadowPaint = Paint()
      // ..color = Colors.black
      //     .withOpacity(0.08) // tipis & elegan
      ..color = Colors.black.withValues(alpha: 0.1)
      ..maskFilter = const MaskFilter.blur(
        BlurStyle.normal,
        6, // softness shadow
      );

    canvas.drawPath(path.shift(const Offset(0, 1)), shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
