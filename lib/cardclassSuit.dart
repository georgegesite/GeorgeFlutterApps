import 'dart:core';
import 'package:flutter/material.dart';

class Suits {
  final int key;
  final String imgpath;
  final int value;

  Suits(this.key, this.imgpath, this.value);
}

var card1 = Suits(1, 'assets/AS.png', 1);
var card2 = Suits(2, 'assets/AH.png', 1);
var card3 = Suits(3, 'assets/AC.png', 1);
var card4 = Suits(4, 'assets/AD.png', 1);
var card5 = Suits(5, 'assets/2S.png', 2);
var card6 = Suits(6, 'assets/2H.png', 2);
var card7 = Suits(7, 'assets/2C.png', 2);
var card8 = Suits(8, 'assets/2D.png', 2);
var card9 = Suits(9, 'assets/3S.png', 3);
var card10 = Suits(10, 'assets/3H.png', 3);
var card11 = Suits(11, 'assets/3C.png', 3);
var card12 = Suits(12, 'assets/3D.png', 3);
var card13 = Suits(13, 'assets/4S.png', 4);
var card14 = Suits(14, 'assets/4H.png', 4);
var card15 = Suits(15, 'assets/4C.png', 4);
var card16 = Suits(16, 'assets/4D.png', 4);
var card17 = Suits(17, 'assets/5S.png', 5);
var card18 = Suits(18, 'assets/5H.png', 5);
var card19 = Suits(19, 'assets/5C.png', 5);
var card20 = Suits(20, 'assets/5D.png', 5);
var card21 = Suits(21, 'assets/6S.png', 6);
var card22 = Suits(22, 'assets/6H.png', 6);
var card23 = Suits(23, 'assets/6C.png', 6);
var card24 = Suits(24, 'assets/6D.png', 6);
var card25 = Suits(25, 'assets/7S.png', 7);
var card26 = Suits(26, 'assets/7H.png', 7);
var card27 = Suits(27, 'assets/7C.png', 7);
var card28 = Suits(28, 'assets/7D.png', 7);
var card29 = Suits(29, 'assets/8S.png', 8);
var card30 = Suits(30, 'assets/8H.png', 8);
var card31 = Suits(31, 'assets/8C.png', 8);
var card32 = Suits(32, 'assets/8D.png', 8);
var card33 = Suits(33, 'assets/9S.png', 9);
var card34 = Suits(34, 'assets/9H.png', 9);
var card35 = Suits(35, 'assets/9C.png', 9);
var card36 = Suits(36, 'assets/9D.png', 9);
var card37 = Suits(37, 'assets/10S.png', 10);
var card38 = Suits(38, 'assets/10H.png', 10);
var card39 = Suits(39, 'assets/10C.png', 10);
var card40 = Suits(40, 'assets/10D.png', 10);
var card41 = Suits(41, 'assets/JS.png', 11);
var card42 = Suits(42, 'assets/JH.png', 11);
var card43 = Suits(43, 'assets/JC.png', 11);
var card44 = Suits(44, 'assets/JD.png', 11);
var card45 = Suits(45, 'assets/QS.png', 12);
var card46 = Suits(46, 'assets/QH.png', 12);
var card47 = Suits(47, 'assets/QC.png', 12);
var card48 = Suits(48, 'assets/QD.png', 12);
var card49 = Suits(49, 'assets/KS.png', 13);
var card50 = Suits(50, 'assets/KH.png', 13);
var card51 = Suits(51, 'assets/KC.png', 13);
var card52 = Suits(52, 'assets/KD.png', 13);

var cardList = <Suits>[];

void addSuits() {
  cardList = [];
  cardList.add(card1);
  cardList.add(card2);
  cardList.add(card3);
  cardList.add(card4);
  cardList.add(card5);
  cardList.add(card6);
  cardList.add(card7);
  cardList.add(card8);
  cardList.add(card9);
  cardList.add(card10);
  cardList.add(card11);
  cardList.add(card12);
  cardList.add(card13);
  cardList.add(card14);
  cardList.add(card15);
  cardList.add(card16);
  cardList.add(card17);
  cardList.add(card18);
  cardList.add(card19);
  cardList.add(card20);
  cardList.add(card21);
  cardList.add(card22);
  cardList.add(card23);
  cardList.add(card24);
  cardList.add(card25);
  cardList.add(card26);
  cardList.add(card27);
  cardList.add(card28);
  cardList.add(card29);
  cardList.add(card30);
  cardList.add(card31);
  cardList.add(card32);
  cardList.add(card33);
  cardList.add(card34);
  cardList.add(card35);
  cardList.add(card36);
  cardList.add(card37);
  cardList.add(card38);
  cardList.add(card39);
  cardList.add(card40);
  cardList.add(card41);
  cardList.add(card42);
  cardList.add(card43);
  cardList.add(card44);
  cardList.add(card45);
  cardList.add(card46);
  cardList.add(card47);
  cardList.add(card48);
  cardList.add(card49);
  cardList.add(card50);
  cardList.add(card51);
  cardList.add(card52);
}

void cardListShuffle() {
  cardList.shuffle();
}

void cardResetandShuffle() {
  cardList = [];
  addSuits();
  cardListShuffle();
}

List<dynamic> store = [];
