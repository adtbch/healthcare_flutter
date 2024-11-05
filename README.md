# Aplikasi Healthcare

## Pendahuluan

Aplikasi Healthcare adalah aplikasi mobile yang dirancang untuk menyediakan alat manajemen kesehatan yang komprehensif bagi pengguna. Terinspirasi oleh desain elegan dari [Medizinisch Healthcare Technology](https://dribbble.com/shots/20927462-Medizinisch-Healthcare-Technology-Mobile-Apps), aplikasi ini bertujuan untuk meningkatkan pengalaman pengguna melalui navigasi yang intuitif, wawasan kesehatan yang mendetail, dan proses onboarding yang dipersonalisasi.

![original-79ca600a580cdc59c866a0bd9e49f91f](https://github.com/user-attachments/assets/0f84a6d0-343b-4f06-8059-f2575e3dca92)
[Medizinisch Healthcare Technology](https://github.com/user-attachments/assets/fbcd435d-56bc-4f16-91d4-7171f563e127)

## Fitur

- **Onboarding**: Pengenalan mulus terhadap fitur-fitur aplikasi dengan tutorial interaktif.
- **Dashboard**: Pusat utama yang menampilkan metrik kesehatan vital dan aktivitas terbaru.
- **Detail Kesehatan**: Informasi mendalam tentang berbagai parameter kesehatan dengan pembaruan waktu nyata.
- **Komponen Global**: Komponen UI yang dapat digunakan kembali seperti tombol, kartu, bar progres, dan tipografi untuk tampilan yang konsisten.
- **Utilitas Routing**: Manajemen navigasi yang efisien antar berbagai layar.
- **Manajemen State**: Controller yang terorganisir untuk mengelola state dan logika aplikasi.

## Arsitektur

Aplikasi ini mengikuti arsitektur modular, memastikan skalabilitas dan kemudahan pemeliharaan. Berikut adalah gambaran struktur direktori proyek:

```
healthcare/
├── lib/
│   ├── core/
│   │   ├── config/
│   │   │   └── main_app.dart
│   │   ├── global_component/
│   │   │   ├── button.dart
│   │   │   ├── card.dart
│   │   │   ├── progress_bar.dart
│   │   │   └── typography.dart
│   │   └── utils/
│   │       └── route_utils.dart
│   ├── data/
│   └── features/
│       ├── dashboard/
│       │   ├── controller/
│       │   │   └── dashboard_controller.dart
│       │   ├── screens/
│       │   │   └── dashboard_screen.dart
│       │   └── widgets/
│       ├── health_detail/
│       │   ├── controller/
│       │   │   └── health_detail_controller.dart
│       │   ├── screens/
│       │   │   └── health_detail_screen.dart
│       │   └── widgets/
│       │       └── health_detail_widget.dart
│       └── onboarding/
│           ├── controller/
│           │   └── onboarding_controller.dart
│           ├── screens/
│           │   └── onboarding_screen.dart
│           └── widgets/
│               └── onboarding_widget.dart
```

- **core**: Berisi file konfigurasi, komponen global, dan fungsi utilitas.
- **data**: Mengelola sumber data, API, dan repositori.
- **features**: Mengenkapsulasi berbagai fitur aplikasi, masing-masing dengan controller, layar, dan widgetnya sendiri.

## Cara Memulai

Ikuti petunjuk berikut untuk mengatur proyek secara lokal.

### Prasyarat

- **Flutter SDK**: Pastikan Anda telah menginstal Flutter. [Panduan Instalasi](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Sudah termasuk dalam instalasi Flutter.
- **IDE**: VS Code, Android Studio, atau IDE pilihan lainnya.
- **Git**: Untuk kontrol versi. [Download Git](https://git-scm.com/downloads)

### Instalasi

1. **Clone Repository**

   ```bash
   git clone https://github.com/yourusername/healthcare-app.git
   cd healthcare-app
   ```

2. **Instalasi Dependensi**

   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi**

   - **Menggunakan Flutter CLI**

     ```bash
     flutter run
     ```

   - **Menggunakan IDE**

     - Buka proyek di IDE pilihan Anda.
     - Jalankan proyek menggunakan alat bawaan IDE.

## Penggunaan

Setelah meluncurkan aplikasi, pengguna akan disambut dengan proses onboarding yang memperkenalkan fitur-fitur aplikasi. Setelah menyelesaikan onboarding, pengguna dapat menavigasi melalui dashboard untuk melihat metrik kesehatan mereka, mengakses informasi kesehatan yang mendetail, dan mengelola data kesehatan mereka secara efektif.

### Layar

- **Layar Onboarding**: Tutorial interaktif dan sorotan fitur.
- **Layar Dashboard**: Gambaran umum metrik kesehatan dan aktivitas terbaru.
- **Layar Detail Kesehatan**: Wawasan mendalam tentang parameter kesehatan tertentu.

## Kontribusi

Kontribusi sangat diterima! Silakan ikuti langkah-langkah berikut untuk berkontribusi:

1. **Fork Repository**

2. **Buat Cabang Baru**

   ```bash
   git checkout -b feature/FiturAnda
   ```

3. **Commit Perubahan Anda**

   ```bash
   git commit -m "Tambahkan fitur Anda"
   ```

4. **Push ke Cabang**

   ```bash
   git push origin feature/FiturAnda
   ```

5. **Buka Pull Request**

## Lisensi

Proyek ini dilisensikan di bawah [Lisensi MIT](LICENSE).

## Ucapan Terima Kasih

- [Desain Dribbble](https://dribbble.com/shots/20927462-Medizinisch-Healthcare-Technology-Mobile-Apps) oleh [Nama Desainer](https://dribbble.com/designerprofile) untuk desain aplikasi kesehatan yang inspiratif.
- [Flutter](https://flutter.dev/) untuk framework yang luar biasa.
- [Dart](https://dart.dev/) untuk bahasa pemrograman.

---
