Tugas 7 Muhammad Fadhlan Arradhi - 2306240061

1. 
Stateless Widget adalah widget yang tidak memiliki state atau keadaan yang berubah. Setelah dibangun, tampilannya tetap sama dan tidak berubah selama siklus hidupnya. Stateless widget cocok digunakan ketika UI tidak perlu diperbarui atau direbuild berdasarkan perubahan data. Contoh widget yang Stateless dalam proyek ini adalah ItemCard dan InfoCard, karena keduanya hanya menampilkan data statis seperti ikon dan teks tanpa perubahan dinamis.
Sementara stateful Widget adalah widget yang memiliki state yang bisa berubah selama siklus hidup widget tersebut. Ini berarti UI akan diperbarui setiap kali ada perubahan pada data atau kondisi widget. Stateful widget berguna jika aplikasi memerlukan perubahan tampilan yang tergantung pada interaksi pengguna atau data yang diperbarui. Dalam proyek ini, Stateful Widget akan digunakan jika ada elemen yang perlu diperbarui secara dinamis, seperti counter atau input yang bisa berubah. Perbedaan utama antara keduanya adalah stateless widget tidak menyimpan informasi yang berubah, sementara Stateful widget dapat menyimpan dan mengelola data yang berubah seiring interaksi pengguna atau perubahan data.

2.
Daftar Widget yang Digunakan
MaterialApp
Fungsi: Sebagai root widget untuk aplikasi Flutter, MaterialApp mengatur tema dan struktur aplikasi.
Penggunaan: Menetapkan warna utama (primarySwatch) dan menerapkan tema keseluruhan aplikasi.

Scaffold
Fungsi: Memberikan struktur dasar pada halaman Flutter, seperti AppBar, body, dan area floating action button.
Penggunaan: Di proyek ini, Scaffold digunakan untuk menyediakan tata letak dasar halaman dengan AppBar dan konten di body.

AppBar
Fungsi: Menampilkan bagian atas aplikasi sebagai header, biasanya untuk judul atau ikon aksi.
Penggunaan: Digunakan di proyek ini untuk menampilkan judul "WeMart" di bagian atas aplikasi dengan gaya teks tebal.

Padding
Fungsi: Memberikan ruang di sekitar widget, memastikan jarak antara elemen di halaman.
Penggunaan: Padding digunakan di beberapa tempat, misalnya untuk memberi jarak di sekitar body Scaffold dan di sekitar teks.

Column
Fungsi: Menyusun widget secara vertikal (dari atas ke bawah).
Penggunaan: Digunakan untuk menempatkan elemen-elemen UI dalam susunan vertikal, seperti teks sambutan dan grid tombol.

Row
Fungsi: Menyusun widget secara horizontal (dari kiri ke kanan).
Penggunaan: Digunakan untuk menampilkan InfoCard secara horizontal, masing-masing berisi NPM, Nama, dan Kelas.

Text
Fungsi: Menampilkan teks dalam aplikasi.
Penggunaan: Digunakan di berbagai tempat, seperti untuk menampilkan judul di AppBar, teks sambutan, dan konten InfoCard.

Card
Fungsi: Memberikan tampilan dengan elevation atau bayangan untuk membuat elemen terlihat seperti kartu.
Penggunaan: Card digunakan di InfoCard untuk menampilkan informasi seperti NPM, Nama, dan Kelas dengan tampilan yang rapi.

Center
Fungsi: Memusatkan widget dalam area yang tersedia.
Penggunaan: Center digunakan untuk memastikan konten berada di tengah-tengah halaman atau area yang dibatasi.

GridView.count
Fungsi: Menampilkan widget dalam tata letak grid dengan jumlah kolom yang tetap.
Penggunaan: Digunakan untuk menampilkan ItemCard dalam tata letak grid dengan tiga kolom.

InkWell
Fungsi: Memberikan efek ripple atau animasi saat disentuh dan menangani gesture (sentuhan) pengguna.
Penggunaan: InkWell digunakan di dalam ItemCard untuk mendeteksi aksi onTap dan menampilkan SnackBar sebagai umpan balik.

SnackBar
Fungsi: Menampilkan pesan singkat atau notifikasi di bagian bawah layar.
Penggunaan: Digunakan untuk menampilkan pesan ketika pengguna menekan tombol, seperti "Kamu telah menekan tombol Lihat Daftar Produk".

Container
Fungsi: Memberikan kontrol penuh terhadap tata letak, termasuk margin, padding, dan warna latar.
Penggunaan: Container digunakan di dalam ItemCard untuk memberi padding dan menampilkan ikon serta teks di tengah.

