# Elder Care System

"Elder Care System" adalah sebuah sistem informasi yang berfungsi untuk memfasilitasi proses pencatatan, pelaporan, dan pemantauan kondisi kesehatan lansia, khususnya bagi mereka yang hidup sendiri dan kesulitan mengakses layanan kesehatan. Sistem ini dirancang untuk digunakan oleh Petugas Puskesmas Sungai Pinang dan dokter yang bekerja sama dalam proses pemantauan lansia. Petugas puskesmas berperan sebagai admin dan tenaga pelayanan kesehatan, yang dapat menginput laporan kesehatan lansia berdasarkan hasil observasi lapangan. Sementara itu, dokter dapat mengakses laporan tersebut untuk memberikan diagnosa dan membuat rekam medis berdasarkan keluhan yang dilaporkan oleh petugas. Melalui sistem ini, dokter dan petugas dapat memantau kondisi lansia secara berkala, mengidentifikasi gejala sejak dini, dan memberikan tindakan medis yang sesuai tanpa harus menunggu kunjungan langsung ke fasilitas kesehatan.

## **FItur Program**

## **Penerapan OOP**

### **Encapsulation**

1. Model/Dokter.java
   
<img width="402" height="152" alt="image" src="https://github.com/user-attachments/assets/64c215f9-822b-4e34-be16-cfa53e3c400e" />

2. Model/Lansia.java
   
<img width="391" height="172" alt="image" src="https://github.com/user-attachments/assets/14dd1c2d-e19a-499b-aecf-b3997f1e8105" />

3. Model/Person.java

<img width="389" height="166" alt="image" src="https://github.com/user-attachments/assets/93e219f0-ac83-4f69-8b78-5a3e883407db" />

4. Model/Petugas.java
   
<img width="396" height="177" alt="image" src="https://github.com/user-attachments/assets/e76d285f-9c98-48c0-92a9-b1e943415103" />

5. Model/User.java

<img width="394" height="168" alt="image" src="https://github.com/user-attachments/assets/c725dfb9-8b4f-435f-ab84-0adae78548d2" />

6. Model/RekamMedis.java
   
<img width="608" height="261" alt="image" src="https://github.com/user-attachments/assets/750574dd-ba86-4c40-a3f0-93605824ffbf" />

7. Model/LaporanKesehatan.java
<img width="767" height="265" alt="image" src="https://github.com/user-attachments/assets/2226a59b-a01b-4534-93c8-ed9c30c8baa1" />


### **Inheritance**
Inheritance diterapkan di package Model, khususnya antara class Person dan User.

1. Superclass: Person.java
<img width="705" height="482" alt="image" src="https://github.com/user-attachments/assets/1d4c1102-28d7-4c62-aee3-64d87783b9d9" />

2. Subclass User menggunakan keyword extends untuk mewarisi class Person untuk mendapatkan atribut dan method dari Person, seperti id, nama, dan showInfo().
<img width="817" height="328" alt="image" src="https://github.com/user-attachments/assets/66d0fadd-9bcd-4de5-9255-82e5d12f22df" />

Serta melakukan override terhadap method showInfo() untuk menampilkan data pengguna secara lebih spesifik.
<img width="676" height="108" alt="image" src="https://github.com/user-attachments/assets/7f86e2f7-b22c-41f7-9331-66d7b349405f" />


### **Abstraction**

Abstraction terletak di dalam folder src/Model/, tepatnya di file Person.java

<img width="564" height="457" alt="image" src="https://github.com/user-attachments/assets/9c1edec1-b57a-4616-b800-f5bbaa416309" />

Class Dokter.java, Petugas.java, dan Lansia.java mewarisi class Person.java dan mengimplementasikan method abstract-nya.

* Dokter.java
<img width="777" height="98" alt="image" src="https://github.com/user-attachments/assets/e970984e-e869-4ae6-a789-513248e69c5b" />

* Petugas.java
<img width="819" height="114" alt="image" src="https://github.com/user-attachments/assets/57af54f5-6772-41fb-a9b5-3ef26bc7b347" />

* Lansia.java
<img width="793" height="112" alt="image" src="https://github.com/user-attachments/assets/7838b266-a6a2-4e15-98b2-3c01fca682cf" />

### **Polymorphism**
1. Didalam file Model/Person.java, terdapat method:
<img width="555" height="100" alt="image" src="https://github.com/user-attachments/assets/65d24291-af44-47d9-b5c9-46ff63bbe39e" />

Method ini nanti di-override oleh semua subclass-nya.



2. Override method Model/Dokter.java untuk dokter.
<img width="791" height="128" alt="image" src="https://github.com/user-attachments/assets/f20c55b2-cd7d-443f-aa74-93b8203958bc" />

3. Override method Model/Petugas.java untuk Petugas.
<img width="814" height="98" alt="image" src="https://github.com/user-attachments/assets/be31b70d-d5da-4561-b6d5-be91b0824f6c" />

4. Override method Model/Lansia.java untuk Lansia.
<img width="812" height="113" alt="image" src="https://github.com/user-attachments/assets/370d6cc9-5bd6-45bc-ac84-1d58c7688db9" />

5. Polymorphism di EldercareSystem.java
<img width="504" height="146" alt="image" src="https://github.com/user-attachments/assets/d7015591-4488-4f12-9eec-31b35c65fcf1" />
Objek LoginSystem dipanggil lewat referensi SistemEldercare

6. Letak polymorphism pada src/Main/EldercareSystem.java terletak di:
<img width="656" height="288" alt="image" src="https://github.com/user-attachments/assets/ae46631c-5052-480f-bcf6-bb5188c03243" />
Di sini program mengecek tipe asli objek user, kalau ternyata user itu objek dari Petugas, maka program nya masuk MenuPetugas, kalau user itu objek dari Dokter, maka program nya masuk MenuDokter

Dan terletak di:
<img width="672" height="157" alt="image" src="https://github.com/user-attachments/assets/5630bcfd-8e9e-44ce-97df-3d1475488637" />

Pada baris User user = auth.login(username, password); user ini bentuknya variabel bertipe User, tapi isinya bisa macam-macam tergantung siapa yang login. Misalnya kalau dokter yang login maka user isinya objek Dokter. Kalau petugas yang login maka user isinya objek Petugas.

### **Interface**

<img width="506" height="232" alt="image" src="https://github.com/user-attachments/assets/c0cdf440-9d40-4dce-9bac-430726d6bab3" />
Interface diterapkan pada file SistemEldercare.java di folder Service.

## **Package**

<img width="269" height="612" alt="image" src="https://github.com/user-attachments/assets/7ffb1394-2b1f-4762-9d3d-f0dd7c209b35" />


## **Cara Menggunakan Program**

