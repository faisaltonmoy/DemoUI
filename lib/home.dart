import 'package:DemoUI/rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:DemoUI/trans.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 24),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset(
                          'asset/svg/menu.svg',
                        )),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset('asset/svg/bell.svg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hey Jhon!',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF636b78),
                    ),
                  ),
                  Text(
                    'Shape Your Body',
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF636b78),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 30,right: 30),
              height: 200,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFfad05f),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFffe7aa),
                    blurRadius: 5.0,
                    offset: Offset(0.0, 7.0),
                  ),
                ],
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  left: 40,
                  top: 25,
                  child: Text(
                    '60% off',
                    style: GoogleFonts.inter(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffffff),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 67,
                  child: Text(
                    'Mar14 - Mar20',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                    ),
                  ),
                ),
                Positioned(
                    left: 45,
                    top: 110,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFf66440),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFf28168),
                              blurRadius: 5.0,
                              offset: Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Join GYM',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 25,
                    right: 15,
                    child: Container(
                        height: 120,
                        width: 120,
                        child: SvgPicture.asset('asset/svg/gym.svg'))),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, right: 35),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Course',
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF636b78),
                      ),
                    ),
                    Text(
                      'See all',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9d8fe6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: ListView.builder(
                itemCount: transaction.length,
                padding: EdgeInsets.only(left: 10, right: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(
                        left: 24, top: 12, bottom: 12, right: 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: SvgPicture.asset(transaction[index].photo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  transaction[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  transaction[index].time,
                                  style: GoogleFonts.inter(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    RatingBar(
                                      rating: transaction[index].rating,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      transaction[index].rvcount,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black26),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        transaction[index].amount,
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.inter(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF9d8fe6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
