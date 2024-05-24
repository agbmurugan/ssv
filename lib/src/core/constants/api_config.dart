class ApiConfig {
  ApiConfig._();
  static const String devUrl =
      "https://rajamariammandevapi.grasp.com.my/public/";
  static const String prodUrl = "";
  static const String baseUrl = devUrl;
  static const Duration receiveTimeout = Duration(milliseconds: 10000);
  static const Duration connectionTimeout = Duration(milliseconds: 10000);
  static const String archanai = 'archanai/ticket_page';
  static const String signUp = 'customer/register';
  static const String signIn = 'customer/login';


//Authorization:

  // static Map<String, dynamic>? header = {
  //   'content-Type': 'application/json',
  //   'Authorization':
  //       "eyJhbGciOiJIUzUxMiJ9.eyJpc3MiOiIxIiwiaWF0IjoxNzE0MTI5NDY4LCJleHAiOjE4MDA1Mjk0Njh9.jRr3bqd3wFOHoa8Vsi6FSyLkIGfDYIgv5IPassXaXX6SXn1tp-dG7UzzJvic4HWhmvW8IBkFykAHJUiek3pCaQ"
  // };

  static const target = "data";
  static const status = "success";
  static const statusCode = "status";
  static const errorCode = "errorCode";

  static const type = "type";
  static const mobile = "mobile";
}