Icon
Fungsi: Menampilkan ikon di dalam aplikasi.
Penggunaan: Digunakan untuk menampilkan ikon yang sesuai dengan tombol (misalnya, ikon mood, add, dan logout).

MediaQuery
Fungsi: Memberikan informasi tentang ukuran layar perangkat, seperti lebar dan tinggi.
Penggunaan: Digunakan di InfoCard untuk mengatur lebar kartu agar sesuai dengan ukuran layar.

SizedBox
Fungsi: Menambahkan spasi atau jarak antara widget.
Penggunaan: SizedBox digunakan untuk memberi jarak antara elemen di dalam InfoCard.

Material
Fungsi: Sebagai bagian dari desain Material, widget ini memberikan tampilan seperti background color, ripple effect, dan elevation.
Penggunaan: Digunakan di ItemCard untuk membungkus InkWell dan memberikan warna latar yang ditentukan.

3. 
setState() digunakan dalam Stateful Widget untuk memperbarui UI secara otomatis ketika data atau state widget berubah. Dengan memanggil setState(), Flutter akan me-rebuild widget terkait sehingga perubahan data ditampilkan pada layar. Misalnya, jika ada perubahan pada variabel yang ditampilkan di UI, setState() membuat UI merespon perubahan tersebut.
Pada proyek ini, karena hanya menggunakan Stateless Widget, setState() tidak langsung digunakan. Jika kita menambahkan fitur yang membutuhkan perubahan data secara dinamis (seperti jumlah produk dalam keranjang), maka setState() akan diperlukan untuk memperbarui UI setiap kali ada perubahan data tersebut.

4.
const digunakan untuk nilai yang diketahui dan tetap sejak waktu kompilasi. Dengan kata lain, nilai const bersifat immutable (tidak bisa diubah) dan harus ditentukan di awal. Contoh penggunaannya misalnya dalam const Text('WeMart'), di mana teks WeMart tidak akan berubah dan tetap sama.
final digunakan untuk nilai yang ditetapkan sekali, tetapi bisa diketahui pada waktu runtime. Berbeda dengan const, final memungkinkan untuk menyimpan nilai yang mungkin baru diketahui ketika program dijalankan. Contohnya, final name = "Muhammad Fadhlan Arradhi" adalah variabel final yang hanya bisa diset sekali, tetapi nilainya tidak perlu diketahui saat kompilasi. Perbedaan utamanya adalah const bersifat compile-time constant (tetap sejak kompilasi), sedangkan final bersifat runtime constant (ditetapkan sekali saat program berjalan).

5. 
pertama buat flutter project dengan perintah flutter create <APP_NAME> pada direktori yan diinginkan. selanjutnya cd menuju subfolder nama produk tersebut untuk melakukan run pada flutter nantinya. Pertama-tama kita akan menentukan warna Utama pada aplikasi di main.dart berikutnya kita akan membuat file menu.dart yang berisikan tampilan menu utama dari aplikasi. Pindahkan class myhompegae dan _myhomepagestate yang ada pada main menuju menu. Selanjutnya kita akan membuat sifat widget pada menu menjadi stateless. pada main, ubah const MyHomePage(title: 'Flutter Demo Home Page') menjadi MyHomePage(), lalu pada menu.dart kita terapkan langkah-langkah berikut :

Menghapus semua isi dari class MyHomePage ... seperti const MyHomePage({super.key, required this.title});, variabel final String title;, komentar-komentar pada berkas, dan State<MyHomePage> createState() => _MyHomePageState();

Mengubah ... extends StatefulWidget menjadi ... extends StatelessWidget pada class MyHomePage.

Menambahkan MyHomePage({super.key}); sebagai constructor class MyHomePage.

Menghapus seluruh class class _MyHomePageState extends State<MyHomePage>

Menambahkan widget build

Setelah mengubah widget menjadi statless, kita akan menambahkan card sederhana untuk menampilkan data diri. pada class MyHomePage extends StatelessWidget, tambahkan variabel-variabel yang akan digunakan. Setelah itu, kita akan membuat class InfoCard extends StatelessWidget untuk menampilkan data diri kita dan mengkonfigurasi tampilannya. Berikutnya kita akan membuat 3 tombol yaitu tambah produk, delete, dan login. Pertama buat kelas ItemHomepage yang akan menyimpan informasi dari object masing-masing tombol, Setelah itu pada class MyHomePage buatlah object dari tombol-tombol yang akan ditampilkan. Setelah itu kita akan membuat class ItemCard yang untuk mengatur desain tombol yang akan ditampilkan pada menu.

