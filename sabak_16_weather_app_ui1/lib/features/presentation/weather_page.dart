import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/city_name.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/search_setting.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeaterPageState();
}

class _WeaterPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SearchSettingWidget(),
            SizedBox(height: 1.72),
            CityNameWidget(),
            Row(
              children: [
                SvgPicture.asset('assets/svg_images/cludy.svg'),
                const Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '19',
                              style: TextStyle(
                                  color: Color(0xff303345),
                                  fontSize: 74.17,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              " \u2103",
                              style: TextStyle(
                                  color: Color(0xff303345),
                                  fontSize: 27.7,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Rainy",
                      style: TextStyle(
                          color: Color(0xff303345),
                          fontSize: 24.17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
