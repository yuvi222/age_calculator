import 'package:age/age.dart';

class AgeCalculation {
  // Calculate Age of person
  AgeDuration calculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    return age;
    // print(age.days);
    // print(age.months);
    // print(age.years);
    // print('Your age is $age');
  }

  // Calculate NextBirthday
  AgeDuration nextBirthday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;

    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    return nextBirthdayDuration;
  }

  // Calculate NextBirthday WeekDay
  int nextbday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthdayDate = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    return nextBirthdayDate.weekday;
  }
}
