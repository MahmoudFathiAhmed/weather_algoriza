class ApiConstants{
  static const String baseUrl = 'https://api.weatherapi.com/v1';
  static const String apiKey = '827aba509add4e0b8a1104155220609';
  static String forecastOneDay (String location)=> '$baseUrl/forecast.json?key=$apiKey&q=$location&days=1&aqi=no&alerts=no';
  static String forecastSevenDays (String location)=> '$baseUrl/forecast.json?key=$apiKey&q=$location&days=7&aqi=no&alerts=no';
}