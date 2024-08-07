import 'package:education_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Channel extends StatelessWidget {
  const Channel(
      {super.key,
      required this.channelName,
      required this.onTap,
      required this.channelEmail,
      required this.imageName});
  final String channelName;
  final void Function()? onTap;
  final String imageName;
  final String channelEmail;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Card(
                child: Image.asset(
                  imageName,
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(channelName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child:
                      Text(channelEmail, style: const TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ChannelIcon extends StatelessWidget {
  const ChannelIcon(
      {super.key,
      this.onTap,
      required this.channelName,
      required this.imageName});
  final void Function()? onTap;
  final String channelName;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    imageName,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                )),
            Text(channelName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class ChannelIcon1 extends StatelessWidget {
  const ChannelIcon1({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: TColors.primaryColor),
              child: const Icon(Icons.image),
            ),
          ],
        ),
      ),
    );
  }
}
