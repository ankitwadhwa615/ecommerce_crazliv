import 'package:ecommerce_crazliv/Constants.dart';
import 'package:flutter/material.dart';

class SizeRadioItem extends StatelessWidget {
  final SizeRadioModel _item;
  SizeRadioItem(this._item,);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: _item.isSelected ? Colors.red : Colors.black,
            width: 1.0,
          )),
      child: Padding(
        padding: EdgeInsets.all(_item.padding),
        child: Text(
          _item.buttonText,
          style: TextStyle(
              color: _item.isSelected ? Colors.red : Colors.black,
              fontSize: 15),
        ),
      ),
    );
  }
}

class SizeRadioModel {
  bool isSelected;
  final String buttonText;
  final double padding;
  SizeRadioModel(
    this.isSelected,
    this.buttonText,
      this.padding

  );
}

class CategoryRadioItem extends StatelessWidget {
  final CategoryRadioModel _item;
  CategoryRadioItem(this._item,);
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 35,
        decoration: BoxDecoration(
          color: _item.isSelected?black:Colors.white,
          border: Border.symmetric(
            vertical: BorderSide(
                color: Colors.grey, width: 0.5),
            horizontal: BorderSide(
                color: Colors.grey, width: 0.5),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text('   ${_item.buttonText}   ',style: TextStyle(color: _item.isSelected?Colors.white: Colors.black,fontFamily: 'QuickSand',fontWeight: FontWeight.w500),),
        )));
  }
}

class CategoryRadioModel {
  bool isSelected;
  final String buttonText;
  CategoryRadioModel(
      this.isSelected,
      this.buttonText,
      );
}