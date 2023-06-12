import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherito/services/weatherApi_call.dart';
import 'package:weatherito/widget/card_widget.dart';

import '../model/weather_model.dart';
import '../widget/text_widget.dart';

TextEditingController textController = TextEditingController();
WeatherApiCall client = WeatherApiCall();
class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  final String? location ="puducherry";
  final int celsius = 28;
  final int high = 31;
  final int low = 31;
  final int wind = 61;
  final int humidity = 31;
  final int pressure = 29;
  final int Uv = 0;
  final int time = 1;
  String? lottie;
  String? image;

  @override
  Widget build(BuildContext context) {
    if (time == 12) {
      image = "assets/sunset.jpg";
      lottie =
          "https://lottie.host/b2aa6a0c-09eb-4509-9d06-2618621f8e20/QtOIF06AT8.json";
    } else {
      image = "assets/noon.jpg";
      lottie ="https://lottie.host/ac55d75c-2c63-48b7-ad5e-89a0353af6a3/snZShdm1NL.json";
    }
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 540,
              color: Colors.black,
              child: Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      child: Image.asset(
                        image!,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Lottie.network(
                      lottie!,
                      repeat: true,
                      fit: BoxFit.cover,
                      animate: true,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        child: Row(
                          children: [
                            Textwidget(
                              textsize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterspacing: 2,
                              text: "Weatherito",
                            ),
                            const Spacer(),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              child: AnimSearchBar(
                                autoFocus: true,
                                width: 180,
                                onSuffixTap: () {},
                                color: Colors.white,
                                helpText: "Search Here",
                                closeSearchOnSuffixTap: true,
                                rtl: true,
                                animationDurationInMilli: 322,
                                prefixIcon: const Icon(
                                  Iconsax.search_favorite_14,
                                  color: Colors.deepOrange,
                                ),
                                onSubmitted: (String) {},
                                textController: textController,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Textwidget(
                              text: location,
                              textsize: 20,
                              color: Colors.white54,
                              letterspacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
                            Textwidget(
                              textsize: 30,
                              text: "$celsius°C",
                              color: Colors.white70,
                              letterspacing: 1,
                              fontWeight: FontWeight.w400,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Textwidget(
                                  textsize: 15,
                                  text: "High:$high°",
                                  color: Colors.white60,
                                  letterspacing: 1,
                                  fontWeight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Textwidget(
                                  textsize: 15,
                                  text: "Low:$low°",
                                  color: Colors.white60,
                                  letterspacing: 1,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              child: Textwidget(
                                textsize: 10,
                                text: "haze",
                                color: Colors.white60,
                                letterspacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Lottie.network(
                          "https://assets9.lottiefiles.com/packages/lf20_zsfbtp0v.json",
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(left: 100),
                        width: double.infinity,
                        child: Lottie.network(
                          "https://lottie.host/6d0f7241-d914-4817-94ed-dade6ff9a6da/foiZh8rMRC.json",
                          repeat: true,
                          alignment: Alignment.bottomCenter,
                          height: 200,
                          width: 300,
                          reverse: true,
                          animate: true,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            CardWidget(
                              icon: Iconsax.wind,
                              data: wind,
                              name: "Wind:",
                              measure: "km/h",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CardWidget(
                              icon: Iconsax.moon5,
                              data: humidity,
                              name: "Humidity",
                              measure: "%",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              CardWidget(
                                icon: Iconsax.timer_start,
                                data: pressure,
                                name: "Pressure",
                                measure: " hPa",
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              CardWidget(
                                icon: Iconsax.sun_15,
                                data: Uv,
                                name: "UV rays",
                                measure: "uv",
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
