class ApiConstants{
  static const String baseUrl = 'https://api.weatherapi.com/v1';
  static const String apiKey = '827aba509add4e0b8a1104155220609';
  static const String forecastOneDay = '$baseUrl/forecast.json?key=$apiKey&q=Ashmun&days=1&aqi=no&alerts=no';
  static const String forecastSevenDays = '$baseUrl/forecast.json?key=$apiKey&q=Ashmun&days=7&aqi=no&alerts=no';
}