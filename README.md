# Proyek Web Sederhana dengan Database MySQL & PHP

Proyek ini dibuat untuk memenuhi Penugasan ISCOM 2026.

## Penjelasan Entitas, Atribut, dan Relasi

1. **Entitas Pelanggan** (`pelanggan`)
   - Atribut: `id_pelanggan` (PK), `nama_pelanggan`, `email`, `no_hp`
   2. **Entitas Produk** (`produk`)
      - Atribut: `id_produk` (PK), `nama_produk`, `kategori`, `harga`, `stok`
      3. **Entitas Pesanan** (`pesanan`)
         - Atribut: `id_pesanan` (PK), `id_pelanggan` (FK), `tanggal_pesanan`, `total_harga`

         ### Relasi dan Kardinalitas
         - Relasi antara tabel `pelanggan` dan `pesanan` adalah **One-to-Many (1:N)**.
         - **Penjelasan**: Satu pelanggan dapat melakukan banyak transaksi pesanan, namun satu pesanan hanya milik satu pelanggan.

         ## Cara Menjalankan Proyek
         1. Import database ke MariaDB/MySQL:
            ```bash
               sudo mysql -u root < database/schema.sql
