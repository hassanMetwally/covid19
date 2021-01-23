import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant.dart';

class PreventCard extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const PreventCard({
    Key key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 156,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 8), blurRadius: 24, color: kShadowColor)
                  ]),
            ),
            Image.asset(image),
            Positioned(
                left: 130,
                child: Container(
                  height: 136,
                  width: MediaQuery.of(context).size.width - 170,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: kTitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset("assets/icons/forward.svg")),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}