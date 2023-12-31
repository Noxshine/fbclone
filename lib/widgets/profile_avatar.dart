import 'package:anti_fb/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;
  final VoidCallback onPressed;

  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 17.0,
            backgroundColor: FBBLUE,
            child: CircleAvatar(
              radius: hasBorder ? 17.0 : 20.0,
              backgroundColor: GREY[200],
              backgroundImage: imageUrl == ''
                  ? const AssetImage(defaultAvatar) as ImageProvider<Object>?
                  : CachedNetworkImageProvider(imageUrl),
            ),
          ),
          isActive
              ? Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 15.0,
                    width: 15.0,
                    decoration: BoxDecoration(
                      color: ONLINE,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: WHITE,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
