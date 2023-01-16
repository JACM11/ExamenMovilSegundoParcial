import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  const BaseAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Noticias Network Dio'),
      backgroundColor: Color(0xff885566)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
