class NotificationModel {
  String notiID;
  String userID;
  String doctorID;
  String doctorName;
  String bookingDate;

  NotificationModel({
    required this.notiID,
    required this.userID,
    required this.doctorID,
    required this.doctorName,
    required this.bookingDate,
  });

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
        notiID: map['notiID'],
        userID: map['userID'],
        doctorID: map['doctorID'],
        doctorName: map['doctorName'],
        bookingDate: map['bookingDate']);
  }

  Map<String, dynamic> toMap() {
    return {
      'notiID': notiID,
      'userID': userID,
      'doctorID': doctorID,
      'doctorName': doctorName,
      'bookingDate': bookingDate,
    };
  }
}