Untuk mempercantik tampilan, kita akan membuat setiap tombol memiliki warna yang berbeda serta menampilkan popup message apabila tombol di klik. pertama tambahkan atribut Color pada class ItemHomepage. Selanjutnya konfigurasi warna yang diinginkan pada saat object tombol dibuat di MyHomePage. lalu pada ItemCard, atur color menjadi item.color. untuk menampilkan popup message pada saat tombol ditekan, tambahkan kode berikut pada ItemCard :

```bash
child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
```
========================================================================================
Tugas 8 Muhammad Fadhlan Arradhi - 2306240061

1. 
const digunakan untuk mendefinisikan nilai yang tidak berubah (immutable). Ketika suatu widget atau objek ditandai dengan const, artinya widget tersebut tidak akan berubah sepanjang siklus hidupnya. Keuntungan menggunakan const adalah meningkatkan performa aplikasi karena widget tidak perlu dibangun ulang (rebuild) saat rendering ulang. const juga menghemat memori karena Flutter akan berbagi instans dari objek yang sama jika const digunakan. Sebaiknya gunakan const saat suatu widget atau objek tidak membutuhkan perubahan, seperti teks atau ikon yang bersifat statis. Namun, hindari menggunakan const jika nilai tersebut akan berubah seiring waktu atau bergantung pada data dinamis.

2.
Column dan Row adalah layout widget yang memungkinkan kamu mengatur posisi widget secara vertikal dan horizontal. Column digunakan untuk menyusun widget secara vertikal (ke bawah). Widget ini cocok digunakan untuk membuat layout berlapis-lapis atau susunan elemen yang bertumpuk ke bawah. Row digunakan untuk menyusun widget secara horizontal (ke samping). Widget ini cocok untuk menampilkan elemen yang berjajar satu garis.

Contoh implementasi:

```bash
Column:
dart
Copy code
Column(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)
Row:
dart
Copy code
Row(
  children: [
    Icon(Icons.star),
    Text("Rating"),
    Icon(Icons.star),
  ],
)
```

3.
Pada form tugas kali ini, saya menggunakan elemen input seperti TextFormField untuk input teks, DropdownButtonFormField untuk pilihan dropdown, dan ElevatedButton untuk mengirim data. Elemen input lain yang tersedia di Flutter, tetapi tidak digunakan dalam tugas ini, meliputi Checkbox, Switch, Radio, Slider, DatePicker, dan TimePicker. Elemen-elemen ini bisa digunakan sesuai kebutuhan, misalnya Switch untuk opsi on/off atau Slider untuk memilih nilai dalam rentang tertentu.

4.
Untuk mengatur tema dalam aplikasi Flutter agar konsisten, kita dapat menggunakan ThemeData pada MaterialApp untuk mendefinisikan warna utama, gaya teks, dan gaya tombol yang berlaku di seluruh aplikasi. Dengan cara ini, setiap elemen UI yang menggunakan tema akan otomatis mengikuti gaya yang telah diatur, sehingga tampilan aplikasi menjadi seragam. Berdasarkan kode saya, pada di file main.dart, saya sudah mulai menerapkan tema dasar dengan ThemeData. Saat ini, pengaturan temanya masih minimal, dan lebih fokus pada warna default (colorScheme) tanpa detail untuk elemen spesifik seperti textTheme atau buttonTheme.

5.
saya mengatur navigasi di aplikasi ini menggunakan Navigator.push dan Navigator.pushReplacement untuk berpindah ke halaman baru, dan Navigator.pop untuk kembali ke halaman sebelumnya. saya juga menggunakan Drawer di left_drawer.dart sebagai cara untuk mengakses halaman-halaman tertentu dengan cepat. Pendekatan ini memungkinkan pengguna untuk membuka halaman tambahan dari menu samping (drawer) dan kembali ke halaman utama dengan menutup halaman saat ini.

========================================================================================
Tugas 9 Muhammad Fadhlan Arradhi - 2306240061

1. 

Ketika berkomunikasi dengan server, data yang diterima atau dikirimkan sering kali dalam format JSON. JSON adalah format data berbasis teks yang fleksibel tetapi raw, sehingga membutuhkan struktur tambahan untuk mempermudah penggunaannya di aplikasi. Model diciptakan untuk mengatasi kebutuhan ini.

Misalnya, dalam file product_entry.dart, model ProductEntry membantu:

