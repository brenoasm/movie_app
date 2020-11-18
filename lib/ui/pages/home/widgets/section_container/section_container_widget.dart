import 'package:flutter/material.dart';

class SectionContainerWidget extends StatelessWidget {
  final double height;
  final EdgeInsets margin;
  final Widget child;
  final String title;
  final String titleButtonText;
  final Function onTitleButtonPressed;

  const SectionContainerWidget({
    Key key,
    this.margin,
    this.title,
    this.titleButtonText,
    this.onTitleButtonPressed,
    @required this.height,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: double.infinity,
      child: title != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6.apply(
                          fontSizeFactor: 0.9,
                          color: Theme.of(context).accentColor,
                          fontWeightDelta: 600,
                          shadows: [
                            Shadow(
                              color: Theme.of(context).accentColor,
                              blurRadius: 1.5,
                            )
                          ],
                        ),
                      ),
                      if (titleButtonText != null)
                        TextButton(
                          onPressed: onTitleButtonPressed,
                          child: Text(
                            titleButtonText,
                            style: Theme.of(context).textTheme.headline6.apply(
                              fontSizeFactor: 0.9,
                              color: Colors.red,
                              fontWeightDelta: 600,
                              shadows: [
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 1.5,
                                )
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                Expanded(child: child),
              ],
            )
          : child,
    );
  }
}
