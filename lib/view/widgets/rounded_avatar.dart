import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiz_first/constants/common_size.dart';

class RoundedAvatar extends StatelessWidget {
  final double avatarSize;

  const RoundedAvatar({Key? key, this.avatarSize = avatar_size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: 'https://picsum.photos/100',
        width: avatarSize,
        height: avatarSize,
      ),
    );
  }
}
