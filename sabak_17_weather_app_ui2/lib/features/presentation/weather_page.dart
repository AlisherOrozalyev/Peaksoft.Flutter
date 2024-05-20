import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sabak_17_weather_app_ui2/features/presentation/widgets/card_widget.dart';
import 'package:sabak_17_weather_app_ui2/features/presentation/widgets/city_name.dart';
import 'package:sabak_17_weather_app_ui2/features/presentation/widgets/search_setting.dart';
import 'package:sabak_17_weather_app_ui2/features/presentation/widgets/temp_view.dart';
import 'package:sabak_17_weather_app_ui2/features/presentation/widgets/weather_days.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeaterPageState();
}

class _WeaterPageState extends State<WeatherPage> {
  bool isTrue = true;
  double scroll = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  const SearchSettingWidget(),
                  const CityNameWidget(),
                  const TemperatureViewWidget(),
                  const CardWidget(),
                  const CardWidget(),
                  const CardWidget(),
                  const WheatherDaysWidget(),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      inactiveTickMarkColor: Colors.grey,
                      thumbColor: Colors.red,
                    ),
                    child: Slider(
                      mouseCursor: MouseCursor.defer,
                      divisions: 2,
                      label: scroll.round().toString(),
                      min: 0,
                      max: 3,
                      value: scroll,
                      onChanged: (value) {
                        setState(() {
                          scroll = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.52,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.62),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(34.8),
                      child: Container(
                        width: 55.15,
                        height: 88,
                        color: Colors.white.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('data'),
                            SvgPicture.asset('assets/svg_images/Ellipse 14.svg'),
                            Text('data')
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
