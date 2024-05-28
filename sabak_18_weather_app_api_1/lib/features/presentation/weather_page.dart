import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sabak_18_weather_app_api_1/features/data/weather_repo.dart';
import 'package:sabak_18_weather_app_api_1/features/presentation/widgets/card_widget.dart';
import 'package:sabak_18_weather_app_api_1/features/presentation/widgets/city_name.dart';
import 'package:sabak_18_weather_app_api_1/features/presentation/widgets/search_setting.dart';
import 'package:sabak_18_weather_app_api_1/features/presentation/widgets/temp_view.dart';
import 'package:sabak_18_weather_app_api_1/features/presentation/widgets/weather_days.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeaterPageState();
}

class _WeaterPageState extends State<WeatherPage> {
  bool isTrue = true;
  double scroll = 0;
  WeatherRepo? weatherRepo;

  @override
  void initState() {
    super.initState();
    weatherRepo = WeatherRepo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
              future: weatherRepo?.fetchDataWithDio(),
              builder: (context, snap) {
                if (snap.hasError) {
                  return Center(
                    child: Text(
                      snap.error.toString(),
                    ),
                  );
                } else if (snap.hasData) {
                  double temp = snap.data!.temp - 273.15;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27),
                          child: Column(
                            children: [
                              const SearchSettingWidget(),
                              CityNameWidget(
                                name: snap.data!.name,
                              ),
                              TemperatureViewWidget(
                                temp: snap.data!.temp,
                                text: temp.toStringAsFixed(0),
                                icon:
                                    'https://openweathermap.org/img/wn/${snap.data!.icon}@4x.png',
                              ),
                               CardWidget(
                                image: 'assets/svg_images/shamal.svg',
                                text: 'Wind',
                                text1: '${snap.data!.wind} km/h',
                              ),
                               CardWidget(
                                image: 'assets/svg_images/vlaga.svg',
                                text: 'Humidity',
                                text1: '${snap.data!.humidity} %',
                              ),
                              // const CardWidget(),
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
                        const SizedBox(
                          height: 15.52,
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.62),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(34.8),
                                    child: Container(
                                      width: 55.15,
                                      height: 88,
                                      color: Colors.white.withOpacity(0.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text('data'),
                                          SvgPicture.asset(
                                              'assets/svg_images/Ellipse 14.svg'),
                                          const Text('data')
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
// class SquareThumbShape extends SliderComponentShape {
//   final double thumbRadius;

//   SquareThumbShape({this.thumbRadius = 8.0});

//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) {
//     return Size.fromRadius(thumbRadius);
//   }

//   @override
//   void paint(
//     PaintingContext context,
//     Offset center, {
//     required Animation<double> activationAnimation,
//     required Animation<double> enableAnimation,
//     required bool isDiscrete,
//     required TextPainter labelPainter,
//     required RenderBox parentBox,
//     required SliderThemeData sliderTheme,
//     required TextDirection textDirection,
//     required double value,
//     required double textScaleFactor,
//     required Size sizeWithOverflow,
//   }) {
//     final Paint paint = Paint()
//       ..color = sliderTheme.thumbColor ?? Colors.blue
//       ..style = PaintingStyle.fill;

//     final Rect thumbRect = Rect.fromCenter(
//       center: center,
//       width: 17.25,
//       height: 5.17,
//     );

//     context.canvas.drawRect(thumbRect, paint);
//   }
// }

