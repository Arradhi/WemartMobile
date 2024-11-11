import 'package:flutter/material.dart';
import 'package:wemart/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
final _formKey = GlobalKey<FormState>();
String _ProductName = "";
	String _Description = "";
	int _Amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Form Tambah Produk',
      ),
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Colors.white,
  ),
  drawer: const LeftDrawer(),
  body: Form(
     key: _formKey,
  child: SingleChildScrollView(
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Produk",
          labelText: "Produk",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _ProductName = value!;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Nama produk tidak boleh kosong!";
          }
          return null;
        },
      ),
    ),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Description",
      labelText: "Description",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _Description = value!;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Description tidak boleh kosong!";
      }
      return null;
    },
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Amount",
      labelText: "Amount",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _Amount = int.tryParse(value!) ?? 0;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Jumlah tidak boleh kosong!";
      }
      if (int.tryParse(value) == null) {
        return "Jumlah harus berupa angka!";
      }
      return null;
    },
  ),
),Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
            Theme.of(context).colorScheme.primary),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
             showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Produk berhasil tersimpan'),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Produk: $_ProductName'),
                  Text('Deskripsi: $_Description'),
                  Text('Harga: $_Amount'),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                  _formKey.currentState!.reset();
                },
              ),
            ],
          );
        },
      );
          
        }
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),],
),
)
),
);
  }
}