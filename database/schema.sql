CREATE DATABASE IF NOT EXISTS db_tugas_iscom;
USE db_tugas_iscom;

DROP TABLE IF EXISTS pesanan;
DROP TABLE IF EXISTS produk;
DROP TABLE IF EXISTS pelanggan;

-- TABEL 1: Pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
        nama_pelanggan VARCHAR(100) NOT NULL,
            email VARCHAR(100) NOT NULL,
                no_hp VARCHAR(20)
                );

                -- TABEL 2: Produk
                CREATE TABLE produk (
                    id_produk INT AUTO_INCREMENT PRIMARY KEY,
                        nama_produk VARCHAR(100) NOT NULL,
                            kategori VARCHAR(50) NOT NULL,
                                harga INT NOT NULL,
                                    stok INT NOT NULL
                                    );

                                    -- TABEL 3: Pesanan (Relasi One-to-Many dengan Pelanggan)
                                    CREATE TABLE pesanan (
                                        id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
                                            id_pelanggan INT NOT NULL,
                                                tanggal_pesanan DATE NOT NULL,
                                                    total_harga INT NOT NULL,
                                                        FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan) ON DELETE CASCADE
                                                        );

                                                        -- INSERT DATA (Mengubah Andi -> Megan, Budi -> Bayu, Dewi -> Karin)
                                                        INSERT INTO pelanggan (nama_pelanggan, email, no_hp) VALUES
                                                        ('Megan Susanto', 'megan@email.com', '081234567890'),
                                                        ('Bayu Pratama', 'bayu@email.com', '081298765432'),
                                                        ('Citra Lestari', 'citra@email.com', '081223344556'),
                                                        ('Karin Maharani', 'karin@email.com', '081266778899'),
                                                        ('Eko Saputra', 'eko@email.com', '081200112233');

                                                        INSERT INTO produk (nama_produk, kategori, harga, stok) VALUES
                                                        ('Laptop Gaming', 'Elektronik', 15000000, 5),
                                                        ('Mouse Wireless', 'Aksesoris', 150000, 20),
                                                        ('Keyboard Mechanical', 'Aksesoris', 450000, 15),
                                                        ('Monitor 24 Inch', 'Elektronik', 2100000, 8),
                                                        ('Flashdisk 64GB', 'Aksesoris', 85000, 50);

                                                        INSERT INTO pesanan (id_pelanggan, tanggal_pesanan, total_harga) VALUES
                                                        (1, '2026-10-01', 15000000),
                                                        (1, '2026-10-02', 150000),
                                                        (2, '2026-10-02', 2100000),
                                                        (3, '2026-10-03', 450000),
                                                        (4, '2026-10-04', 85000);
