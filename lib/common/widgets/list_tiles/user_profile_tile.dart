import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../images/circular_images.dart';


class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
  super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Sif Yacine", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text("ycn585@gmail.com", style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white,),),
      leading: const TCircularImage(
        image: "assets/user/user-image.png",
        height: 50,
        width: 50,
        padding: 0,
      ),
    );
  }
}