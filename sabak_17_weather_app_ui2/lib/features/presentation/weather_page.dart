import 'package:flutter/material.dart';
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
              const WheatherDaysWidget(),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                activeTickMarkColor:Colors.white,
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
                    print("value maanisi");
                    print("scroll maanisi");
                  }
                  );
                },
              ) ,
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}

