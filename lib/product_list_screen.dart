import 'package:flutter/material.dart';

import 'add_product_screen.dart';

enum PopUpMenuType {
  edit,
  delete,
}

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List of Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('Product Titile'),
              subtitle: const Wrap(
                spacing: 18,
                children: [
                  Text('Product Quantity'),
                  Text('Unit Price'),
                  Text(
                    'Total Price',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-photo/word-demo-appearing-behind-torn-260nw-1782295403.jpg'),
              ),
              trailing: PopupMenuButton<PopUpMenuType>(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: PopUpMenuType.edit,
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 10),
                        Text('Edit'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: PopUpMenuType.delete,
                    child: Row(
                      children: [
                        Icon(Icons.delete),
                        SizedBox(width: 10),
                        Text('Delete'),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProduct(),
            ),
          );
        },
        label: const Row(
          children: [
            Icon(Icons.add),
            Text('Add Product'),
          ],
        ),
      ),
    );
  }
}
