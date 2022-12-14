# Tugas Flutter PBP

Repo untuk tugas flutter PBP.

## Tugas 7

### Stateful vs Stateless Widget
State adalah data atau informasi yang dapat berubah dan dapat dibaca secara sinkronus saat widget di build.
Stateful widget adalah widget yang statenya bisa diubah setelah widget tersebut di build.
Stateless widget adalah widget yang statenya tidak bisa diubah setelah widget tersebut di build.
Berikut adalah perbedaannya:
- UI Stateful widget bersifat dinamis, isinya dapat berubah. Sementara, stateless widget tidak dapat berubah.
- Stateful widget memiliki fungsi setState, sedangkan stateless widget tidak.
- Stateful widget memiliki state yang mutable, sementara stateless widget state nya immutable.
- Fungsi build pada suatu instance stateful widget dapat dipanggil berkali-kali, sementara pada stateless widget hanya dapat dipanggil sekali. Jika ingin mengebuild stateless widget yang baru, maka harus membuat instance baru.

### Widget yang dipakai di proyek ini dan fungsinya
- MyApp: Berfungi sebagai widget root yang menampilkan keseluruhan aplikasi.
- CounterPage: Berfungsi menampilkan halaman utama berisi display counter dan tombol untuk mengubah counter tersebut. Widget ini memanage state counter.
- CounterDisplay: Berfungsi untuk menambilkan ganjil/genap counter, dan nilai counter itu sendiri. Widget ini memiliki field counter yang di pass dari parentnya.
- MaterialApp: Membuat aplikasi berbasis material design.
- Scaffold: Merepresentasikan struktur layout.
- Center: Memposisikan child di tengah.
- Padding: Memberi padding atau jarak antara child dengan parentnya.
- Align: Memposisikan child di pojok parentnya.
- Stack: Memposisikan child relatif dari sisi-sisi box nya.
- FloatingActionButton: Untuk merepresentasikan tombol increment/decrement.
- Icon: Merepresentasikan icon pada button.
- Text: Merepresentasikan teks.

### Fungsi dari setState
setState berfungsi untuk mengubah state pada widget. Fungsi setState dapat mengubah UI secara dinamis.
Dengan memanggil fungsi ini, framework akan merebuild widget-widget yang statenya berubah.
Dalam proyek ini, setState digunakan pada tombol untuk mengubah nilai counter. Variable yang terdampak adalah _counter pada CounterPage.


### Const vs final
- final dapat dideklarasi sebelum variable diassign suatu nilai. const tidak dapat dideklarasi sebelum variable diassign suatu nilai.
- Setelah program di compile, nilai const tidak dapat berubah, lain halnya dengan final.

### Cara Implementasi
- Membuat widget MyApp. Jalankan widget tersebut di fungsi main.
- Membuat widget CounterPage dengan state counter. Tambahkan widget ini ke child MyApp di fungsi build.
- Membuat widget CounterDisplay dengan field counter. Tambahkan widget ini ke child CounterPage. Pass state counter dari CounterPage saat mengebuild widget ini.
- Tambahkan fungsi incrementCounter dan decrementCounter di CounterPage.
- Tambahkan tombol increment dan decrement di CounterPage, tombol disambungkan dengan fungsi yang bersesuaian.

## Tugas 8

### Navigator.push vs Navigator.pushReplacement
Navigator.push akan menaruh screen baru ke posisi paling atas stack yang disimpan oleh Navigator.
Berbeda dengan Navigator.push, Navigator.pushReplacement tidak hanya menambahkan screen ke paling atas stack. 
Navigator.pushReplacement akan menghapus screen yang sebelumnya berada di paling atas stack, baru setelah itu menambahkan screen yang baru.

### Widget yang dipakai
- MaterialApp: untuk merepresentasikan aplikasi. Widget ini juga mempersiapkan hal-hal yang dibutuhkan Navigator untuk routing.
- Form: untuk mengelompokkkan beberapa field.
- TextFieldForm: untuk membuat text field pada form.
- DropdownFormField: untuk membuat dropdown berisi jenis budget.
- ElevatedButton: untuk merepresentasikan tombol.
- ListView: untuk membuat scrollable list, digunakan di page data budget.
- ListTile: untuk membuat elemen child dari ListView, digunakan untuk menampilkan informasi mengenai budget.
- Navigator: untuk menghandle hal-hal yang berhubungan dengan routing (seperti mengganti screen).

