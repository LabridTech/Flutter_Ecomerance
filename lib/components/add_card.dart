import 'package:flutter/material.dart';
import 'drop_down.dart';
import '../models/product_detail.dart';

// ignore: must_be_immutable
class AddproductCard extends StatelessWidget {
  AddproductCard({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _pricecontroller = TextEditingController();
  //final _colorcontroller = TextEditingController();
  final _imagecontroller = TextEditingController();
  final _decriptioncontroller = TextEditingController();
  ProductDetails productdetails = ProductDetails();

  void selectingcolor(Color dynamiccolor) {
    productdetails.color.add(dynamiccolor);
    //print(dynamiccolor);
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 100,
        right: 10,
        left: 10,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                controller: _namecontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter the product name',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                controller: _pricecontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter the product price',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                controller: _imagecontroller,
                decoration: const InputDecoration(
                  hintText: 'Add image name',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: const DropdownMenuExample(),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: TextFormField(
                minLines: 2,
                maxLines: 4,
                controller: _decriptioncontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter product Description',
                  border: OutlineInputBorder(),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      productdetails.name = _namecontroller.text;
                      productdetails.price = _pricecontroller.text;
                      productdetails.imagename = _imagecontroller.text;
                      productdetails.description = _decriptioncontroller.text;
                    }
                  },
                  child: const Center(
                    child: Text('ADD'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
