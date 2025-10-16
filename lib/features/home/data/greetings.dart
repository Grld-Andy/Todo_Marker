import 'package:intl/intl.dart';

List<String> greetings = [
  "Hello",
  "Hi",
  "Nice to have you here",
  "Hey there",
  "What's up",
  "Greetings",
  "Howdy",
  "Hey",
  "Hiya",
  "Good to see you",
  "Welcome",
];

String _getTimeBasedGreeting(){
  final int hour = DateTime.now().hour;

  if (hour < 12) {
    return "Good morning";
  } else if (hour < 17) {
    return "Good afternoon";
  } else if (hour < 21) {
    return "Good evening";
  } else {
    return "Good night";
  }
}

String? _getFestivalGreeting() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('MM-dd');
  final String today = formatter.format(now);

  const festivalMap = {
    '01-01': 'Happy New Year',
    '02-14': 'Happy Valentine\'s Day',
    '03-17': 'Happy St. Patrick\'s Day',
    '04-22': 'Happy Earth Day',
    '10-31': 'Happy Halloween',
    '12-25': 'Merry Christmas',
    '12-31': 'Happy New Year\'s Eve',
  };

  return festivalMap[today];
}

String getGreeting(){
  final festivalGreeting = _getFestivalGreeting();

  if(festivalGreeting != null){
    return festivalGreeting;
  }

  final String timeGreeting = _getTimeBasedGreeting();
  final String randomGreeting = (greetings..shuffle()).first;
  final bool useTimeGreeting = DateTime.now().second % 2 == 0;

  final String greeting = useTimeGreeting ? timeGreeting : randomGreeting;
  return greeting;
}