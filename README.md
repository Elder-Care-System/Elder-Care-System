# Elder Care System

"Elder Care System" adalah sebuah sistem informasi yang berfungsi untuk memfasilitasi proses pencatatan, pelaporan, dan pemantauan kondisi kesehatan lansia, khususnya bagi mereka yang hidup sendiri dan kesulitan mengakses layanan kesehatan. Sistem ini dirancang untuk digunakan oleh Petugas Puskesmas Sungai Pinang dan dokter yang bekerja sama dalam proses pemantauan lansia. Petugas puskesmas berperan sebagai admin dan tenaga pelayanan kesehatan, yang dapat menginput laporan kesehatan lansia berdasarkan hasil observasi lapangan. Sementara itu, dokter dapat mengakses laporan tersebut untuk memberikan diagnosa dan membuat rekam medis berdasarkan keluhan yang dilaporkan oleh petugas. Melalui sistem ini, dokter dan petugas dapat memantau kondisi lansia secara berkala, mengidentifikasi gejala sejak dini, dan memberikan tindakan medis yang sesuai tanpa harus menunggu kunjungan langsung ke fasilitas kesehatan.

## **FItur Program**
1. Fitur login
2. Fitur kelola akun
3. Fitur dashboard
4. Fitur lihat, input, dan cari data laporan kesehatan lansia
5. Fitur tampilan hasil data laporan kesehatan lansia
6. Fitur lihat, input, dan cari data rekam Medis
7. Fitur tampilan data dan laporan lansia
8. Fitur tambah, lihat, ubah, hapus, dan cari data lansia
9. Fitur buat, lihat, ubah, hapus, dan cari data rekam medis
10. Fitur tampilan hasil rekam medis
11. Fitur logout

## **Use Case**

https://drive.google.com/file/d/1HJlMUX23DyBviOPN5s4RiosdJEtaizHT/view?usp=drive_link

## **Flowchart**

https://drive.google.com/file/d/1WU0_AQOg0lj85jfczAJzIzvTJR2Ls54p/view?usp=sharing

## **Penerapan OOP**

### **1. Encapsulation**

#### A. Model/Dokter.java
    
    public class Dokter extends User {
        private String namaDokter;
        private String spesialis;
    
        public String getNamaDokter() { return namaDokter; }
        public void setNamaDokter(String namaDokter) { this.namaDokter = namaDokter; }
    
        public String getSpesialis() { return spesialis; }
        public void setSpesialis(String spesialis) { this.spesialis = spesialis; }
    }
Variabel namaDokter dan spesialis dibuat private agar tidak bisa diakses langsung dari luar kelas, untuk mengaksesnya menggunakan getter dan setter seperti getNamaDokter() dan setSpesialis().

