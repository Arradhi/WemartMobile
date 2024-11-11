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
