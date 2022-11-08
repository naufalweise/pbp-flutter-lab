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