#### B. Model/Lansia.java

    public class Lansia extends Person {
        private int usia;
        private String jenisKelamin;
        private String alamat;
    
        public Lansia() {}
    
        public Lansia(int idLansia, String namaLansia, int usia, String jenisKelamin, String alamat) {
            super(idLansia, namaLansia);
            this.usia = usia;
            this.jenisKelamin = jenisKelamin;
            this.alamat = alamat;
        }
    
        public int getUsia() { return usia; }
        public void setUsia(int usia) { this.usia = usia; }
    
        public String getJenisKelamin() { return jenisKelamin; }
        public void setJenisKelamin(String jenisKelamin) { this.jenisKelamin = jenisKelamin; }
    
        public String getAlamat() { return alamat; }
        public void setAlamat(String alamat) { this.alamat = alamat; }
Pada bagian private field dari idLansia, usia, jenisKelamin, alamat tidak bisa diubah langsung

#### C. Model/Petugas.java

    public class Petugas extends User {
        private String petugasBagian;
        private String namaPetugas;
    
        public Petugas() {}
    
        public Petugas(int idUser, String username, String password, int idPuskesmas,
                       String namaPetugas, String petugasBagian) {
            super(idUser, username, password, idPuskesmas, namaPetugas);
            this.namaPetugas = namaPetugas;
            this.petugasBagian = petugasBagian;
        }
    
        public String getPetugasBagian() { return petugasBagian; }
        public void setPetugasBagian(String petugasBagian) { this.petugasBagian = petugasBagian; }
    
        public String getNamaPetugas() { return namaPetugas; }
        public void setNamaPetugas(String namaPetugas) { 
            this.namaPetugas = namaPetugas; 
            super.setNama(namaPetugas);
        }
Disini, atribut dibuat private dan hanya dapat diakses dari method getter/setter.

#### D. Model/RekamMedis.java

    public class RekamMedis {
        private int idRekam;
        private Date tanggalPemeriksaan;
        private String diagnosis;
        private String tindakan;
        private int idDokter;
        private Lansia lansia;
    
        public RekamMedis() {}
    
        public RekamMedis(int idRekam, Date tanggalPemeriksaan, String diagnosis, String tindakan, int idDokter, Lansia lansia) {
            this.idRekam = idRekam;
            this.tanggalPemeriksaan = tanggalPemeriksaan;
            this.diagnosis = diagnosis;
            this.tindakan = tindakan;
            this.idDokter = idDokter;
            this.lansia = lansia;
        }
    
        public int getIdRekam() {
            return idRekam;
        }
    
        public void setIdRekam(int idRekam) {
            this.idRekam = idRekam;
        }
    
        public Date getTanggalPemeriksaan() {
            return tanggalPemeriksaan;
        }
    
        public void setTanggalPemeriksaan(Date tanggalPemeriksaan) {
            this.tanggalPemeriksaan = tanggalPemeriksaan;
        }
    
        public String getDiagnosis() {
            return diagnosis;
        }
    
        public void setDiagnosis(String diagnosis) {
            this.diagnosis = diagnosis;
        }
    
        public String getTindakan() {
            return tindakan;
        }
    
        public void setTindakan(String tindakan) {
            this.tindakan = tindakan;
        }
    
        public int getIdDokter() {
            return idDokter;
        }
    
        public void setIdDokter(int idDokter) {
            this.idDokter = idDokter;
        }
    
        public Lansia getLansia() {
            return lansia;
        }
    
        public void setLansia(Lansia lansia) {
            this.lansia = lansia;
        }
Disini membuat semua field data medis menjadi private

#### E. Model/User.java

    public class User extends Person {
        private String username;
        private String password;
        private int idPuskesmas;
    
        public User() {}
    
        public User(int idUser, String username, String password, int idPuskesmas, String nama) {
            super(idUser, nama);
            this.username = username;
            this.password = password;
            this.idPuskesmas = idPuskesmas;
        }
    
        public String getUsername() { return username; }
        public void setUsername(String username) { this.username = username; }
    
        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }
    
        public int getIdPuskesmas() { return idPuskesmas; }
        public void setIdPuskesmas(int idPuskesmas) { this.idPuskesmas = idPuskesmas; }
        
        public int getIdUser() { return getId(); }
        public void setIdUser(int idUser) { setId(idUser); }
Disini encapsulation melindungi data login pengguna dari akses tidak sah dengan menyimpan password secara private

#### F. Model/Person.java

    public abstract class Person {
        private int id;
        private String nama;
    
        public Person() {}
    
        public Person(int id, String nama) {
            this.id = id;
            this.nama = nama;
        }
    
        public int getId() { return id; }
        public void setId(int id) { this.id = id; }
    
        public String getNama() { return nama; }
        public void setNama(String nama) { this.nama = nama; }
Disini, Person sebagai superclass melindungi atribut id dan nama, semua subclass yaitu User, Lansia, Dokter, dan lain-lain mengakses data ini lewat getter/setter, bukan langsung.

#### G. Model/LaporanKesehatan.java

    public class LaporanKesehatan {
        private int idLaporan;
        private Date tanggalPeriksa;
        private String keluhan;
        private String tindakan;
        private int idPetugas;
        private Lansia lansia;
        public LaporanKesehatan() {}
    
        public LaporanKesehatan(int idLaporan, Date tanggalPeriksa, String keluhan, String tindakan, int idPetugas, Lansia lansia) {
            this.idLaporan = idLaporan;
            this.tanggalPeriksa = tanggalPeriksa;
            this.keluhan = keluhan;
            this.tindakan = tindakan;
            this.idPetugas = idPetugas;
            this.lansia = lansia;
        }
    
        // getter / setter
        public int getIdLaporan() { return idLaporan; }
        public void setIdLaporan(int idLaporan) { this.idLaporan = idLaporan; }
    
        public Date getTanggalPeriksa() { return tanggalPeriksa; }
        public void setTanggalPeriksa(Date tanggalPeriksa) { this.tanggalPeriksa = tanggalPeriksa; }
    
        public String getKeluhan() { return keluhan; }
        public void setKeluhan(String keluhan) { this.keluhan = keluhan; }
    
        public String getTindakan() { return tindakan; }
        public void setTindakan(String tindakan) { this.tindakan = tindakan; }
    
        public int getIdPetugas() { return idPetugas; }
        public void setIdPetugas(int idPetugas) { this.idPetugas = idPetugas; }
    
        public Lansia getLansia() { return lansia; }
        public void setLansia(Lansia lansia) { this.lansia = lansia; }
    }
Disini semua atribut dibuat private, jadi hanya bisa diubah lewat setter.Enkapsulation membuat data laporan seperti keluhan dan tindakan tidak diubah sembarangan.

#### H. Model/UserView.java

    public class UserView {
        private int idUser;
        private String username;
        private String role;
        private String nama;
    
        public UserView(int idUser, String username, String role, String nama) {
            this.idUser = idUser;
            this.username = username;
            this.role = role;
            this.nama = nama;
        }
    
        public int getIdUser() { return idUser; }
        public String getUsername() { return username; }
        public String getRole() { return role; }
        public String getNama() { return nama; }
    }
Disini, data user untuk tampilan (view) di privasi dengan getter dan setter.

#### I. Model/KoneksiEldercare.java

    public class KoneksiEldercare {
        private static final String URL = "jdbc:mysql://localhost:3306/eldercare_system";
        private static final String USER = "root";
        private static final String PASSWORD = "";
        private static Connection conn;
    
        private KoneksiEldercare() {}
Enkapsulation di sini melindungi detail koneksi database seperti URL, USER, dan PASSWORD. Constructor dibuat private agar hanya dipakai oleh class itu sendiri.

### **2. Inheritance**

#### A. Model/Person.java

    public abstract class Person {
        private int id;
        private String nama;
    
        public Person() {}
    
        public Person(int id, String nama) {
            this.id = id;
            this.nama = nama;
        }
    
        public int getId() { return id; }
        public void setId(int id) { this.id = id; }
    
        public String getNama() { return nama; }
        public void setNama(String nama) { this.nama = nama; }
Person adalah superclass yang berisi atribut umum seperti id, nama, jadi tidak bisa dibuat objek langsung. Person Dipakai oleh semua class yang mewakili pengguna (user, dokter, petugas, lansia).

#### B. Model/User.java

    public class User extends Person {
        private String username;
        private String password;
        private int idPuskesmas;
    
        public User() {}
    
        public User(int idUser, String username, String password, int idPuskesmas, String nama) {
            super(idUser, nama);
            this.username = username;
            this.password = password;
            this.idPuskesmas = idPuskesmas;
        }
    
        public String getUsername() { return username; }
        public void setUsername(String username) { this.username = username; }
    
        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }
    
        public int getIdPuskesmas() { return idPuskesmas; }
        public void setIdPuskesmas(int idPuskesmas) { this.idPuskesmas = idPuskesmas; }
        
        public int getIdUser() { return getId(); }
        public void setIdUser(int idUser) { setId(idUser); }
User mewarisi semua atribut dan method dari Person, jadi User sudah memiliki id dan nama dari Person, dan menggunakan idUser dan nama untuk mengisi data dari superclass.

#### C. Model/Dokter.java

    public class Dokter extends User {
        private String namaDokter;
        private String spesialis;
    
        public Dokter() {}
    
        public Dokter(int idUser, String username, String password, int idPuskesmas,
                      String namaDokter, String spesialis) {
            super(idUser, username, password, idPuskesmas, namaDokter);
            this.namaDokter = namaDokter;
            this.spesialis = spesialis;
        }
    
        public String getNamaDokter() { return namaDokter; }
        public void setNamaDokter(String namaDokter) { 
            this.namaDokter = namaDokter; 
            setNama(namaDokter);
        }
    
        public String getSpesialis() { return spesialis; }
        public void setSpesialis(String spesialis) { this.spesialis = spesialis; }
Dokter mewarisi semua atribut dan method dari User, termasuk username, password, idPuskesmas, serta id dan nama dari Person, jadi tidak perlu mendefinisikan ulang data umum seperti id atau nama.

#### D. Model/Petugas.java

    public class Petugas extends User {
        private String petugasBagian;
        private String namaPetugas;
    
        public Petugas() {}
    
        public Petugas(int idUser, String username, String password, int idPuskesmas,
                       String namaPetugas, String petugasBagian) {
            super(idUser, username, password, idPuskesmas, namaPetugas);
            this.namaPetugas = namaPetugas;
            this.petugasBagian = petugasBagian;
        }
    
        public String getPetugasBagian() { return petugasBagian; }
        public void setPetugasBagian(String petugasBagian) { this.petugasBagian = petugasBagian; }
    
        public String getNamaPetugas() { return namaPetugas; }
        public void setNamaPetugas(String namaPetugas) { 
            this.namaPetugas = namaPetugas; 
            super.setNama(namaPetugas);
        }
Petugas juga sama seperti dokter, akan mewarisi semua data dari User dan Person, dan hanya menambahkan atribut khusus yaitu petugasBagian dan namaPetugas.

#### E. Model/Lansia.java

    public class Lansia extends Person {
        private int usia;
        private String jenisKelamin;
        private String alamat;
    
        public Lansia() {}
    
        public Lansia(int idLansia, String namaLansia, int usia, String jenisKelamin, String alamat) {
            super(idLansia, namaLansia);
            this.usia = usia;
            this.jenisKelamin = jenisKelamin;
            this.alamat = alamat;
        }
    
        public int getUsia() { return usia; }
        public void setUsia(int usia) { this.usia = usia; }
    
        public String getJenisKelamin() { return jenisKelamin; }
        public void setJenisKelamin(String jenisKelamin) { this.jenisKelamin = jenisKelamin; }
    
        public String getAlamat() { return alamat; }
        public void setAlamat(String alamat) { this.alamat = alamat; }
Lansia langsung mewarisi atribut id dan nama dari Person dan menambah atribut tambahan yaitu usia, jenisKelamin, alamat.

### **3. Abstraction**

#### A. Model/Person.java

    public abstract class Person {
        private int id;
        private String nama;
    
        public Person() {}
    
        public Person(int id, String nama) {
            this.id = id;
            this.nama = nama;
        }
    
        public int getId() { return id; }
        public void setId(int id) { this.id = id; }
    
        public String getNama() { return nama; }
        public void setNama(String nama) { this.nama = nama; }
    
        public abstract void showInfo();
    }
Person dideklarasikan sebagai abstract class yang artinya tidak bisa dibuat objek langsung. jadi hanya kelas turunannya seperti User dan Lansia yang bisa digunakan. Tujuannya agar program hanya tahu bahwa setiap orang pasti punya id dan nama.

#### B. Model/User.java

    public class User extends Person {
        private String username;
        private String password;
        private int idPuskesmas;
    
        public User() {}
    
        public User(int idUser, String username, String password, int idPuskesmas, String nama) {
            super(idUser, nama);
            this.username = username;
            this.password = password;
            this.idPuskesmas = idPuskesmas;
        }
User membuat tipe “Person” menjadi tipe “User” dengan tambahan username, password, dan puskesmas. Di sini terlihat Person hanya memberi struktur, sementara User menambahkan detailnya.

#### C. Dokter.java dan Petugas.java

##### * Model/Dokter.java
  

       public class Dokter extends User {
            private String namaDokter;
            private String spesialis;

##### * Model/Petugas.java

      public class Petugas extends User {
          private String petugasBagian;
          private String namaPetugas;
Disini, Dokter dan Petugas mewarisi User, dan dengan demikian juga Person. Dokter mewakili user dengan peran medis, dan Petugas mewakili user non-medis.

#### D Model/Lansia.java

      public class Lansia extends Person {
          private int usia;
          private String jenisKelamin;
          private String alamat;
Lansia juga mewarisi Person, tapi berbeda dengan User. Abstraction di sini menunjukkan bahwa meskipun Lansia dan User adalah “Person”, keduanya memiliki detail dan tanggung jawab berbeda.

#### E. Model/RekamMedis.java

      private Lansia lansia;
Disini, RekamMedis memanggil lansia.getNama() untuk mendapatkan nama pasien.

#### F. Model/LaporanKesehatan.java

    private Lansia lansia;
Disini, LaporanKesehatan juga menyimpan objek Lansia sama seperti RekamMedis.

#### G. Model/KoneksiEldercare.java

    private static Connection conn;

    private KoneksiEldercare() {}
disini, detail koneksi database disembunyikan dan pengguna class ini hanya perlu memanggil getConnection()

### **4. Polymorphism**

#### A. Class Person dan turunannya

##### * Model/Person.java

      package Model;
      
      public abstract class Person {
          private int id;
          private String nama;
      
          public Person() {}
      
          public Person(int id, String nama) {
              this.id = id;
              this.nama = nama;
          }
      
          public int getId() { return id; }
          public void setId(int id) { this.id = id; }
      
          public String getNama() { return nama; }
          public void setNama(String nama) { this.nama = nama; }
      
          public abstract void showInfo();
      }
Disini, Person adalah abstrac class, artinya tidak bisa dibuat objek langsung, tapi bisa menjadi tipe referensi umum untuk semua user di sistem ini.

#### B. Class User, Dokter, dan Petugas

##### * Model/User.java

      package Model;
      
      public class User extends Person {
          private String username;
          private String password;
          private int idPuskesmas;
      
          public User() {}
      
          public User(int idUser, String username, String password, int idPuskesmas, String nama) {
              super(idUser, nama);
              this.username = username;
              this.password = password;
              this.idPuskesmas = idPuskesmas;
          }
      
          public String getUsername() { return username; }
          public void setUsername(String username) { this.username = username; }
      
          public String getPassword() { return password; }
          public void setPassword(String password) { this.password = password; }
      
          public int getIdPuskesmas() { return idPuskesmas; }
          public void setIdPuskesmas(int idPuskesmas) { this.idPuskesmas = idPuskesmas; }
          
          public int getIdUser() { return getId(); }
          public void setIdUser(int idUser) { setId(idUser); }

##### * Model/Dokter.java

      package Model;
      
      public class Dokter extends User {
          private String namaDokter;
          private String spesialis;
      
          public Dokter() {}
      
          public Dokter(int idUser, String username, String password, int idPuskesmas,
                        String namaDokter, String spesialis) {
              super(idUser, username, password, idPuskesmas, namaDokter);
              this.namaDokter = namaDokter;
              this.spesialis = spesialis;
          }
      
          public String getNamaDokter() { return namaDokter; }
          public void setNamaDokter(String namaDokter) { 
              this.namaDokter = namaDokter; 
              setNama(namaDokter);
          }
      
          public String getSpesialis() { return spesialis; }
          public void setSpesialis(String spesialis) { this.spesialis = spesialis; }

##### * Model/Petugas.java

      package Model;
      
      public class Petugas extends User {
          private String petugasBagian;
          private String namaPetugas;
      
          public Petugas() {}
      
          public Petugas(int idUser, String username, String password, int idPuskesmas,
                         String namaPetugas, String petugasBagian) {
              super(idUser, username, password, idPuskesmas, namaPetugas);
              this.namaPetugas = namaPetugas;
              this.petugasBagian = petugasBagian;
          }
      
          public String getPetugasBagian() { return petugasBagian; }
          public void setPetugasBagian(String petugasBagian) { this.petugasBagian = petugasBagian; }
      
          public String getNamaPetugas() { return namaPetugas; }
          public void setNamaPetugas(String namaPetugas) { 
              this.namaPetugas = namaPetugas; 
              super.setNama(namaPetugas);
          }
Disini, Dokter dan Petugas sama-sama “user” tapi punya atribut berbeda. Mereka bisa digunakan di tempat yang menerima User.

#### C. Bagian Service

##### * LoginSystem.java

       public User login(String username, String password) {
              String sqlUser = "SELECT * FROM user WHERE username = ? AND password = ?";
              try (Connection conn = KoneksiEldercare.getConnection();
                   PreparedStatement ps = conn.prepareStatement(sqlUser)) {
      
                  ps.setString(1, username);
                  ps.setString(2, password);
                  try (ResultSet rs = ps.executeQuery()) {
                      if (rs.next()) {
                          int idUser = rs.getInt("id_user");
                          int idPuskesmas = rs.getInt("id_puskesmas");
      
                          String qPetugas = "SELECT * FROM petugas_puskesmas WHERE id_user = ?";
                          try (PreparedStatement ps2 = conn.prepareStatement(qPetugas)) {
                              ps2.setInt(1, idUser);
                              try (ResultSet r2 = ps2.executeQuery()) {
                                  if (r2.next()) {
                                      String namaPetugas = r2.getString("nama_petugas");
                                      String bagian = r2.getString("petugas_bagian");
                                      Petugas petugas = new Petugas(idUser, username, password, idPuskesmas,
                                                                   namaPetugas, bagian);
                                      return petugas;
                                  }
                              }
                          }
      
                          String qDokter = "SELECT * FROM dokter WHERE id_user = ?";
                          try (PreparedStatement ps3 = conn.prepareStatement(qDokter)) {
                              ps3.setInt(1, idUser);
                              try (ResultSet r3 = ps3.executeQuery()) {
                                  if (r3.next()) {
                                      String namaDokter = r3.getString("nama_dokter");
                                      String spesialis = r3.getString("spesialis");
                                      Dokter dokter = new Dokter(idUser, username, password, idPuskesmas,
                                                                 namaDokter, spesialis);
                                      return dokter;
                                  }
                              }
                          }
      
                          User u = new User(idUser, username, password, idPuskesmas, rs.getString("username"));
                          return u;
                      }
                  }
      
              } catch (Exception e) {
                  System.out.println("Error saat login: " + e.getMessage());
                  e.printStackTrace();
              }
Disini, meskipun user dideklarasikan bertipe User, tapi objeknya bisa jadi Dokter atau Petugas. Saat memanggil method:

    System.out.println(user.getNama());
Java akan otomatis memanggil method dari class yang sesuai dengan tipe objek sebenarnya.

### **5. Interface**

#### A. ServiceUser.java

    package Service;
    
    import Model.*;
    import java.sql.*;
    import java.util.ArrayList;
    import java.util.List;
    public class ServiceUser {
    
    public boolean daftarPetugas(String username, String password, int idPuskesmas, 
                                  String namaPetugas, String petugasBagian) {
        String sqlUser = "INSERT INTO user (username, password, id_puskesmas) VALUES (?, ?, ?)";
        String sqlPetugas = "INSERT INTO petugas_puskesmas (id_user, nama_petugas, petugas_bagian) VALUES (?, ?, ?)";
    
        try (Connection conn = KoneksiEldercare.getConnection()) {
            conn.setAutoCommit(false);
            int idUserBaru = -1;
    
            try (PreparedStatement ps1 = conn.prepareStatement(sqlUser, Statement.RETURN_GENERATED_KEYS)) {
                ps1.setString(1, username);
                ps1.setString(2, password);
                ps1.setInt(3, idPuskesmas);
                ps1.executeUpdate();
    
                try (ResultSet rs = ps1.getGeneratedKeys()) {
                    if (rs.next()) {
                        idUserBaru = rs.getInt(1);
                    }
                }
            }
            
            if (idUserBaru == -1) {
                conn.rollback();
                System.out.println("❌ Gagal membuat user baru.");
                return false;
            }
            
            try (PreparedStatement ps2 = conn.prepareStatement(sqlPetugas)) {
                ps2.setInt(1, idUserBaru);
                ps2.setString(2, namaPetugas);       // Nama disimpan di tabel petugas_puskesmas
                ps2.setString(3, petugasBagian);     // Bagian petugas
                ps2.executeUpdate();
            }
    
            conn.commit(); // Commit transaksi
            System.out.println("✅ Petugas berhasil didaftarkan!");
            System.out.println("   Username: " + username);
            System.out.println("   Nama: " + namaPetugas);
            return true;
    
        } catch (SQLException e) {
            System.out.println("❌ Gagal mendaftarkan petugas: " + e.getMessage());
            return false;
        }
    }
    
    
    
        public boolean daftarDokter(String username, String password, int idPuskesmas, 
                                     String namaDokter, String spesialis) {
            String sqlUser = "INSERT INTO user (username, password, id_puskesmas) VALUES (?, ?, ?)";
            String sqlDokter = "INSERT INTO dokter (id_user, nama_dokter, spesialis) VALUES (?, ?, ?)";
    
            try (Connection conn = KoneksiEldercare.getConnection()) {
                conn.setAutoCommit(false);
    
                int idUserBaru = -1;
    
                try (PreparedStatement ps1 = conn.prepareStatement(sqlUser, Statement.RETURN_GENERATED_KEYS)) {
                    ps1.setString(1, username);
                    ps1.setString(2, password);
                    ps1.setInt(3, idPuskesmas);
                    ps1.executeUpdate();
    
                    try (ResultSet rs = ps1.getGeneratedKeys()) {
                        if (rs.next()) {
                            idUserBaru = rs.getInt(1);
                        }
                    }
                }
    
                if (idUserBaru == -1) {
                    conn.rollback();
                    System.out.println("❌ Gagal membuat user baru.");
                    return false;
                }
    
                try (PreparedStatement ps2 = conn.prepareStatement(sqlDokter)) {
                    ps2.setInt(1, idUserBaru);
                    ps2.setString(2, namaDokter);
                    ps2.setString(3, spesialis);
                    ps2.executeUpdate();
                }
    
                conn.commit();
                System.out.println("✅ Dokter berhasil didaftarkan!");
                System.out.println("   Username: " + username);
                System.out.println("   Nama: dr. " + namaDokter);
                System.out.println("   Spesialis: " + spesialis);
                return true;
    
            } catch (SQLException e) {
                System.out.println("❌ Gagal mendaftarkan dokter: " + e.getMessage());
                return false;
            }
        }
    
        public boolean isUsernameExist(String username) {
            String sql = "SELECT COUNT(*) FROM user WHERE username = ?";
            try (Connection conn = KoneksiEldercare.getConnection();
                 PreparedStatement ps = conn.prepareStatement(sql)) {
    
                ps.setString(1, username);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        return rs.getInt(1) > 0;
                    }
                }
            } catch (SQLException e) {
                System.out.println("❌ Error cek username: " + e.getMessage());
            }
            return false;
        }
        
        public List<UserView> lihatSemuaAkun() {
            List<UserView> list = new ArrayList<>();
            String sql = """
                SELECT u.id_user, u.username,
                       CASE 
                           WHEN p.id_user IS NOT NULL THEN 'Petugas'
                           WHEN d.id_user IS NOT NULL THEN 'Dokter'
                           ELSE 'Unknown'
                       END AS role,
                       COALESCE(p.nama_petugas, d.nama_dokter, '-') AS nama
                FROM user u
                LEFT JOIN petugas_puskesmas p ON u.id_user = p.id_user
                LEFT JOIN dokter d ON u.id_user = d.id_user
            """;
    
        try (Connection conn = KoneksiEldercare.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
    
            while (rs.next()) {
                list.add(new UserView(
                    rs.getInt("id_user"),
                    rs.getString("username"),
                    rs.getString("role"),
                    rs.getString("nama")
                ));
            }
    
        } catch (SQLException e) {
            System.out.println("❌ Gagal load data akun: " + e.getMessage());
        }
    
        return list;
    }
    
        public List<Petugas> getAllPetugas() {
            List<Petugas> list = new ArrayList<>();
            String sql = """
                SELECT u.id_user, u.username, u.password, u.id_puskesmas,
                       p.nama_petugas, p.petugas_bagian
                FROM user u
                JOIN petugas_puskesmas p ON u.id_user = p.id_user
            """;
    
            try (Connection conn = KoneksiEldercare.getConnection();
                 PreparedStatement ps = conn.prepareStatement(sql);
                 ResultSet rs = ps.executeQuery()) {
    
                while (rs.next()) {
                    list.add(new Petugas(
                        rs.getInt("id_user"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("id_puskesmas"),
                        rs.getString("nama_petugas"),
                        rs.getString("petugas_bagian")
                    ));
                }
    
            } catch (SQLException e) {
                System.out.println("❌ Gagal load data petugas: " + e.getMessage());
            }
    
            return list;
        }
    
        public boolean updateAkun(int idUser, String usernameBaru, String passwordBaru, 
                                  String namaBaru, String bagianAtauSpesialis, String role) {
            String sqlUpdateUser = "UPDATE user SET username = ?, password = ? WHERE id_user = ?";
            String sqlUpdatePetugas = "UPDATE petugas_puskesmas SET nama_petugas = ?, petugas_bagian = ? WHERE id_user = ?";
            String sqlUpdateDokter = "UPDATE dokter SET nama_dokter = ?, spesialis = ? WHERE id_user = ?";
    
            try (Connection conn = KoneksiEldercare.getConnection()) {
                conn.setAutoCommit(false);

                try (PreparedStatement psUser = conn.prepareStatement(sqlUpdateUser)) {
                    psUser.setString(1, usernameBaru);
                    psUser.setString(2, passwordBaru);
                    psUser.setInt(3, idUser);
                    psUser.executeUpdate();
                }
    
                if ("Petugas".equalsIgnoreCase(role)) {
                    try (PreparedStatement psPetugas = conn.prepareStatement(sqlUpdatePetugas)) {
                        psPetugas.setString(1, namaBaru);
                        psPetugas.setString(2, bagianAtauSpesialis);
                        psPetugas.setInt(3, idUser);
                        psPetugas.executeUpdate();
                    }
                } else if ("Dokter".equalsIgnoreCase(role)) {
                    try (PreparedStatement psDokter = conn.prepareStatement(sqlUpdateDokter)) {
                        psDokter.setString(1, namaBaru);
                        psDokter.setString(2, bagianAtauSpesialis);
                        psDokter.setInt(3, idUser);
                        psDokter.executeUpdate();
                    }
                }
    
                conn.commit();
                System.out.println("✅ Akun berhasil diperbarui untuk ID: " + idUser);
                return true;
    
            } catch (SQLException e) {
                System.out.println("❌ Gagal update akun: " + e.getMessage());
                return false;
            }
        }
        
        public boolean hapusAkun(int idUser) {
            String sqlHapusPetugas = "DELETE FROM petugas_puskesmas WHERE id_user = ?";
            String sqlHapusDokter = "DELETE FROM dokter WHERE id_user = ?";
            String sqlHapusUser = "DELETE FROM user WHERE id_user = ?";
    
            try (Connection conn = KoneksiEldercare.getConnection()) {
                conn.setAutoCommit(false);
    
                try (PreparedStatement ps1 = conn.prepareStatement(sqlHapusPetugas)) {
                    ps1.setInt(1, idUser);
                    ps1.executeUpdate();
                }
    
                try (PreparedStatement ps2 = conn.prepareStatement(sqlHapusDokter)) {
                    ps2.setInt(1, idUser);
                    ps2.executeUpdate();
                }
    
                try (PreparedStatement ps3 = conn.prepareStatement(sqlHapusUser)) {
                    ps3.setInt(1, idUser);
                    ps3.executeUpdate();
                }
    
                conn.commit();
                System.out.println("✅ Akun ID " + idUser + " berhasil dihapus!");
                return true;
            } catch (SQLException e) {
                System.out.println("❌ Gagal menghapus akun: " + e.getMessage());
                return false;
            }
        }
    
    }
Disini, ServiceUser tidak punya implementasi langsung, ServiceUser hanya mendefinisikan perilaku untuk layanan yang berhubungan dengan data User. Class seperti SistemEldercare.java atau LoginSystem.java akan mengimplementasikan interface ini untuk mengatur logika user/pengguna.

## **Package**

<img width="317" height="594" alt="image" src="https://github.com/user-attachments/assets/80e7f1d9-2d27-409e-a9de-fed8114a2255" />


<img width="326" height="99" alt="image" src="https://github.com/user-attachments/assets/e1b4b938-85ca-4707-a072-023d4df29b75" />


## **Cara Menggunakan Program**
### 1. Menu login
Pada tampilan login, user akan masuk sesuai role masing-masing

![Gambar WhatsApp 2025-11-02 pukul 21 16 27_b9a473da](https://github.com/user-attachments/assets/d9f21a06-58f6-4e62-9942-0e0acad5397d)

Sebagai contoh disini melakukan login sebagai petugas kesehatan.

<img width="1322" height="883" alt="image" src="https://github.com/user-attachments/assets/170a6f35-af9b-4dbc-801b-e94ab301485f" />

Dan ini contoh apabila melakukan login sebagai dokter.

<img width="1326" height="882" alt="image" src="https://github.com/user-attachments/assets/a70da113-7a9b-4701-b6bd-4302a0cb8836" />



### 2. Menu Petugas 
Setelah user login sebagai petugas kesehatan, maka tampilan pertama yang muncul adalah tampilan dashboard, yang memuat menu dashboard, laporan kesehatan, rekam medis, kelola akun, dan logout.

![Gambar WhatsApp 2025-11-03 pukul 07 58 43_a404e08d](https://github.com/user-attachments/assets/7133f8ed-49f3-444c-bf49-86fb844a9230)


### 3. Menu petugas bagian laporan kesehatan
Ini merupakan tampilan menu laporan kesehatan, disini akan menampilkan semua data riwayat laporan kesehatan lansia.

![Gambar WhatsApp 2025-11-03 pukul 07 58 43_02598bd5](https://github.com/user-attachments/assets/6d68074e-fc18-47fe-98bf-2e6d501e0b63)

### 4. Menu petugas bagian riwayat rekam medis
ini merupakan tampilan dari menu rekam medis, disini akan menampilkan seluruh riwayat data rekam medis.

![Gambar WhatsApp 2025-11-03 pukul 07 58 43_b57a7751](https://github.com/user-attachments/assets/d7b23586-fbee-4678-b96e-d7a393030582)


### 5. Menu petugas bagian kelola akun
Ini merupakan tampilan menu kelola akun, disini akan menampilkan seluruh data akun yang ada pada program.

![Gambar WhatsApp 2025-11-03 pukul 07 58 45_9a2452ab](https://github.com/user-attachments/assets/ef64c553-c341-4d28-8204-eae2dc47fa34)

### 6. Menu petugas bagian laporan kesehatan pada fitur tambah laporan
Pada menu ini, petugas akan menambah data lansia sebagai laporan kesehatan

<img width="1344" height="932" alt="image" src="https://github.com/user-attachments/assets/1a895430-c12e-47b0-946f-06f62ea142d0" />

### 7. Menu petugas bagian laporan pada fitur pencarian data lansia
Setelah data lansia ditambahkan, data akan masuk pada riwayat laporan kesehatan. Disini diterapkan fitur pencarian untuk mempermudah pencarian data.

<img width="1343" height="936" alt="image" src="https://github.com/user-attachments/assets/88a9fd82-779a-4a59-aaeb-a8dbc7423427" />

### 8. Menu petugas bagian laporan pada fitur ubah data lansia
Disini, petugas dapat melakukan perubahan data laporan lansia yaitu keluhan/diagnosis dan juga tindakan.
![Gambar WhatsApp 2025-11-04 pukul 12 02 24_1bc7e8b0](https://github.com/user-attachments/assets/44051490-efda-4ebb-ada3-5ff6cfb12532)

### 8. Menu petugas bagian laporan pada fitur hapus data lansia
Disini juga bisa melakukan penghapusan data lansia apabila ingin menghapus data laporan lansia.

<img width="1345" height="939" alt="image" src="https://github.com/user-attachments/assets/ba5b8b9a-3c54-47a8-81ca-b58e9affc590" />

### 9. Menu petugas bagian kelola akun pada fitur tambah akun
Pada menu ini, petugas dapat menambah akun baru, yaitu akun petugas dan juga akun dokter yang baru.

<img width="1344" height="940" alt="image" src="https://github.com/user-attachments/assets/3d9592bc-0240-4e20-a0c5-bfa529da4b28" />

#### A. Registrasi akun petugas baru
Sebagai contoh disini melakukan proses tambah akun petugas yang baru
<img width="1350" height="943" alt="image" src="https://github.com/user-attachments/assets/168af59c-2f70-4179-85b2-ac2aaebebaa4" />
<img width="1350" height="942" alt="image" src="https://github.com/user-attachments/assets/07e16e43-c36b-47e5-967e-875a18908cdd" />

#### B. ubah data akun
Pada menu kelola akun, disini dapat melakukan perubahan username seperti contoh ingin melakukan perubahan username pada akun "petugas60" menjadi "petugas16".
<img width="1349" height="937" alt="image" src="https://github.com/user-attachments/assets/cfd4a554-8353-44a5-b85f-3a739b5ca363" />
Setelah selesai melakukan perbahan, maka username akun sebelumnya akan berganti menjadi username yang baru.

<img width="1346" height="942" alt="image" src="https://github.com/user-attachments/assets/4ccf8ec1-1b09-4685-bc95-91ff4ed13b63" />

### 10. Menu dokter
Ini merupakan tampilan dari menu dokter apabila user melakukan login menjadi dokter, dengan tampilan utama yang menampilkan dashboard yang menyajikan ringkasan data lansia.
<img width="1349" height="946" alt="image" src="https://github.com/user-attachments/assets/97b78a92-7a01-4b21-8001-72347e57fd28" />

### 11. Menu dokter bagian laporan kesehatan
Pada bagian menu laporan kesehatan, akan menampilkan data-data laporan kesehatan lansia yang telah ditambahkan oleh petugas kesehatan.
<img width="1344" height="942" alt="image" src="https://github.com/user-attachments/assets/99af158a-3ddd-4b22-91c1-bc82608a8268" />

### 12. Menu dokter bagian rekam medis
Ini adalah menu rekam medis, yang dimana dokter akan menambah, mengubah, dan mengahpus data rekam medis.
<img width="1348" height="944" alt="image" src="https://github.com/user-attachments/assets/15e3ee5d-fda9-4b7e-b4a0-c2fb2023024a" />

#### A. Tambah data rekam medis
Pada fitur tambah data rekam medis, dokter akan menambah data lansia seperti ID lansia, diagnosis, beserta tindakan.
<img width="1344" height="940" alt="image" src="https://github.com/user-attachments/assets/bbe65382-c051-419a-9a4f-ee52876becd5" />

#### B. ubah data rekam medis
Pada fitur ubah data rekam medis, dokter dapat mengubah data dari diagnosis dan juga tindakan.
<img width="1343" height="943" alt="image" src="https://github.com/user-attachments/assets/66353665-6647-4eb6-be0c-791b2e1769af" />

