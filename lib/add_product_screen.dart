import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add New Peoduct'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _titleTEController,
                  decoration: const InputDecoration(
                    hintText: 'Product Title',
                    label: Text('Product Title'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _quantityTEController,
                  decoration: const InputDecoration(
                    hintText: 'Product Quantity',
                    label: Text('Product Quantity'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _imageTEController,
                  decoration: const InputDecoration(
                    hintText: 'Product Image',
                    label: Text('Product Image'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _unitPriceTEController,
                  decoration: const InputDecoration(
                    hintText: 'Unit Price',
                    label: Text('Unit Price'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _totalPriceTEController,
                  decoration: const InputDecoration(
                    hintText: 'Total Price',
                    label: Text('Total Price'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String? value){
                    if (value!.trim().isEmpty) {
                      return 'Enter product info';
                    }
                    return null;
                  },
                  controller: _codeTEController,
                  decoration: const InputDecoration(
                    hintText: 'Product Code',
                    label: Text('Product Code'),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                      child: const Text('Save')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
