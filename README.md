# UTS_IFB355_2526_BB_152021018_Fadhilah Nurrahmayanti

1.	main.dart
   
Di sini ada fungsi main() yang akan menjalankan aplikasi dengan memanggil MyApp(). Pada class MyApp digunakan MaterialApp sebagai dasar aplikasi, lalu mengatur tampilan awalnya adalah SplashScreen(). Atribut seperti title, debugShowCheckedModeBanner, dan theme juga diatur di sini. Main.dart ini berfungsi menyiapkan tema dan menentukan halaman pertama yang tampil saat aplikasi dibuka.

2.	splash_screen.dart

File ini menampilkan opening app selama 5 detik. Ada gambar profil, NRP, nama, dan judul aplikasi. Bagian initState() berisi Timer yang akan mengarahkan pengguna ke halaman Dashboard setelah 5 detik. Desain halaman diletakkan dalam build() menggunakan Scaffold dan Column. splash_screen.dart ini memberikan tampilan awal sebelum masuk ke menu utama.

3.	dashboard.dart

<img width="372" height="848" alt="image" src="https://github.com/user-attachments/assets/248f0902-5e34-48a7-ad33-9cedd7d33357" />

Ini adalah menu utama aplikasi dengan menggunakan BottomNavigationBar sebagai navigasi bawah dengan 5 pilihan menu: Biodata, Kontak, Kalkulator, Cuaca, Berita. Halaman yang aktif tergantung dari index yang dipilih, dan akan ditampilkan dari list _pages. dashboard.dart ini navigasi ke fitur-fitur aplikasi.

4.	biodata_page.dart

<img width="378" height="847" alt="image" src="https://github.com/user-attachments/assets/736b929f-f9c7-4825-ae86-915a40aff2bd" />

Terdapat input nama, dropdown program studi, radio button untuk jenis kelamin, serta tombol untuk memilih tanggal lahir. Ada juga foto profil yang ditampilkan menggunakan CircleAvatar.

5.	kontak_page.dart

<img width="378" height="839" alt="image" src="https://github.com/user-attachments/assets/abfc783c-9d31-478b-8010-3f331fef3bac" />

Di sini menampilkan daftar 15 kontak statis. Setiap kontak terdiri dari nama dan icon kontak. Data disimpan dalam list map contacts, lalu ditampilkan satu per satu menggunakan ListView.builder().

6.	kalkulator_page.dart

<img width="375" height="846" alt="image" src="https://github.com/user-attachments/assets/08cebbf5-6d4b-471c-9798-5f4bf249fbc6" />

Halaman kalkulator sederhana. Input dua angka, lalu user bisa melakukan operasi matematika seperti tambah, kurang, kali, bagi, kuadrat, dan akar. Hasilnya ditampilkan di bawah setelah pengguna menekan salah satu tombol operasi. Ada juga tombol Clear untuk menghapus input.

7.	cuaca_page.dart

<img width="382" height="838" alt="image" src="https://github.com/user-attachments/assets/d66d2941-a4a8-4cba-b84c-52deb7d55566" />

Menampilkan data cuaca statis seperti suhu, kelembapan, dan kecepatan angin. Juga ada gambar cuaca di atas. Tampilan dibungkus dengan Card agar lebih rapi. Seluruh konten disusun di tengah menggunakan Column.

8.	berita_page.dart

Halaman ini menampilkan berita secara statis. Berita terdiri dari judul, ringkasan (snippet), dan gambar. Data berita dibuat sebagai list dari model BeritaModel. Ditampilkan menggunakan ListView.builder dalam bentuk Card.

9.	Kesimpulan

Semua halaman ini sudah saling terhubung melalui dashboard, dan setiap bagian telah dibuat dengan kode yang mudah dipahami.
