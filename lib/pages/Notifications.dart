import 'dart:ui';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class NotificationData {
  final IconData iconData;
  final String title;
  final String description;

  NotificationData({
    required this.iconData,
    required this.title,
    required this.description,
  });
}

class _NotificationsState extends State<Notifications> {
  final List<NotificationData> notifications = [
    NotificationData(
      iconData: Icons.credit_card_outlined,
      title: 'Payment Successfully!',
      description:
          'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
    ),
    NotificationData(
      iconData: Icons.percent_outlined,
      title: '30% Special Discount!',
      description:
          'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF262628),
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF262628),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return Slidable(
                    endActionPane: ActionPane(
                      extentRatio: .3,
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          icon: Icons.delete,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red[700]!,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Color(0xFF202938),
                        child: ListTile(
                          leading: Stack(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF16191F),
                                ),
                              ),
                              Positioned.fill(
                                child: ClipOval(
                                  child: Icon(notification.iconData,
                                      color: Color(0xFFE25319)),
                                ),
                              ),
                            ],
                          ),
                          title: Text(
                            notification.title,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            notification.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFD0D0D0),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: notifications.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
