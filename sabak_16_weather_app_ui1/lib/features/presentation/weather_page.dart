import 'package:flutter/material.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/card_widget.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/city_name.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/search_setting.dart';
import 'package:sabak_weather_app_ui1/features/presentation/widgets/temp_view.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeaterPageState();
}

class _WeaterPageState extends State<WeatherPage> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SearchSettingWidget(),
              const CityNameWidget(),
              const TemperatureViewWidget(),
              const CardWidget(),
              const CardWidget(),
              const CardWidget(),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                color: Color(0xff313341),
                                fontSize: 13.8,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 20.7),
                          Text(
                            'Tomorrow',
                            style: TextStyle(
                                color: Color(0xff313341),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 140),
                          Row(
                            children: [
                              Text(
                                'Next 7 Days',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 13.8,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 20.7),
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Color(0xff000000),
                                size: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Slider(
                activeColor: Colors.white,
                inactiveColor: Colors.black26,
                thumbColor: Colors.red,
                min: 0,
                max: 300,
                value: 100.toDouble(),
                onChanged: (value) {
                  setState(() {
                    value.toInt();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
