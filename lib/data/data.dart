import 'package:flutter/material.dart';
import 'package:myapp/assets.dart';
import 'package:myapp/models/content_model.dart';


final Content sanContent = Content(
  name: 'san',
  imageUrl: Assets.san,
  titleImageUrl: Assets.sanTitle,
);

final List<Content> scholars = const [
  Content(
    name: 'Sheikh Bahmanpour',
    imageUrl: Assets.bahmanpour,
  ),
 
  Content(
    name: 'Shaykh Dr Shomali',
    imageUrl: Assets.shomali,

  ),
  Content(
    name: 'Sayed Munir Al-Khabaz',
    imageUrl: Assets.munir,
  ),
  Content(
    name: 'Shaykh Salim Yusufali',
    imageUrl: Assets.salim,
  ),
  Content(
    name: 'Sheikh Usama Abdulghani ',
    imageUrl: Assets.usama,
    
  ),
  Content(
    name: 'Sayed Ammar Nakshawani',
    imageUrl: Assets.san2,
  ),
]; 

final List<Content> favLec = const [
  Content(name: 'Usama', imageUrl: Assets.usama),
  Content(name: 'Sayed Munir Al-Khabaz', imageUrl: Assets.munir),
];

final List<Content> muharram = const [
  Content(name: 'Ladak', imageUrl: Assets.ladak),
  Content(name: 'Hilli', imageUrl: Assets.hilli),
  Content(name: 'Shaykh Dr Shomali', imageUrl: Assets.shomali),
  Content(name: 'AIM', imageUrl: Assets.aim),
  Content(name: 'Sheikh Azhar Nasser', imageUrl: Assets.nasser),
  Content(name: 'Ladak', imageUrl: Assets.ladak),
  Content(name: 'Hilli', imageUrl: Assets.hilli),
  Content(name: 'Shaykh Dr Shomali', imageUrl: Assets.shomali),
  Content(name: 'AIM', imageUrl: Assets.aim),
  Content(name: 'Sheikh Azhar Nasser', imageUrl: Assets.nasser),
];

final List<Content> ramadhan = const [
  Content(name: 'Ramadhan', imageUrl: Assets.ramadhan),
  Content(name: 'Ramadhan 2', imageUrl: Assets.ramadhan2),
  Content(name: 'Ramadhan 3', imageUrl: Assets.ramadhan3),
  Content(name: 'Ramadhan 4', imageUrl: Assets.ramadhan4),
  Content(name: 'Ammar', imageUrl: Assets.san),
  Content(name: 'Munir', imageUrl: Assets.munir),
  Content(name: 'Usama', imageUrl: Assets.usama),
  Content(name: 'Ramadhan 4', imageUrl: Assets.ramadhan4),
];