Mengatur data JSON menjadi objek Dart: JSON mentah yang diterima dari server diubah menjadi objek Dart yang lebih terstruktur. Ini dilakukan melalui metode fromJson

Menyediakan metode standar untuk konversi kembali ke JSON: Jika Anda ingin mengirim data ke server, metode toJson digunakan untuk memastikan format JSON yang benar

Meminimalkan kesalahan parsing data: Dengan model, Anda tidak perlu menangani field JSON secara manual, yang berisiko tinggi jika struktur JSON berubah

Contoh:

```bash
class ProductEntry {
  final String name;
  final int quantity;

  ProductEntry({required this.name, required this.quantity});

  factory ProductEntry.fromJson(Map<String, dynamic> json) {
    return ProductEntry(
      name: json['name'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
    };
  }
}
```
Jika kita tidak membuat model, belum tentu terjadi eror tapi resiko terjadinya eror meningkat terhadap kesalahan parsing data atau tipe data

2.

Library http digunakan untuk melakukan komunikasi jaringan antara aplikasi Flutter dan server. Dalam proyek ini, library ini membantu:

- Mengirim permintaan ke server (POST, GET, dll.): Seperti login, register, atau pengambilan data produk

- Menerima respon dari server: Biasanya dalam bentuk JSON, yang kemudian diproses lebih lanjut

- Menyederhanakan proses asinkron dengan await dan async: Memastikan operasi jaringan tidak menghambat UI aplikasi

Contoh penggunaan di login.dart:

```bash
final response = await http.post(
  Uri.parse('https://example.com/login'),
  body: jsonEncode({
    'username': username,
    'password': password,
  }),
);

if (response.statusCode == 200) {
  print("Login berhasil");
} else {
  print("Login gagal");
}
```
Library ini memudahkan pengelolaan request/response HTTP tanpa harus menulis kode berulang untuk pengelolaan koneksi dan parsing.

3.

CookieRequest adalah mekanisme untuk :
Menyimpan status sesi pengguna di aplikasi : Setelah login, server sering mengirimkan cookie untuk mengidentifikasi pengguna di permintaan berikutnya
Menggunakan cookie untuk menjaga autentikasi: Permintaan-permintaan setelah login akan menyertakan cookie yang sama untuk membuktikan bahwa pengguna telah terautentikasi

Instance dari CookieRequest perlu dibagikan ke semua komponen untuk :

- Konsistensi status login: Semua bagian aplikasi dapat memeriksa apakah pengguna masih dalam keadaan login.

- Menghindari duplikasi data sesi: Satu instance cukup untuk mengelola sesi seluruh aplikasi.



4.
Input Data di Flutter:
Pengguna memasukkan data (misalnya username dan password) di layar login
Data ini dikumpulkan dalam variabel Dart

Pengiriman ke Server:
Flutter mengirim data ke server Django menggunakan http.post
Data dikonversi ke format JSON menggunakan jsonEncode

Proses di Server:
Django memproses data, seperti memeriksa apakah username dan password cocok
Server mengembalikan respon, biasanya dalam format JSON

Pengolahan Respon di Flutter:
Flutter menerima respon server
Data JSON diparsing dan, jika berhasil, status aplikasi diubah (misalnya ke menu utama)

Menampilkan Data:
Data yang diterima digunakan untuk memperbarui UI aplikasi

5.
Proses Login:
Pengguna memasukkan username dan password
Data dikirim ke server Django via POST

Django memvalidasi kredensial:
Jika valid, Django mengirimkan cookie sesi
Jika tidak, pesan error dikembalikan
Flutter menyimpan cookie sesi (atau token) dan menavigasi ke menu utama

Proses Register:
Pengguna mengisi form registrasi di Flutter
Data dikirim ke server Django via POST
Django memvalidasi dan menyimpan data pengguna baru di database
Respon berhasil dikembalikan ke Flutter

Proses Logout:
Pengguna memilih opsi logout
Flutter mengirim permintaan logout ke server Django.
Django menghapus cookie sesi pengguna
Flutter mengarahkan pengguna kembali ke halaman login


5.
Langkah 1: Membuat Django App Baru untuk Autentikasi
Buat App Baru: Jalankan perintah untuk membuat aplikasi authentication:

```bash
python manage.py startapp authentication
```
Tambahkan App ke INSTALLED_APPS: Edit settings.py pada proyek Django utama dan tambahkan:

```bash
INSTALLED_APPS = [
    ...,
    'authentication',
    'corsheaders',
]
```

