
# UAS Pemrograman Berorientasi Obyek 2
<ul>
  <li>Mata Kuliah: Pemrograman Berorientasi Obyek 2</li>
  <li>Dosen Pengampu: <a href="https://github.com/Muhammad-Ikhwan-Fathulloh">Muhammad Ikhwan Fathulloh</a></li>
</ul>

## Profil
<ul>
  <li>Anggota:</li>
  <li>[23552011125] Nada Ismaya</li>
  <li>[23552011185] Naswa Mutiara</li>
  <li>[23552011126] Samara Buana Tungga</li>
  <li>Studi Kasus: Sistem Daftar Tugas Fullstack (Spring Boot + Thymeleaf)</li>
</ul>

## Judul Studi Kasus
<p>Sistem Todo List Fullstack (Spring Boot + Thymeleaf)</p>

## Penjelasan Studi Kasus
<p>Membangun sebuah sistem manajemen tugas (Daftar Tugas) berbasis web. Sistem ini ditujukan bagi pengguna untuk mencatat dan mengelola daftar tugas pribadi maupun bersama dalam bentuk proyek secara online.</p>

<p>Aplikasi dikembangkan menggunakan framework Java Spring Boot sebagai backend dan Thymeleaf sebagai template engine untuk frontend. Arsitektur aplikasi mengadopsi pola MVC (Model-View-Controller) untuk memisahkan logika presentasi, bisnis, dan data.</p>

## Penjelasan 4 Pilar OOP dalam Studi Kasus

### 1. Inheritance
<p>Pewarisan konsep OOP diterapkan pada penggunaan antarmuka seperti <code>JpaRepository</code> yang diturunkan ke repository entitas. Ini memungkinkan penggunaan fungsi CRUD secara otomatis tanpa menuliskan ulang semua logika dasar.</p>

```java
public interface TodoRepository extends JpaRepository<Todo, Long> {
    List<Todo> findByUser(User user);
}
```

### 2. Encapsulation
<p>Setiap entitas seperti <code>User</code> dan <code>Todo</code> dikemas dalam class dengan atribut private dan metode akses (getter & setter) yang menjaga integritas dan keamanan data.</p>

```java
public class Todo {
    private Long id;
    private String task;
    private boolean completed;
    private User user;

    // Getter dan Setter
}
```

### 3. Polymorphism
<p>Penggunaan interface seperti <code>UserDetailsService</code> pada sistem otentikasi memungkinkan penggantian implementasi secara fleksibel dan modular.</p>

```java
@Service
public class CustomUserDetailsService implements UserDetailsService {
    // Implementasi metode loadUserByUsername secara polymorphic
}
```

### 4. Abstraction
<p>Logika kompleks aplikasi disembunyikan di balik layer service dan repository, memisahkan logika presentasi dari logika bisnis.</p>

```java
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}
```

## Demo Proyek
<ul>
  <li>Github <a href="https://github.com/SamaraBuanaTungga/DaftarTugas.git">https://github.com/SamaraBuanaTungga/DaftarTugas.git</a></li>
  <li>Youtube <a href="https://youtu.be/51G8Th5MCvU">https://youtu.be/51G8Th5MCvU</a></li>
  <li>Presentasi <a href="https://youtu.be/R280crf-3lI">https://youtu.be/R280crf-3lI</a></li>
</ul>
