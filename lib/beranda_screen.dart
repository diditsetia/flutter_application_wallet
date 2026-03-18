import 'package:flutter/material.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffe5e2e5), // penting
        extendBody: true,
        appBar: null,
        body: Container(
          child: Stack(
            children: [
              Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                    begin: Alignment(-2, -1),
                    end: Alignment(0.5, 0.1),
                    colors: [
                      Color(0xff564fc3),
                      Color(0xff8573e0),
                      Color(0xffa993ef),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.only(top: 84),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/ic_dolar.png",
                            width: 18,
                            height: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Prakthis',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 56),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text(
                                'Wallet Balance',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffd9dfff),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$15,123.45",
                                    style: TextStyle(
                                      fontSize: 48,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Image.asset(
                                    "assets/icons/ic_eye.png",
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32),
                        Padding(
                          padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 160,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Text(
                                    'Send',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Text(
                                    'Request',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: height / 1.8,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.8, 0),
                      end: Alignment(0.8, 0),
                      colors: [
                        Color(0xffC5B4E6),
                        Color(0xffDABBEF),
                        Color(0xffB7C8F2),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: 20,
                      top: 25,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icons/ic_ticket.png",
                                  width: 15,
                                  height: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'New Promo!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff353aba),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Center(
                              child: Text(
                                'Get Promo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfffdfdfd),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: height / 2.2,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: 20,
                      top: 20,
                      right: 20,
                      bottom: 25,
                    ),

                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quick Actions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'See More',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFE8E3FF),
                                    Color(0xFFF0E6F3),
                                    Color(0xFFF7D9DE),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(
                                              alpha: 0.08,
                                            ),
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            offset: const Offset(
                                              0,
                                              4,
                                            ), // shadow ke bawah
                                          ),
                                        ],
                                      ),

                                      child: Center(
                                        child: Image.asset(
                                          "assets/icons/ic_transfer.png",
                                          width: 20,
                                          height: 20,
                                          color: Color(0xff351a6a),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Transfer',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFE3CFE2), // ungu pastel
                                    Color(0xFFEBCFD5), // pink lembut
                                    Color(0xFFF1D3B8), // peach / krem
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(
                                              alpha: 0.08,
                                            ),
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            offset: const Offset(
                                              0,
                                              4,
                                            ), // shadow ke bawah
                                          ),
                                        ],
                                      ),

                                      child: Center(
                                        child: Image.asset(
                                          "assets/icons/ic_wallet_plus.png",
                                          width: 20,
                                          height: 20,
                                          color: Color(0xffd9a748),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Top Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFBFE6E3), // mint / teal muda
                                    Color(0xFFEFE6C9), // kuning krem lembut
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(
                                              alpha: 0.08,
                                            ),
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            offset: const Offset(
                                              0,
                                              4,
                                            ), // shadow ke bawah
                                          ),
                                        ],
                                      ),

                                      child: Center(
                                        child: Image.asset(
                                          "assets/icons/ic_wallet_in.png",
                                          width: 20,
                                          height: 20,
                                          color: Color(0xff136e19),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Payment',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transactions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'See More',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 13),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/img_profile.png",
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Madelyn Franci',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '22 sep 2025',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff7a7a7a),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$100.45",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff7a7a7a),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
