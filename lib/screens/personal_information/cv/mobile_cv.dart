import 'package:flutter/material.dart';
import 'package:me/business_logic/data/constants.dart';
import 'package:me/screens/personal_information/cv/contact.dart';
import 'package:me/screens/personal_information/cv/expandable_item.dart';
import 'package:me/widgets/colored_pills.dart/colored_pill_school.dart';
import 'package:me/widgets/colored_pills.dart/colored_pill_skills.dart';
import 'package:me/widgets/colored_pills.dart/colored_pill_work.dart';
import 'package:me/widgets/colored_pills.dart/coloredd_pill_contact.dart';
import 'package:me/widgets/separator.dart';

enum CVType {
  work,
  school,
  contact,
  skills;
}

class MobileCV extends StatefulWidget {
  const MobileCV({Key? key}) : super(key: key);

  @override
  State<MobileCV> createState() => _MobileCVState();
}

class _MobileCVState extends State<MobileCV> with TickerProviderStateMixin {
  final Duration _duration = const Duration(milliseconds: 300);
  final Curve _curve = Curves.bounceInOut;

  late final AnimationController _controllerWork = AnimationController(duration: _duration, vsync: this)..forward();
  late final Animation<double> _animationWork = CurvedAnimation(parent: _controllerWork, curve: _curve);

  late final AnimationController _controllerSchool = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationSchool = CurvedAnimation(parent: _controllerSchool, curve: _curve);

  late final AnimationController _controllerContact = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationContact = CurvedAnimation(parent: _controllerContact, curve: _curve);

  late final AnimationController _controllerSkills = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationSkills = CurvedAnimation(parent: _controllerSkills, curve: _curve);

  CVType _current = CVType.work;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Work
        ExpandableItem(
          onTap: () async {
            setState(() => _current = CVType.work);
            await _handleAnimation();
          },
          animation: _animationWork,
          items: Constants.work,
          child: const ColoredPillWork(center: true),
        ),
        // School
        ExpandableItem(
          onTap: () async {
            setState(() => _current = CVType.school);
            await _handleAnimation();
          },
          animation: _animationSchool,
          items: Constants.school,
          child: const ColoredPillSchool(center: true),
        ),
        // Contact
        ExpandableItem(
          onTap: () async {
            setState(() => _current = CVType.contact);
            await _handleAnimation();
          },
          animation: _animationContact,
          animatedChild: const Column(
            children: [
              Center(child: Contact()),
              Separator.vertical(factor: 2),
            ],
          ),
          child: const ColoredPillContact(),
        ),
        // Skills
        ExpandableItem(
          onTap: () async {
            setState(() => _current = CVType.skills);
            await _handleAnimation();
          },
          animation: _animationSkills,
          items: Constants.skills,
          child: const ColoredPillSkills(),
        ),
      ],
    );
  }

  Future<void> _handleAnimation() async {
    switch (_current) {
      case CVType.work:
        _controllerWork.forward();
        _controllerContact.reverse();
        _controllerSchool.reverse();
        _controllerSkills.reverse();
      case CVType.school:
        _controllerSchool.forward();
        _controllerContact.reverse();
        _controllerWork.reverse();
        _controllerSkills.reverse();
      case CVType.contact:
        _controllerContact.forward();
        _controllerWork.reverse();
        _controllerSchool.reverse();
        _controllerSkills.reverse();
      case CVType.skills:
        _controllerSkills.forward();
        _controllerContact.reverse();
        _controllerSchool.reverse();
        _controllerWork.reverse();
    }
  }
}
