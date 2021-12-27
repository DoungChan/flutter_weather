// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather/Repository/data/model.dart';
import 'package:flutter_weather/Repository/repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepo weatherRepo;

  WeatherBloc(this.weatherRepo) : super(WeatherIsnotSearched());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is Fetchweather) {
      yield WeatherIsLoding();
      try {
        WeatherModel weather = await weatherRepo.getweather(event._city);
        yield WeatherIsLoaded(weather);
      } catch (_) {
        yield WeatherIsnotNotLoaded();
      }
    } else if (event is Resetweather) {
      yield WeatherIsnotSearched();
    }
  }

  // on<WeatherEvent>((event, emit) async* {
  //   if (event is Fetchweather) {
  //     yield WeatherIsLoding();
  //     try {
  //       WeatherModel weather = await weatherRepo.getweather(event._city);
  //       yield WeatherIsLoaded(weather);
  //     } catch (_) {
  //       yield WeatherIsnotNotLoaded();
  //     }
  //   } else if (event is Resetweather) {
  //     yield WeatherIsnotSearched();
  //   }
  // });

}
// class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
//   late WeatherRepo weatherRepo;

//   WeatherBloc(WeatherState initialState) : super(initialState);

//   WeatherState get initialState => WeatherIsnotSearched();

//   Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
//     if (event is Fetchweather) {
//       yield WeatherIsLoding();

//       try {
//         WeatherModel weather = await weatherRepo.getweather(event._city);
//         yield WeatherIsLoaded(weather);
//       } catch (_) {
//         print(_);
//         yield WeatherIsnotNotLoaded();
//       }
//     } else if (event is Resetweather) {
//       yield WeatherIsnotNotLoaded();
//     }
//   }
// }