### Jenis-jenis event
- onChange: event ketika user melakukan perubahan terhadap field input.
- onSave: event ketika field mendapat panggilan untuk mengesave dari form (dengan memanggil method save).
- onTap: event ketika user menekan screen lalu melepaskannya.
- onPressed: event ketika user menekan button.


### Cara kerja Navigator
Navigator menyimpan daftar screen di dalam stack. Screen yang berada di paling atas stack adalah screen yang dilihat user.
Untuk menavigasi ke screen yang baru, gunakan method push. Method ini akan menaruh screen yang baru di posisi paling atas stack, sehingga akan terlihat oleh user.
Untuk menutup screen dan pindah ke screen yang sebelumnya, gunakan method pop. Method ini akan menghapus screen yang sekarang, sehingga screen yang berada di posisi bawahnya dalam stack akan menjadi paling atas dan ditampilkan ke user.

### Cara implementasi checklist
- Buatlah kelas Budget untuk merepresentasikan data budget.
- Pada aplikasi utama, Tambahkan state list budget.
- Buatlah halaman addBudget berisi form. Halaman ini menerima method untuk menambahkan budget baru dari aplikasi utama. Isilah widget ini dengan field-field yang sesuai.
- Tambahkan state newBudget pada widget form. Atur onChange di tiap field agar mengubah state ini.
- Tambahkan button submisi yang bila ditekan akan memanggil method untuk menambahkan budget yang didapat dari aplikasi utama.
- Buatlah halaman data budget yang menerima list budget. Gunakan list view untuk menampilkan tiap data budget yang ada.
- Pada aplikasi utama, tambahkan named routing ke screen-screen yang sudah dibuat. Passlah state list ke halaman data budget, dan method untuk menambahkan budget baru ke halaman add budget.
- Buatlah widget drawer di file terpisah. Gunakan named push untuk mengganti navigasi ke screen yang sesuai.

## Tugas 9

### Q1: Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, tetapi kode akan lebih buruk. Dengan model, kode untuk mengeparse dan mengconvert JSON ada di satu kelas terpisah. Selain itu, model juga dapat mengelompokkkan data-data yang saling berkaitan menjadi satu objek, sehingga lebih mudah di mantain.

### Q2: Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- FutureBuilder: untuk menampilkan data yang berasal dari Future (data yang perlu diambil dulu secara asinkronus).
- ListView: untuk membuat scrollable list.
- ListTile: untuk membuat elemen child dari ListView.
- Card: untuk membuat elemen yang tampilannya seperti kartu.
- Table: untuk memposisikan elemen dengan layout tabular.
- ElevatedButton: untuk merepresentasikan tombol.
- Navigator: untuk menghandle hal-hal yang berhubungan dengan routing (seperti mengganti screen).
- Center: Memposisikan child di tengah.
- Padding: Memberi padding atau jarak antara child dengan parentnya.


### Q3: Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Pertama, saat widget container diinisiasi, akan dipanggil fungsi http.get untuk melakukan permintaan data, Hasil dari fungsi akan disimpan dalam state (bentuknya Future). Selanjutnya setelah mendapat respon, data berupa JSON akan di parse ke objek model. 
- Saat permintaan data mendapat respon, FutureBuilder akan merender data tersebut dengan widget yang bersesuaian.
- Sebelum mendapat respon, FutureBuilder akan merender loading screen.

### Q4:  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Buatlah widget untuk halaman mywatchlist.
- Tambahkan named routing di MaterialApp untuk halaman mywatchlist
- Tambahkan tombol navigasi ke mywatchlist. Panggil Navigator.pushReplacementNamed untuk mengganti screen ke mywatchlist.
- Buatlah model mywatchlist: field-fieldnya, dan method factory untuk membuat model tersebut dari JSON.
- Tambahkan state dataList ke widget halaman my watch list, lakukan request pengammbilan data saat inisiasi widget dan assign hasilnya pada state tersebut. 
- Tambahkan widget FutureBuilder pada method build. Pass objek future, dan builder ke widget FutureBuilder.
- Pada builder FutureBuilder, render widget list view berisi my watchlist bila data sudah ready.
- Buatlah widget screen detail my watchlist dengan field mywatchlist. Pada method build, tampilkan info-info mywatchlist.
- Pada widget list view mywatchlist, tambahkan handler ketika di tap, untuk pindah ke screen mywatchlist detail (bisa pakai Navigator.push), pass dengan objek mywatchlist yang bersesuaian.
- Tambahkan tombol kembali untuk kembali ke screen awal, bisa menggunakan fungsi Navigator.pop.