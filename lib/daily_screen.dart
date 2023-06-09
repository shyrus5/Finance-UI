import 'package:finance_app_ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({super.key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 25, left: 25, right: 25, bottom: 10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: grey.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 3)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 25, right: 20, left: 20),
                child: Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.bar_chart), Icon(Icons.more_vert)],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/profile.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: (size.width - 40) * 0.6,
                        child: Column(
                          children: [
                            Text(
                              "Abbie wilson",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: mainFontColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$8900",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Income",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black),
                          )
                        ],
                      ),
                      Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3)),
                      Column(
                        children: [
                          Text(
                            "\$5500",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Expenses",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black),
                          )
                        ],
                      ),
                      Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3)),
                      Column(
                        children: [
                          Text(
                            "\$650",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: mainFontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Loan",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color: black),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Overview",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: mainFontColor),
                          ),
/* IconBadge(
icon: const Icon(
Icons.notifications_none,
),
itemCount: 1,
badgeColor: Colors.red,
itemColor: mainFontColor,
hideZero: true,
top: -1,
onTap: () {},
)*/
                        ],
                      )
                    ],
                  ),
                  Text(
                    "Jun 09, 2023",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: mainFontColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin:
                            const EdgeInsets.only(top: 20, right: 25, left: 25),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: grey.withOpacity(0.03),
                                  spreadRadius: 10,
                                  blurRadius: 3)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 20, left: 20, bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                            width: 50,
                                decoration: BoxDecoration(
                                    color: arrowbgColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Center(
                                  child: Icon(Icons.arrow_upward_rounded),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: SizedBox(
                                width: (size.width) * 0.7,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sent",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Sending Payment to Clients",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: black.withOpacity(0.5),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$150",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: red),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin:
                            const EdgeInsets.only(left: 25, top: 10, right: 25),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: grey.withOpacity(0.03),
                                  spreadRadius: 10,
                                  blurRadius: 3)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: arrowbgColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Icon(Icons.arrow_downward_outlined),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: SizedBox(
                                width: (size.width - 90) * 0.7,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Receive",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Receving Payment from Company",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: black.withOpacity(0.5),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$250",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: green),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin:
                            const EdgeInsets.only(top: 10, right: 25, left: 25),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: grey.withOpacity(0.03),
                                  spreadRadius: 10,
                                  blurRadius: 3)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: arrowbgColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Icon(CupertinoIcons.money_dollar),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: SizedBox(
                                width: (size.width - 90) * 0.7,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Loan",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: black),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Loan for thr card",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: black.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$400",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: red),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
