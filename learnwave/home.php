<?php

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php include 'components/user_header.php'; ?>

<!-- home section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/home-img.svg" alt="">
      </div>

      <div class="content">
         <h3>LearnWave</h3>
         <p>Discover a world of endless learning possibilities with our exceptional online courses. Our team of expert teachers is dedicated to empowering you with the knowledge and skills you need to excel. Choose from our diverse selection of courses and join a vibrant community of learners on a journey of growth and success.</p>
         <a href="courses.php" class="inline-btn">Explore Our Courses</a>
      </div>

   </div>

   <div class="box-container">

      <div class="box">
         <i class="fas fa-graduation-cap"></i>
         <div>
            <h3>+1k</h3>
            <span>Online Courses</span>
         </div>
      </div>

      <div class="box">
         <i class="fas fa-user-graduate"></i>
         <div>
            <h3>+5k</h3>
            <span>Brilliant Students</span>
         </div>
      </div>

      <div class="box">
         <i class="fas fa-chalkboard-user"></i>
         <div>
            <h3>+5k</h3>
            <span>Expert Teachers</span>
         </div>
      </div>

      <div class="box">
      <i class="fa-sharp fa-solid fa-message"></i>
         <div>
            <h3>Discussion</h3>
            <span>Discussion with other members</span>
         </div>
      </div>

   </div>

</section>

<!-- home section ends -->

<!-- courses section starts  -->

<section class="courses">

   <h1 class="heading">Latest Courses</h1>

   <div class="box-container">

      <?php
         $select_courses = $conn->prepare("SELECT * FROM `playlist` WHERE status = ? ORDER BY date DESC LIMIT 6");
         $select_courses->execute(['active']);
         if($select_courses->rowCount() > 0){
            while($fetch_course = $select_courses->fetch(PDO::FETCH_ASSOC)){
               $course_id = $fetch_course['id'];

               $select_tutor = $conn->prepare("SELECT * FROM `tutors` WHERE id = ?");
               $select_tutor->execute([$fetch_course['tutor_id']]);
               $fetch_tutor = $select_tutor->fetch(PDO::FETCH_ASSOC);
      ?>
      <div class="box">
         <div class="tutor">
            <img src="uploaded_files/<?= $fetch_tutor['image']; ?>" alt="">
            <div>
               <h3><?= $fetch_tutor['name']; ?></h3>
               <span><?= $fetch_course['date']; ?></span>
            </div>
         </div>
         <img src="uploaded_files/<?= $fetch_course['thumb']; ?>" class="thumb" alt="">
         <h3 class="title"><?= $fetch_course['title']; ?></h3>
         <a href="playlist.php?get_id=<?= $course_id; ?>" class="inline-btn">View Playlist</a>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">No courses added yet!</p>';
      }
      ?>

   </div>

   <div class="more-btn">
      <a href="courses.php" class="inline-option-btn">View More</a>
   </div>

</section>

<!-- courses section ends -->

<!-- reviews section starts  -->

<section class="reviews">
   <h1 class="heading">Student's reviews</h1>
   <div class="box-container">
      <div class="box">
         <p>"Saya sangat merekomendasikan platform ini untuk siapa pun yang ingin memperluas pengetahuan dan keterampilan mereka. Materi kursusnya terstruktur dengan baik, dan para instrukturnya kompeten dan menarik. Pengalaman belajar yang luar biasa!"</p>
         <div class="user">
            <img src="images/pic-2.jpg" alt="">
            <div>
               <h3>Samsul Arifin</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
      <div class="box">
         <p>"Kursus yang ditawarkan di sini sangat baik. Para instrukturnya antusias dalam mengajar, dan kontennya selalu diperbarui. Saya telah memperoleh keterampilan berharga yang membantu saya dalam karier saya. Terima kasih atas pengalamannya!"</p>
         <div class="user">
            <img src="images/pic-3.jpg" alt="">
            <div>
               <h3>Salsabila Nur</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
      <div class="box">
         <p>"Saya telah mencoba berbagai platform pembelajaran online, dan platform ini membedakan diri dari yang lain. Kursus-kursusnya komprehensif, dan dukungan dari para instrukturnya luar biasa. Saya berterima kasih atas kesempatan untuk belajar di sini."</p>
         <div class="user">
            <img src="images/pic-4.jpg" alt="">
            <div>
               <h3>Nisrina Fathya</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
      <div class="box">
         <p>"Kualitas kursus-kursus yang ditawarkan di sini luar biasa. Para instrukturnya adalah ahli di bidang mereka dan memberikan wawasan praktis. Saya telah memperoleh pengetahuan berharga yang membantu perkembangan profesional saya."</p>
         <div class="user">
            <img src="images/pic-5.jpg" alt="">
            <div>
               <h3>Mardhiyah Khoirunnisa</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
      <div class="box">
         <p>"Saya terkesan dengan beragamnya kursus yang tersedia di platform ini. Materi pembelajarannya terorganisir dengan baik, dan para instrukturnya memberikan penjelasan yang jelas. Ini adalah sumber daya yang sangat baik untuk pembelajaran mandiri."</p>
         <div class="user">
            <img src="images/pic-6.jpg" alt="">
            <div>
               <h3>Sarah Wilson</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
      <div class="box">
         <p>"Saya memiliki pengalaman belajar yang luar biasa dengan platform ini. Kursus-kursusnya menarik dan mencakup berbagai topik. Para instrukturnya responsif terhadap pertanyaan, yang meningkatkan proses pembelajaran. Saya sangat terbantu dengan adanya kursus ini"</p>
         <div class="user">
            <img src="images/pic-7.jpg" alt="">
            <div>
               <h3>Boy Agustia</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<!-- reviews section ends -->

<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>
