import 'package:flutter/material.dart';

import 'package:flutter_app/components/components.dart';
import 'package:flutter_app/themes/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        title: "Home",
        child: Column(children: [
          const SizedBox(height: 30),
          Expanded(
              child: ListView(
            children: [
              for (int index = 0; index < 100000; index++)
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: ThemeColours.lightText,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('User-$index',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('user-$index@mail.com',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400)),
                                        Text('username-$index',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    )
                                  ])))),
                  const SizedBox(height: 20)
                ])
            ],
          ))
        ]));
  }
}

/*ListView.separated(
                  itemCount: 100000,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: ThemeColours.lightText,
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('User-$index',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('user-$index@mail.com',
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400)),
                                          Text('username-$index',
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400))
                                        ],
                                      )
                                    ]))));
                  })*/