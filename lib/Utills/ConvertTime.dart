String EpochToDate(int epochTimestamp) {
  // Convert epoch to DateTime
  DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(epochTimestamp * 1000);

  // Format DateTime
  String formattedDateTime =
      "${_getMonth(dateTime.month)} ${dateTime.day}, ${formatTime(dateTime)}";

  return formattedDateTime;
}

String _getMonth(int month) {
  const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  return months[month - 1];
}

String formatTime(DateTime dateTime) {
  int hour = dateTime.hour;
  int minute = dateTime.minute;
  String period = hour < 12 ? 'AM' : 'PM';

  if (hour > 12) {
    hour = hour - 12;
  } else if (hour == 0) {
    hour = 12;
  }

  String formattedTime = '$hour:${minute.toString().padLeft(2, '0')} $period';

  return formattedTime;
}

String convertEpochToTimeAgo(String epochTimeStr) {
  DateTime currentDateTime = DateTime.now();
  DateTime epochDateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(epochTimeStr));

  Duration timeDifference = currentDateTime.difference(epochDateTime);

  int days = timeDifference.inDays;
  int hours = timeDifference.inHours.remainder(24);
  int minutes = timeDifference.inMinutes.remainder(60);

  if (days > 0) {
    return '$days days ago';
  } else if (hours > 0) {
    return '$hours hours ago';
  } else if (minutes > 0) {
    return '$minutes minutes ago';
  } else {
    return 'Just now';
  }
}
