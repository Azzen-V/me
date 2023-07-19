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
  final Curve _curve = Curves.easeInOut;

  late final AnimationController _controllerWork = AnimationController(duration: _duration, vsync: this)..forward();
  late final Animation<double> _animationWork = CurvedAnimation(parent: _controllerWork, curve: _curve);

  late final AnimationController _controllerSchool = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationSchool = CurvedAnimation(parent: _controllerSchool, curve: _curve);

  late final AnimationController _controllerContact = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationContact = CurvedAnimation(parent: _controllerContact, curve: _curve);

  late final AnimationController _controllerSkills = AnimationController(duration: _duration, vsync: this);
  late final Animation<double> _animationSkills = CurvedAnimation(parent: _controllerSkills, curve: _curve);

  CVType _current = CVType.work;
  bool _workVisible = true;
  bool _schoolVisible = false;
  bool _contactVisible = false;
  bool _skillsVisible = false;

  @override
  void dispose() {
    _controllerWork.dispose();
    _controllerSchool.dispose();
    _controllerContact.dispose();
    _controllerSkills.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Work
        ExpandableItem(
          onTap: _workOnTap,
          animation: _animationWork,
          items: Constants.work,
          visible: _workVisible,
          child: const ColoredPillWork(center: true),
        ),
        // School
        ExpandableItem(
          onTap: _schoolOnTap,
          animation: _animationSchool,
          items: Constants.school,
          visible: _schoolVisible,
          child: const ColoredPillSchool(center: true),
        ),
        // Contact
        ExpandableItem(
          onTap: _contactOnTap,
          animation: _animationContact,
          animatedChild: const Column(
            children: [
              Center(child: Contact()),
              Separator.vertical(factor: 2),
            ],
          ),
          visible: _contactVisible,
          child: const ColoredPillContact(),
        ),
        // Skills
        ExpandableItem(
          onTap: _skillsOnTap,
          animation: _animationSkills,
          items: Constants.skills,
          visible: _skillsVisible,
          child: const ColoredPillSkills(),
        ),
      ],
    );
  }

  Future<void> _workOnTap() async {
    setState(() {
      _current = CVType.work;
      _workVisible = true;
    });
    await _handleAnimation();
    if (mounted) {
      setState(() {
        _schoolVisible = false;
        _contactVisible = false;
        _skillsVisible = false;
      });
    }
  }

  Future<void> _schoolOnTap() async {
    setState(() {
      _current = CVType.school;
      _schoolVisible = true;
    });
    await _handleAnimation();
    if (mounted) {
      setState(() {
        _workVisible = false;
        _contactVisible = false;
        _skillsVisible = false;
      });
    }
  }

  Future<void> _contactOnTap() async {
    setState(() {
      _current = CVType.contact;
      _contactVisible = true;
    });
    await _handleAnimation();
    if (mounted) {
      setState(() {
        _schoolVisible = false;
        _workVisible = false;
        _skillsVisible = false;
      });
    }
  }

  Future<void> _skillsOnTap() async {
    setState(() {
      _current = CVType.skills;
      _skillsVisible = true;
    });
    await _handleAnimation();
    if (mounted) {
      setState(() {
        _schoolVisible = false;
        _contactVisible = false;
        _workVisible = false;
      });
    }
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
    await Future.delayed(_duration);
  }
}
