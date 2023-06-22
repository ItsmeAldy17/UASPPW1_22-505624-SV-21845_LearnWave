# UASPPW1_22-505624-SV-21845_LearnWave
Tugas Akhir Praktikum Pemrograman Web -  LearnWave website kursus online gratis 

### Aldy Ardiansyah - 22-505624-SV-21845 ###
- - - -
LearnWave adalah sebuah platform kursus online gratis yang dirancang untuk memudahkan semua orang dalam mendapatkan akses ke pelajaran berkualitas. Dengan LearnWave, pengguna dapat memilih dari berbagai macam materi pelajaran yang disediakan secara gratis, mulai dari pemrograman, desain grafis, dan banyak lagi. Namun saat ini masih beberapa kursus saja yang tersedia, karena masih dalam tahap pengembangan

Platform ini didedikasikan untuk memberikan pendidikan yang terjangkau dan mudah diakses kepada siapa pun, tanpa memandang latar belakang atau keterampilan sebelumnya. Pelajaran disampaikan melalui konten yang interaktif dan terstruktur dengan baik, serta didukung oleh instruktur yang berpengalaman dan ahli di bidangnya.

LearnWave juga menyediakan fitur untuk meningkatkan pengalaman belajar pengguna, seperti forum diskusi untuk berinteraksi dengan sesama peserta, kedepannya mungkin akan ditambahkan fitur lain seperti tugas dan kuis untuk menguji pemahaman, serta sertifikat yang dapat diakui sebagai bukti keberhasilan menyelesaikan kursus.

- - - -

Website LearnWave dirancang untuk mengatasi beberapa permasalahan umum yang sering dihadapi oleh para pembelajar. Berikut adalah beberapa permasalahan yang coba di-cover oleh website LearnWave:

1. Keterbatasan akses geografis: Dengan adanya LearnWave, pembelajar tidak terikat oleh lokasi geografis atau batasan waktu. Mereka dapat mengakses pelajaran kapan saja dan di mana saja hanya dengan koneksi internet.

2. Keterbatasan keuangan: LearnWave menawarkan kursus online gratis, sehingga mengatasi kendala keuangan yang seringkali menjadi hambatan dalam mengakses pendidikan formal atau kursus berbayar. 

3. Fleksibilitas dan kecepatan belajar: Website ini memberikan fleksibilitas kepada pengguna untuk belajar sesuai dengan kebutuhan dan jadwal mereka sendiri. Mereka dapat mengakses materi pelajaran, menonton video, dan melakukan latihan kapan pun mereka mau. 

4. Pilihan materi yang beragam: LearnWave menyediakan berbagai macam topik pelajaran, mulai dari pemrograman, desain grafis, masih banyak lagi. 

Dengan fokus pada aksesibilitas, fleksibilitas, dan keberagaman materi, LearnWave berupaya untuk menjadi solusi bagi individu yang ingin meningkatkan pengetahuan dan keterampilan mereka dengan cara yang mudah, terjangkau, dan berkualitas tinggi.

- - - -
 ## Bagaimana website yang dibuat menjawab 4 requirement dasar (kriteria penilaian) ##

 - **Desain rapi mengikuti kaidah atau prinsip desain**

<img width="500" alt="desain-rapih1" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/8a9e41a4-90ae-42ae-bc4f-3aedb92e72db">
<img width="500" alt="desain-rapih2" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/7b8b86cd-54b3-4809-a7ea-67a399ec4b7e">
<img width="500" alt="desain-rapih3" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/dea5a55f-ad75-4be8-a424-9a03ea5a04e9">

LearnWave telah menerapkan salah satu prinsip desain yang memanfaatkan white space pada halaman, membuat tampilan halaman web terkesan lebih elegan dan professional.
- - - -
 - **Website responsive, dapat diakses melalui device: Mobile, Tablet dan Laptop**

<img width="200" alt="responsive" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/8b8d22a8-b840-4ea6-9dbc-c485974338e7">
<img width="295" alt="responsive2" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/b7e1aaea-3413-4b4f-a57b-a14dca0de1e0">
<img width="400" alt="desain-rapih1" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/8a9e41a4-90ae-42ae-bc4f-3aedb92e72db">

LearnWave telah menerapkan konsep website dinamis yang dapat menyesuaikan dengan berbagai macam ukuran device, sehingga ketika dibuka pada perangkat manapun ukuran dari website tersebut akan mengikuti sesuai dengan ukuran device yang digunakan.
Dengan menggunakan media-queries untuk mengatur ukurannya


``` 
@media (max-width:1200px){

   body{
      padding-left: 0;
   }

   .side-bar{
      transition: .2s linear;
      left: -30rem;
   }

   .side-bar.active{
      left: 0;
      box-shadow: 0 0 0 100vw rgba(0,0,0,.7);
   }

   .side-bar .close-side-bar{
      display: block;
   }
}

@media (max-width:991px){
   html{
      font-size: 55%;
   }
}

@media (max-width:768px){

   #search-btn{
      display: inline-block;
   }

```
- - - -
- **Direct feedback ke pengguna website**

 <img width="332" alt="direct-feedback2" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/478f6238-c442-48ef-b488-9742ec1dacda">
 <img width="500" alt="direct-feedback1" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/200fc66e-2bec-4b05-98dc-5b9e62418994">

LearnWave juga dapat memberikan feedback kepada pengguna, seperti ketika pengguna salah memasukkan email atau password, dan contoh lainnya ketika pengguna akan log out dari akun.
- - - -

- **Konten dinamis dari database**

<img width="270" alt="dinamis2" src="https://github.com/ItsmeAldy17/UASPPW1_22-505624-SV-21845_LearnWave/assets/79182959/60471911-1863-4c68-9e90-b842aa1fed1a">

Konten yang disediakan pada halaman web juga telah dinamis terhubung ke database sehingga ketika ingin menambahkan, menghapus, ataupun mengedit data, maka harus terhubung ke database.
Contohnya pada gambar di atas ketika ingin melihat playlist course apa saja yang telah dibuat.

 ```
 <?php

   $db_name = 'mysql:host=localhost;dbname=course_db';
   $user_name = 'root';
   $user_password = '';

   $conn = new PDO($db_name, $user_name, $user_password);

?>
```
Dengan melakukan koneksi ke database dan menggunakan data di dalamnya untuk menampilkan pada tampilan halaman website.

```
      <?php
         $select_playlist = $conn->prepare("SELECT * FROM `playlist` WHERE tutor_id = ? ORDER BY date DESC");
         $select_playlist->execute([$tutor_id]);
         if($select_playlist->rowCount() > 0){
         while($fetch_playlist = $select_playlist->fetch(PDO::FETCH_ASSOC)){
            $playlist_id = $fetch_playlist['id'];
            $count_videos = $conn->prepare("SELECT * FROM `content` WHERE playlist_id = ?");
            $count_videos->execute([$playlist_id]);
            $total_videos = $count_videos->rowCount();
      ?>
  ```
  
## Authors

- [@aldyardiansyah](https://github.com/ItsmeAldy17)

