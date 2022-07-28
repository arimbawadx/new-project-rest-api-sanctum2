<h1 align="center">Backend Perijinan</h1>

<!-- ## Apa itu Perijinan? -->

<!-- Web perijinan yang dibuat oleh <a href="https://github.com/arimbawadx"> Yoga Arimbawa </a>. **lorem ipsum** -->

## Modul yang sudah tersedia?

-   Registrasi
-   Notifikasi Verifikasi Pendaftaran
-   Login
-   Dashboard Admin
-   Master Data User pada Admin
-   Master Data Jenis Ijin beserta syarat dan alur pada Admin
-   Permohonan Ijin Pemohon
-   Pencarian Jenis Ijin Pemohon
-   Popup Detail Syarat Jenis Ijin Pemohon
-   Pengajuan Ijin Pemohon
-   Upload Berkas pada Pengajuan Ijin Pemohon
-   Proses Verifikasi Berkas pada Operator
<!-- ## Release Date

**Release date : 28 Apr 2020**

> lorem -->

---

## Install

1. **Clone Repository**

```bash
git clone https://github.com/arimbawadx/be-perijinan.git
```

2. **Jalankan composer install dan buat file .env**

```bash
composer install
cp .env.example .env
```

3. **Buka `.env` lalu ubah baris berikut sesuai dengan databasemu yang ingin dipakai**

```bash
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=
```

4. **Import database pada file "database/DB"**

5. **Jalankan perintah configurasi berikut**

```bash
php artisan key:generate
```

6. **Jalankan website**

```bash
php artisan serve
```

## Author

-   Facebook : <a href="https://web.facebook.com/arimbawadx.me/"> Yoga Arimbawa</a>
-   LinkedIn : <a href="https://www.linkedin.com/in/arimbawadx/"> Yoga Arimbawa</a>

## License

-   Copyright © 2022 arimbawadx.
