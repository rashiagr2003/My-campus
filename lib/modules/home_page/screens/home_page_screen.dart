import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_campus/modules/home_page/widgets/events_card_widget.dart';

import '../widgets/featured_link_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: renderAppBar(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: heading1(text: "Mess Food"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 163,
                width: 334,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 11,
                          offset: Offset(1, 4),
                          color: Colors.black.withOpacity(0.25)),
                    ],
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: heading1(text: "Featured Links"),
              ),
              Container(
                height: 112,
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FeaturedLinkCard(
                        image:
                            "https://s3-alpha-sig.figma.com/img/bc0c/d4e9/66345a9037e7922f8434536e6583b947?Expires=1673222400&Signature=XQUwBkinTvERScpSpO~L7jLfmK-HSvIxi20T7mC~olEM76uHnbksF~sSpeelDUw3Ya82SdZWd7qoYDnDeXJjhVwBl01raF4sUTat-GIP8y0RE-6wA~mncUnldWRGkdNNUMmFWoP6wD0I8CZU--v3Rq8Yz4TQtiybnHnSTZ915dm-HpNtR2~B989jgF2HBvd0s7t-R1jur~Q5bjfZhRELS7ZoSxeOZqPj7usEmA9yxR6FK7wlQfQXPrnNyzEduohMYLIkM0EQIBP~Pt56QvEj6MJ~z24bVOpqFDAtsMBoyjGXJiOPOG99t5xCf5W0XOUY1No7TZchwyI5UX-kdcEoxg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                    FeaturedLinkCard(
                        image:
                            "https://s3-alpha-sig.figma.com/img/811d/d800/c500837b87606b5afef978c8175927b9?Expires=1673222400&Signature=KQVSrN5Af9iz3~dPt4Tix3rH5p2c8CXb2ghdErZ8ZuMC~9eqgzVafl1dErir9nJ1JLtf7nibP-ZdTYC9De9S4PHvZQV8t37DVK3fzo6G373b0SPD0F0h~GBYhAaJNeNBl57yZzZ2zJHEr~6ZIuOizCx4b2J6EYggCTosnlWFjA4KLg1c6kBUJLeWppap-VwwEWYSc8RaRnUpV9ofQIWTF9f73GMCMs-L1~WV-pt4RxwqUG7YPHuYf9wosk-3drhpene4IwP9M~zOKsyQZSIJ0Fl7CH5vZ13mdyFBrCEAjWRambAEsGy04vNNBZ9OmeVE-0aLsFHq3vQD7cir5dwTmw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                    FeaturedLinkCard(
                        image:
                            "https://s3-alpha-sig.figma.com/img/811d/d800/c500837b87606b5afef978c8175927b9?Expires=1673222400&Signature=KQVSrN5Af9iz3~dPt4Tix3rH5p2c8CXb2ghdErZ8ZuMC~9eqgzVafl1dErir9nJ1JLtf7nibP-ZdTYC9De9S4PHvZQV8t37DVK3fzo6G373b0SPD0F0h~GBYhAaJNeNBl57yZzZ2zJHEr~6ZIuOizCx4b2J6EYggCTosnlWFjA4KLg1c6kBUJLeWppap-VwwEWYSc8RaRnUpV9ofQIWTF9f73GMCMs-L1~WV-pt4RxwqUG7YPHuYf9wosk-3drhpene4IwP9M~zOKsyQZSIJ0Fl7CH5vZ13mdyFBrCEAjWRambAEsGy04vNNBZ9OmeVE-0aLsFHq3vQD7cir5dwTmw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: heading1(text: "Events"),
              ),
              Container(
                height: 144,
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    EventsCardWidget(),
                    EventsCardWidget(),
                    EventsCardWidget()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: heading(text: "Today's Classes"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        children: [
                          Container(
                            width: 333,
                            height: 68,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(color: Color(0xff818181))),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 12),
                                    height: 43,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://s3-alpha-sig.figma.com/img/a064/ef9c/07bfa3cfb79c586a31e0e6d77c737f9a?Expires=1673222400&Signature=NVp5tWETzqTfDhwnCpdp1LTt9JOq-F7Ak~bfrqcXQA2cKcR74S55Ywh7ZGKKjpgCSIVdA54i-cW96Jin3Q9tt-UblyRF07-WktKbdUGFpszNrrJ4IjNOmxuleeYuN3QISuLUUAs7qFh6TLiAvKdIZIEZqkqcrdlXp1b7zi-qEFw6eqvVeU-nx61Z1Ogkf9DahnLJ-AvunEIgcOE4aguBFLEC7LjryaQissAaREict79LDqAqcAIEliK0x2uvDpms74ijit0baCUAUpHW5uXlx4Q2u-fU8qRc~AUg-yNbO4Qq2qRCnetJ0gdB6YFmhtyoayzHc-Bt8CnSu56jBo0GVQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4")),
                                    )),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Design Architecture",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      " 12:00pm - 1:00pm",
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff8E8E8E)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding heading1({required String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 14),
    child: Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff000000)),
    ),
  );
}

Text heading({required String text}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xff000000)),
  );
}

AppBar renderAppBar({required BuildContext context}) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Color(0xffF5F5F5),
    elevation: 0,
    title: Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.68,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff6B1515),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    Text(
                      "Devansh Bhardwaj",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff103E98)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
    ),
  );
}
