import 'package:flutter/material.dart';

class bottonWidget extends StatelessWidget {
  const bottonWidget({
    this.ontap,
    super.key,
  });
  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.amber),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Update Data'),
            ],
          ),
        ),
      ),
    );
  }
}