Tambahkan Middleware corsheaders: Edit settings.py untuk menambahkan middleware:

```bash
MIDDLEWARE = [
    ...,
    'corsheaders.middleware.CorsMiddleware',
    ...,
]
```
Konfigurasi CORS: Tambahkan konfigurasi CORS di settings.py untuk memungkinkan komunikasi dengan aplikasi Flutter:

```bash
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```

Langkah 2: Membuat View untuk Login, Register, dan Logout
Login View:

Tambahkan view untuk login di authentication/views.py:

```bash
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)

    if user is not None and user.is_active:
        auth_login(request, user)
        return JsonResponse({
            "username": user.username,
            "status": True,
            "message": "Login sukses!"
        }, status=200)
    return JsonResponse({
        "status": False,
        "message": "Login gagal, periksa kembali email atau kata sandi."
    }, status=401)
```
Register View:

Tambahkan view untuk registrasi di authentication/views.py:

```bash
from django.contrib.auth.models import User
import json

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        if password1 != password2:
            return JsonResponse({"status": False, "message": "Passwords do not match."}, status=400)

        if User.objects.filter(username=username).exists():
            return JsonResponse({"status": False, "message": "Username already exists."}, status=400)

        user = User.objects.create_user(username=username, password=password1)
        return JsonResponse({"status": 'success', "message": "User created successfully!"}, status=200)

    return JsonResponse({"status": False, "message": "Invalid request method."}, status=400)
```

Logout View:

Tambahkan view untuk logout di authentication/views.py:

```bash
from django.contrib.auth import logout as auth_logout

@csrf_exempt
def logout(request):
    try:
        auth_logout(request)
        return JsonResponse({"status": True, "message": "Logout berhasil!"}, status=200)
    except:
        return JsonResponse({"status": False, "message": "Logout gagal."}, status=401)
```

Tambahkan URL pada authentication/urls.py:

```bash
from django.urls import path
from .views import login, register, logout

urlpatterns = [
    path('login/', login),
    path('register/', register),
    path('logout/', logout),
]
```

Tambahkan URL ke Proyek Utama (urls.py):

```bash
from django.urls import include

urlpatterns = [
    ...,
    path('auth/', include('authentication.urls')),
]
```

Langkah 3: Mengintegrasikan Autentikasi di Flutter
Install Dependencies: Jalankan perintah berikut untuk menambahkan library yang diperlukan:

```bash
flutter pub add provider
flutter pub add pbp_django_auth
```

Modifikasi main.dart:

Tambahkan Provider dengan CookieRequest untuk mengelola status sesi pengguna.

```bash
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) => CookieRequest(),
            child: MaterialApp(
                home: const LoginPage(),
            ),
        );
    }
}
```
Halaman Login:

Buat file login.dart dengan kode yang sesuai:

```bash
final response = await request.login("http://127.0.0.1:8000/auth/login/", {
    'username': _usernameController.text,
    'password': _passwordController.text,
});

if (request.loggedIn) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
} else {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response['message'])),
    );
}
```
Halaman Register:

Buat file register.dart dengan kode untuk mengirim data registrasi:

```bash
final response = await request.postJson(
    "http://127.0.0.1:8000/auth/register/",
    jsonEncode({
        'username': _usernameController.text,
        'password1': _passwordController.text,
        'password2': _confirmPasswordController.text,
    }),
);

if (response['status'] == 'success') {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
    );
}
```
Halaman Logout:

Tambahkan fungsi logout pada tombol logout:

```bash
final response = await request.logout("http://127.0.0.1:8000/auth/logout/");
if (response['status']) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
    );
}
```

setelah itu kita dapat membuat model pada flutter dengan kode berikut
```bash
import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String productName;
    String description;
    int amount;

    Fields({
        required this.user,
        required this.productName,
        required this.description,
        required this.amount,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        productName: json["name"],
        description: json["description"],
        amount: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "productName": productName,
        "description": description,
        "amount": amount,
    };
}
```

setelah itu kita buat kode untuk menampilkan endpoint view

```bash
import 'package:flutter/material.dart';
import 'package:wemart/models/product_entry.dart';
import 'package:wemart/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});
  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}
class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');
    // Melakukan decode response menjadi bentuk json
    var data = response;
    // Melakukan konversi data json menjadi object MoodEntry
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data produk pada wemart.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.productName}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.amount}"),
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```
pada flutter, autentikasi dilakukan melalui cookie yang ada pada setiap elemen yang nantinya informasi login akan diteruskan ke backend Django untuk diautentikasi


