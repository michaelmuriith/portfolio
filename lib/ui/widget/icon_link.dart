import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './extensions/hover_extention.dart';
import 'package:url_launcher/url_launcher.dart';

class IconLink extends StatefulWidget {
  final IconData icon;
  final double? size;
  final Color color;
  final String url;

  const IconLink({
    Key? key,
    required this.icon,
    @required this.size,
    required this.color,
    required this.url,
  }) : super(key: key);
  @override
  State<IconLink> createState() => _IconLinkState();
}

class _IconLinkState extends State<IconLink> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var color = isHover ? widget.color : Colors.white;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (f) {
        setState((() {
          isHover = true;
        }));
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: GestureDetector(
        onTap: () async {
          String url = widget.url;
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 30,
          width: 30,
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            border: Border.all(color: isHover ? widget.color : Colors.white),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: FaIcon(
              color: color,
              widget.icon,
              size: widget.size!.toString().isEmpty ? 20 : widget.size!,
            ),
          ),
        ),
      ).showCursorOnHover,
    );
  }
}
