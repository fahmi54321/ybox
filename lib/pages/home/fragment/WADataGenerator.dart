import 'package:cloud_storage/pages/home/fragment/WalletAppModel.dart';
import 'package:flutter/material.dart';

List<WATransactionModel> waCategoriesList() {
  List<WATransactionModel> list = [];
  list.add(WATransactionModel(color: Color(0xFF26C884), title: 'Album', image: 'images/wa_clothes.png', balance: '5 Gb', time: 'Today 12:30 PM'));
  list.add(WATransactionModel(color: Color(0xFFFF7426), title: 'Video', image: 'images/wa_food.png', balance: '4 Gb', time: 'Today 1:02 PM'));
  list.add(WATransactionModel(color: Color(0xFFFF7426), title: 'Audio', image: 'images/wa_food.png', balance: '1 Gb', time: 'Today 1:02 PM'));
  list.add(WATransactionModel(color: Color(0xFFFF7426), title: 'Ringtone', image: 'images/wa_food.png', balance: '3 Gb', time: 'Today 1:02 PM'));
  return list;
}

