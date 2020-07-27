import 'networking.dart';
import 'location.dart';

final String apiKey = 'ENTER API';
const openWeather = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityAndApiData(String typedName) async {
    Networking networking =
        Networking(url: '$openWeather?q=$typedName&appid=$apiKey&units=metric');
    var decodedCityWeatherData = await networking.getApiData();
    return decodedCityWeatherData;
  }

  Future<dynamic> getLocationAndApiData() async {
    Location locationObject = Location();
    await locationObject.getCurrentLocation();

    Networking networking = Networking(
        url:
            '$openWeather?lat=${locationObject.latitude}&lon=${locationObject.longitude}&appid=$apiKey&units=metric');
    var decodedWeatherData = await networking.getApiData();
    return decodedWeatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
