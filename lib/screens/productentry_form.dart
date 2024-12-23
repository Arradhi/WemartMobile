import 'package:flutter/material.dart';
import 'package:wemart/widgets/left_drawer.dart';
import 'dart:convert';
import 'package:wemart/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


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
    final request = context.watch<CookieRequest>();
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
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
           final response = await request.postJson(
                          "http://127.0.0.1:8000/create-flutter/",
                          jsonEncode(<String, String>{
                            'productName': _ProductName,
                            'amount': _Amount.toString(),
                            'description': _Description,
                            // TODO: Sesuaikan field data sesuai dengan aplikasimu
                          }),
        
      );
          if (context.mounted) {
                          if (response['status'] == 'success') {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Produk baru berhasil disimpan!"),
                            ));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "Terdapat kesalahan, silakan coba lagi."),
                            ));
                          }
                        }
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