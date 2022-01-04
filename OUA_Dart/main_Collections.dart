import 'package:flutter/material.dart';

void main() {
  final List<int> l = [1,2,3,4,5];
  final Set<int >s = {1,2,3,4,5};
  final Map<int,int> m = {1:10, 2:20, 3:30, 4:40, 5:50};

  final Iterable<int> li = l;
  final Iterable<int> si = s;
  final Iterable<MapEntry<int,int>> mei = m.entries;
  final Iterable<int> mki = m.keys;
  final Iterable<int> mvi = m.values;

  for (final l in li){
    print("Liste elemanlari : $l");
  }

  for (final s in si){
    print("Set elemanlari : $s");
  }

  for(final m in mei){
    print("Map elemanlari : $m");
    print("Key: ${m.key}\tValue: ${m.value}");
  }

  print([1,55,62,8,...l, 25,48,96,47]);
  print({1,23,45,56, ...s, 5,48,96});
  print({1:5,2:9, ...m, 10:100,7:70});

  print("if ve for");
  print([
    1,2,3,
    if(1==1)
      55,
    if(4==5)
      66
    else
      89,
    for(int i =55; i<58 ;++i)
      i,
  4,5,6
  ]);

  print({
    1,2,3,
    if(1==1)
      55,
    if(4==5)
      66
    else
      89,
    for(int i =55; i<58 ;++i)
       i,
    4,5,6
 });

  print({
    1:2,
    3:4,
    if(1==1)
      5:55,
    if(4==5)
      6:66
    else
      8: 89,
    for(int i =55; i<58 ;++i)
      i: i*10,
    4:5
  });

  print("Spread ve if/for kombinasyonları;");
  print([
    1,2,3,
    if(1==1)
      [10,20,30],
    if(4==5)
      66
    else
      89,
    for(int i =55; i<58 ;++i)
      i,
    4,5,6
  ]);

  print([
    1,2,3,
    if(1==1)
      ...([10,20,30]+[3,3,3]), // ... sayesinde list yapısı bozulmadı
    if(4==5)
      66
    else
      89,
    for(int i =55; i<58 ;++i)
      i,
    4,5,6
  ]);

  // Collection Methods
  final iterable = [1,2,3,4,5,6,7,8,9,0];
  print(iterable);
  print(iterable.first);
  print(iterable.last);
  print(iterable.lastIndexWhere((element) => element < 7));
  print(iterable.lastWhere((element) => element < 7));
  print(iterable.firstWhere((element) => element % 4 ==0)); //ilk dörde bölünen elemanı getir
  print(iterable.any((element)=> element< 5));
  print(iterable.every((element)=> element< 5));
  print(iterable.fold<int>(0, (previousValue, element) => previousValue + element)); //Tekrar bak
  print(iterable.where((element) => element < 5));
  print(iterable.map((e) => "$e. element"));
}
