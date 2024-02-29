import 'package:doctro_user/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class NotiFication extends StatelessWidget {
  const NotiFication({super.key});

  @override
  Widget build(BuildContext context) {
    final hieght = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<UserController>(
          builder: (context, notificationController, _) {
        return FutureBuilder(
            future: notificationController.fetchNotifications(context),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: notificationController.notificationList.length,
                  itemBuilder: (context, index) {
                    String formatttedDate = DateFormat('dd-MM-yy').format(
                        DateTime.parse(notificationController
                            .notificationList[index].bookingDate));
                    String formatttedTime = DateFormat('jm').format(
                        DateTime.parse(notificationController
                            .notificationList[index].bookingDate));
                    return Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Container(
                            height: hieght * .2,
                            width: width * .9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(34, 42, 133, 244),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 40),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      notificationController
                                          .notificationList[index].doctorName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: hieght * .1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Your booking to Dr. ${notificationController.notificationList[index].doctorName} on $formatttedDate $formatttedTime is cancelled.',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                      ),
                                    ),
                                  ),
                                  // Align(
                                  //   alignment: Alignment.bottomRight,
                                  //   child: Text(notificationController
                                  //       .notificationList[index].bookingDate),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            });
      }),
    );
  }
}
