-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Sep 2020 pada 11.24
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfo_pengadaan_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_permintaan`
--

CREATE TABLE `barang_permintaan` (
  `kd_brg_permintaan` varchar(5) NOT NULL,
  `no_permintaan` varchar(30) NOT NULL,
  `nama_brg_minta` varchar(20) NOT NULL,
  `spek_brg_minta` varchar(50) NOT NULL,
  `satuan_brg_minta` varchar(10) NOT NULL,
  `qty_brg_minta` int(5) NOT NULL,
  `hrg_satuan_minta` double NOT NULL,
  `hrg_subttl_minta` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_permintaan`
--

INSERT INTO `barang_permintaan` (`kd_brg_permintaan`, `no_permintaan`, `nama_brg_minta`, `spek_brg_minta`, `satuan_brg_minta`, `qty_brg_minta`, `hrg_satuan_minta`, `hrg_subttl_minta`) VALUES
('ATK20', 'REQ0001/BNI/VI/2020', 'Alat Tulis Kantor', 'Buku, Pulpen dan Pensil', 'Paket', 20, 100000, 2000000),
('BSD1', '000000012381288/VI/CMIB/2020aa', 'Buku Tulis', '40 Halaman, 10 pcs/ pack', 'Pack', 30, 50000, 1500000),
('KMPTR', 'REQ00000000000002/CIMBN/X/2020', 'Komputer', 'Ram 8 GB, ROM 1T, LCD min 21 inch', 'Paket', 20, 6000000, 120000000),
('M24K', '000121212209383838/BIN/X/2020', 'Emas', 'Batangan, 20 karat', 'Pcs', 70, 5000000, 350000000),
('MKJ82', '0120128388/MAKALA/VI/2020', 'Meja', 'Kayu Jati, 4 Kaki', 'Unit', 30, 5000000, 150000000),
('mon20', 'REQ00238422/BNI/VII/2020', 'Monitor', '32 inch, warna hitam standar', 'Unit', 20, 1500000, 30000000),
('MOS', 'REQ000001', 'Mouse', 'Wireless', 'Pcs', 50, 50000, 2500000),
('mos20', 'REQ00238422/BNI/VII/2020', 'Mouse', 'Wireless(include mousepad)', 'Unit', 20, 50000, 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_pesan`
--

CREATE TABLE `barang_pesan` (
  `kd_brg_pesan` varchar(5) NOT NULL,
  `no_pesan` varchar(30) NOT NULL,
  `kd_brg_penawaran` varchar(5) NOT NULL,
  `nama_brg_pesan` varchar(20) NOT NULL,
  `merek_brg_pesan` varchar(20) NOT NULL,
  `spek_brg_pesan` varchar(50) NOT NULL,
  `satuan_brg_pesan` varchar(10) NOT NULL,
  `qty_brg_pesan` int(5) NOT NULL,
  `hrg_satuan_pesan` double NOT NULL,
  `hrg_subttl_pesan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_pesan`
--

INSERT INTO `barang_pesan` (`kd_brg_pesan`, `no_pesan`, `kd_brg_penawaran`, `nama_brg_pesan`, `merek_brg_pesan`, `spek_brg_pesan`, `satuan_brg_pesan`, `qty_brg_pesan`, `hrg_satuan_pesan`, `hrg_subttl_pesan`) VALUES
('AAZ', 'xxxx/VI/abc/2020', 'TYTA', 'Mobil', 'Toyota Avanza', 'Hitam, kapasitas 6 org', 'Unit', 20, 220000000, 4400000000),
('BKJ01', 'RSRV001/ABC/VII/2020', 'BSD', 'Buku Tulis', 'Jansco', '70 gram, 50 lembar', 'Pack', 20, 30000, 600000),
('BTJ70', '1929283/ABC/VI/2020', 'BSD', 'Buku Tulis', 'Jansco', '70 gram, 50 lembar', 'Pack', 30, 30000, 900000),
('cmasn', 'jvjhv878ty6f', 'MOS', 'Mouse', 'Logitech 224', 'Hitam, kabel, standart', 'Pcs', 50, 40000, 2000000),
('CPU01', '109238828/ABC/VI/2020', 'CPU23', 'CPU', 'NVIDIA', 'RAM 16 GB, ROM 1T, Core i7', 'Unit', 20, 2000000, 40000000),
('KYB01', '109238828/ABC/VI/2020', 'KYBD', 'Keyboard', 'Logitech C12', 'Hitam, kabel', 'Pcs', 20, 60000, 1200000),
('LCD22', '109238828/ABC/VI/2020', 'LCDD', 'LCD', 'LG 221', '32 inch, hitam', 'Unit', 20, 800000, 16000000),
('M24K', '08667676/ABC/VI/2020', 'M24K', 'Emas', 'Dream Gold', 'Batangan, 24 karat', 'Pcs', 70, 2000000, 140000000),
('ML224', '109238828/ABC/VI/2020', 'MOS', 'Mouse', 'Logitech 224', 'Hitam, kabel, standart', 'Pcs', 20, 50000, 1000000),
('MONLG', 'RSV19023892/ABC/VII/2020', 'LGMON', 'Monitor', 'LG', '32 inch(include remote)&warna hitam', 'Unit', 25, 1000000, 25000000),
('MSL72', 'RSV19023892/ABC/VII/2020', 'LGMOS', 'Mouse', 'Logitech 727', 'Wireless(include mousepad)', 'Unit', 25, 45000, 1125000),
('PEN20', 'RSRV001/ABC/VII/2020', 'PENJS', 'Pulpen', 'Jansco', 'Standar warna hitam', 'Pack', 20, 20000, 400000),
('PNJS', 'RSRV001/ABC/VII/2020', 'PENSD', 'Pensil', 'Jansco', 'standar, isi10', 'Pack', 20, 15000, 300000),
('SZ', '109238828/ABC/VI/2020', 'SPK94', 'Speaker', 'Zumba', 'Wireless', 'Unit', 20, 35000, 700000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(4) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `no_siup_customer` varchar(30) NOT NULL,
  `alamat_customer` varchar(100) NOT NULL,
  `email_customer` varchar(30) NOT NULL,
  `telp_customer` varchar(15) NOT NULL,
  `fax_customer` varchar(15) NOT NULL,
  `nama_pic_customer` varchar(30) NOT NULL,
  `email_pic_customer` varchar(30) NOT NULL,
  `telp_pic_customer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `no_siup_customer`, `alamat_customer`, `email_customer`, `telp_customer`, `fax_customer`, `nama_pic_customer`, `email_pic_customer`, `telp_pic_customer`) VALUES
('CUS1', 'Bank Centra Andia, PT', '23.32222.1111.232323', 'Jl. Slipi no. 35 Jakarta Pusat', 'bca@info.com', '021-92222', '021-92223', 'Rudi', 'rudi@gmail.com', '0821727272727'),
('CUS2', 'CMIB, PT', '23.32222.1111.232932', 'Jl. Petamburan Jakarta Pusat', 'cimb@info.com', '021-8282662', '021-8282661', 'Rahardian', 'rahardian@gmail.com', '08217272721'),
('CUS3', 'Bank Nilam Internasional, PT', '26.92222.1111.232503', 'Jl. Raya Serpong No. 40 Tangerang Selatan, Banten', 'bni@info.com', '021-827772', '021-827773', 'Zico Z.', 'zico@gmail.com', '08217272622'),
('CUS4', 'Bank Makala, PT', '76.32062.1121.232022', 'Jl. Jendral Sudirman No. 78, Gambir, Jakarta Pusat', 'mandiri@info.com', '021-28282727', '021-28282728', 'Anissa', 'nisa29@gmail.com', '083828172722');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `no_bayar` varchar(30) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `debet` varchar(10) NOT NULL,
  `kredit` varchar(10) NOT NULL,
  `nominal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`no_bayar`, `tgl_transaksi`, `debet`, `kredit`, `nominal`) VALUES
('665673563542fgdgfd', '2020-06-10', 'Pembelian', 'Bank', 64900000),
('1209312837asba', '2020-06-10', 'Bank', 'Penjualan', 385110000),
('1209137nasndajknsd', '2020-06-09', 'Bank', 'Penjualan', 132110000),
('aasdbnasd', '2020-06-15', 'Bank', 'Penjualan', 2860000),
('bnvbnvstrsfx', '2020-06-15', 'Pembelian', 'Bank', 2310000),
('0129hbdcsuhc8w7c22', '2020-06-09', 'Pembelian', 'Bank', 14010000),
('5rc5vbu9yn90', '2020-07-05', 'Pembelian', 'Bank', 1485000),
('7ftuiygjcrs53e', '2020-07-05', 'Bank', 'Penjualan', 2255000),
('nx1w9na98sdfb1ui2eihs9edru913', '2020-07-05', 'Pembelian', 'Bank', 28847500),
('jbrc192ubc9e12b9e1w9ws', '2020-07-08', 'Bank', 'Penjualan', 34210000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no_bayar` varchar(30) NOT NULL,
  `no_ref` varchar(30) NOT NULL,
  `jenis_bayar` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `desc_bayar` varchar(30) NOT NULL,
  `total_bayar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no_bayar`, `no_ref`, `jenis_bayar`, `tgl_bayar`, `desc_bayar`, `total_bayar`) VALUES
('0129hbdcsuhc8w7c22', '08667676/ABC/VI/2020', 'Pemesanan', '2020-06-09', 'Pembayaran Emas BNI Ke Vendor', 14010000),
('1209137nasndajknsd', 'REQ00000000000002/CIMBN/X/2020', 'Permintaan', '2020-06-09', 'Pembayaran 20 paket komputer', 132110000),
('1209312837asba', '000121212209383838/BIN/X/2020', 'Permintaan', '2020-06-10', 'Penerimaan kas dari BNI', 385110000),
('5rc5vbu9yn90', 'RSRV001/ABC/VII/2020', 'Pemesanan', '2020-07-05', 'Pembayaran ATK ke Jansco', 1485000),
('665673563542fgdgfd', '109238828/ABC/VI/2020', 'Pemesanan', '2020-06-10', '20 Komputer ke Memo Tech', 64900000),
('7ftuiygjcrs53e', 'REQ0001/BNI/VI/2020', 'Permintaan', '2020-07-05', 'Penerimaan pembayaran ATK', 2255000),
('aasdbnasd', 'REQ000001', 'Permintaan', '2020-06-15', 'Pembayaran mouse', 2860000),
('bnvbnvstrsfx', 'jvjhv878ty6f', 'Pemesanan', '2020-06-15', 'Pembayaran 50 mouse', 2310000),
('jbrc192ubc9e12b9e1w9ws', 'REQ00238422/BNI/VII/2020', 'Permintaan', '2020-07-08', 'Bayar 20 mouse&monitor', 34210000),
('nx1w9na98sdfb1ui2eihs9edru913', 'RSV19023892/ABC/VII/2020', 'Pemesanan', '2020-07-05', 'Bayar 20 Monitor&Mouse Berkah', 28847500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pesan` varchar(30) NOT NULL,
  `no_permintaan` varchar(30) NOT NULL,
  `id_vendor` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `desc_pesan` varchar(30) NOT NULL,
  `hrg_ttl_brgpesan` double NOT NULL,
  `jasa_kirim_pesan` int(6) NOT NULL,
  `hrg_ttl_pesan` double NOT NULL,
  `ppn_masukan` double NOT NULL,
  `grand_ttl_pesan` double NOT NULL,
  `status_pesan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`no_pesan`, `no_permintaan`, `id_vendor`, `id_user`, `tgl_pesan`, `desc_pesan`, `hrg_ttl_brgpesan`, `jasa_kirim_pesan`, `hrg_ttl_pesan`, `ppn_masukan`, `grand_ttl_pesan`, `status_pesan`) VALUES
('08667676/ABC/VI/2020', '000121212209383838/BIN/X/2020', 'VDR06', 'RSASV', '2020-06-03', '70 Emas Untuk BNI', 140000000, 100000, 140100000, 14010000, 154110000, 'Pemesanan Selesai'),
('109238828/ABC/VI/2020', 'REQ00000000000002/CIMBN/X/2020', 'VDR01', 'MIYA', '2020-06-05', '20 Paket Komputer', 58900000, 100000, 59000000, 5900000, 64900000, 'Pemesanan Selesai'),
('1929283/ABC/VI/2020', '000000012381288/VI/CMIB/2020aa', 'VDR05', 'RSASV', '2020-06-04', 'Pesan 30 pcs Buku ke jansco', 900000, 100000, 1000000, 100000, 1100000, 'Menunggu Pesanan'),
('jvjhv878ty6f', 'REQ000001', 'VDR01', 'RSASV', '2020-06-04', 'Pesan mouse 50 pcs', 2000000, 100000, 2100000, 210000, 2310000, 'Pemesanan Selesai'),
('RSRV001/ABC/VII/2020', 'REQ0001/BNI/VI/2020', 'VDR05', 'DMRH', '2020-07-02', 'Pembelian ATK', 1300000, 50000, 1350000, 135000, 1485000, 'Pemesanan Selesai'),
('RSV19023892/ABC/VII/2020', 'REQ00238422/BNI/VII/2020', 'VDR03', 'N2121', '2020-07-03', 'Beli 20 monitor&mouse utk BNI', 26125000, 100000, 26225000, 2622500, 28847500, 'Pemesanan Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penawaran_vendor`
--

CREATE TABLE `penawaran_vendor` (
  `kd_brg_penawaran` varchar(5) NOT NULL,
  `id_vendor` varchar(5) NOT NULL,
  `nama_brg_penawaran` varchar(20) NOT NULL,
  `merek_brg_penawaran` varchar(20) NOT NULL,
  `spek_brg_penawaran` varchar(50) NOT NULL,
  `satuan_penawaran` varchar(10) NOT NULL,
  `hrg_satuan_penawaran` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penawaran_vendor`
--

INSERT INTO `penawaran_vendor` (`kd_brg_penawaran`, `id_vendor`, `nama_brg_penawaran`, `merek_brg_penawaran`, `spek_brg_penawaran`, `satuan_penawaran`, `hrg_satuan_penawaran`) VALUES
('BSD', 'VDR05', 'Buku Tulis', 'Jansco', '70 gram, 50 lembar', 'Pack', 30000),
('BT', 'VDR10', 'Buku Tulis', 'Sinar Dunia', '50 lembar, isi 10 buku', 'Pack', 30000),
('CPU23', 'VDR01', 'CPU', 'NVIDIA', 'RAM 16 GB, ROM 1T, Core i7', 'Unit', 2000000),
('KYBD', 'VDR01', 'Keyboard', 'Logitech C12', 'Hitam, kabel', 'Pcs', 60000),
('LCDD', 'VDR01', 'LCD', 'LG 221', '32 inch, hitam', 'Unit', 800000),
('LGMON', 'VDR03', 'Monitor', 'LG', '32 inch(include remote)&warna hitam', 'Unit', 1000000),
('LGMOS', 'VDR03', 'Mouse', 'Logitech 727', 'Wireless(include mousepad)', 'Unit', 45000),
('M24K', 'VDR06', 'Emas', 'Dream Gold', 'Batangan, 24 karat', 'Pcs', 2000000),
('MKJ12', 'VDR07', 'Meja', 'Chandra Kaya', 'Kayu Jati, 4 Kaki', 'Unit', 16000000),
('MOS', 'VDR01', 'Mouse', 'Logitech 224', 'Hitam, kabel, standart', 'Pcs', 40000),
('PENJS', 'VDR05', 'Pulpen', 'Jansco', 'Standar warna hitam', 'Pack', 20000),
('PENSD', 'VDR05', 'Pensil', 'Jansco', 'standar, isi10', 'Pack', 15000),
('SPK94', 'VDR01', 'Speaker', 'Zumba', 'Wireless', 'Unit', 35000),
('TSSWL', 'VDR08', 'Tempat Sampah', 'Swallow', '3 Kotak(Organik, Non Organik dan B3)', 'Unit', 50000),
('TYTA', 'VDR04', 'Mobil', 'Toyota Avanza', 'Hitam, kapasitas 6 org', 'Unit', 220000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan`
--

CREATE TABLE `permintaan` (
  `no_permintaan` varchar(30) NOT NULL,
  `id_customer` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `desc_permintaan` varchar(30) NOT NULL,
  `hrg_ttl_brgpermintaan` double NOT NULL,
  `jasa_kirim_permintaan` int(6) NOT NULL,
  `hrg_ttl_permintaan` double NOT NULL,
  `ppn_keluaran` double NOT NULL,
  `grand_ttl_permintaan` double NOT NULL,
  `status_permintaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permintaan`
--

INSERT INTO `permintaan` (`no_permintaan`, `id_customer`, `id_user`, `tgl_permintaan`, `tgl_pengiriman`, `desc_permintaan`, `hrg_ttl_brgpermintaan`, `jasa_kirim_permintaan`, `hrg_ttl_permintaan`, `ppn_keluaran`, `grand_ttl_permintaan`, `status_permintaan`) VALUES
('000000012381288/VI/CMIB/2020aa', 'CUS2', 'MIYA', '2020-06-03', '2020-06-10', '30 Pack Buku tulis', 1500000, 100000, 1600000, 160000, 1760000, 'Menunggu Pesanan'),
('000121212209383838/BIN/X/2020', 'CUS3', 'RSASV', '2020-06-02', '2020-06-10', '70 emas untuk BNI', 350000000, 100000, 350100000, 35010000, 385110000, 'Permintaan Selesai'),
('0120128388/MAKALA/VI/2020', 'CUS4', 'RSASV', '2020-06-22', '2020-06-29', '30 Meja Kayu Jati', 150000000, 100000, 150100000, 15010000, 165110000, 'Melakukan Pemesanan'),
('REQ00000000000002/CIMBN/X/2020', 'CUS2', 'RSASV', '2020-06-04', '2020-06-10', '20 Paket Komputer', 120000000, 100000, 120100000, 12010000, 132110000, 'Persetujuan Selesai Permintaan'),
('REQ000001', 'CUS1', 'MIYA', '2020-06-03', '2020-06-18', 'Mouse 50 pcs', 2500000, 100000, 2600000, 260000, 2860000, 'Persetujuan Selesai Permintaan'),
('REQ0001/BNI/VI/2020', 'CUS3', 'DMRH', '2020-07-01', '2020-07-10', '20 Paket ATK ke BNI', 2000000, 50000, 2050000, 205000, 2255000, 'Permintaan Selesai'),
('REQ00238422/BNI/VII/2020', 'CUS3', 'N2121', '2020-07-03', '2020-07-10', 'Permintaan 20 monitor & mouse', 31000000, 100000, 31100000, 3110000, 34210000, 'Persetujuan Selesai Permintaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_barang`
--

CREATE TABLE `stok_barang` (
  `kd_brg_stok` varchar(5) NOT NULL,
  `no_permintaan` varchar(30) NOT NULL,
  `id_customer` varchar(4) NOT NULL,
  `nama_brg` varchar(20) NOT NULL,
  `merek_brg` varchar(20) NOT NULL,
  `spek_brg` varchar(50) NOT NULL,
  `satuan_brg` varchar(10) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok_barang`
--

INSERT INTO `stok_barang` (`kd_brg_stok`, `no_permintaan`, `id_customer`, `nama_brg`, `merek_brg`, `spek_brg`, `satuan_brg`, `hrg_satuan`, `stok`) VALUES
('MONLG', 'REQ00238422/BNI/VII/2020', 'CUS3', 'Monitor', 'LG', '32 inch(include remote)&warna hitam', 'Unit', 1000000, 4),
('MSL72', 'REQ00238422/BNI/VII/2020', 'CUS3', 'Mouse', 'Logitech 727', 'Wireless(include mousepad)', 'Unit', 45000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(5) NOT NULL,
  `nama_user` char(30) NOT NULL,
  `jabatan` char(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `pass` char(10) NOT NULL,
  `hak_akses` varchar(15) NOT NULL,
  `id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `jabatan`, `no_telp`, `pass`, `hak_akses`, `id`) VALUES
('ADMIN', 'Ramli', 'Manager', '0821772727', '12345678', 'Admin', 'ADMIN'),
('DMRH', 'Dimas Rahardian', 'Pegawai', '082818271216', '12345678', 'User', 'DMRH'),
('MIYA', 'Miya', 'Staff', '0821772722', '12345678', 'User', 'MIYA'),
('N2121', 'Nino Fernando', 'Staff', '087127317263', '12345678', 'User', 'N2121');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `id_vendor` varchar(5) NOT NULL,
  `nama_vendor` varchar(30) NOT NULL,
  `bidang_usaha` varchar(30) NOT NULL,
  `no_siup_vendor` varchar(30) NOT NULL,
  `alamat_vendor` varchar(100) NOT NULL,
  `email_vendor` varchar(30) NOT NULL,
  `telp_vendor` varchar(15) NOT NULL,
  `fax_vendor` varchar(15) NOT NULL,
  `nama_pic_vendor` varchar(30) NOT NULL,
  `email_pic_vendor` varchar(30) NOT NULL,
  `telp_pic_vendor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`id_vendor`, `nama_vendor`, `bidang_usaha`, `no_siup_vendor`, `alamat_vendor`, `email_vendor`, `telp_vendor`, `fax_vendor`, `nama_pic_vendor`, `email_pic_vendor`, `telp_pic_vendor`) VALUES
('VDR01', 'Memo Tech, PT', 'Perdagangan Elektronik', '15.35822.1195.20523', 'Jl. Jatinegara Timur No. 5, Jakarta Timur', 'sales@memotech.com', '021-72812', '021-72813', 'Ricky', 'ricky44@gmail.com', '08123722111'),
('VDR02', 'Chanda Furniture, PT', 'Perdagangan Alat Rumah Tangga', '78.35872.2195.20123', 'Jl. Tebet Utara No. 55, Jakarta Selatan', 'salesinfo@chanda.com', '021-8204662', '021-8204663', 'Malik', 'malik@gmail.com', '08217272764'),
('VDR03', 'Berkah Ceria, PT', 'Perdagangan Umum', '26.99522.1431.293573', 'Jl. Ancol Tenggara no. 42, Jakarta Utara', 'salesbc@berkahceria.com', '021-2391288', '021-2391289', 'Zulkarnain', 'z1224@gmail.com', '0827277172'),
('VDR04', 'Melania, PT', 'Perdagangan Transportasi', '76.32062.1121.232051', 'Jl. Madang no. 99, Jakarta Barat', 'salesinfo@melania.com', '021-28282111', '021-28282112', 'Niko', 'niko@melania.com', '082771112'),
('VDR05', 'Jansco, PT', 'Perdagangan Peralatan Kantor', '26.91062.7121.432058', 'Jl. Swadaya Sawah no. 22, Jakarta Barat', 'sales@jansco.com', '021-921222', '021-921223', 'Bimo', 'bimo@gmail.com', '083872721222'),
('VDR06', 'Dream Gold, PT', 'Perdagangan Emas', '20.32472.0718.232912', 'Jl. Rawajali no. 2, Jakarta Selatan', 'sales@dg.com', '021-9229288', '021-9229287', 'Mahmud C.A', 'mahmudca@gmail.com', '088821229422'),
('VDR07', 'Candy Furniture, PT', 'Perdagangan Furniture', '84.32912.0161.632952', 'Jl. Sadar no. 99, Jakarta Pusat', 'sales@candy.com', '021-92299', '021-92298', 'Risma', 'risma@gmail.com', '0829828182745'),
('VDR08', 'Karsa Jaya, PT', 'Perdagangan Umum', '26.92742.1721.232591', 'Jl. Prakasara no. 22, Jakarta Pusat', 'info@karja.com', '021-928832', '021-928833', 'Ramli', 'ramli@gmail.com', '082283225769'),
('VDR09', 'Mandiri Sejati, PT', 'Perdagangan ATK', '20.82462.7121.232022', 'Jl. Dasawarsa no. 99, Jakarta Pusat', 'sales@mandirisejati.com', '021-912837', '021-912838', 'Salsabila', 'salsabila@gmail.com', '08727266122'),
('VDR10', 'Neo Abadi, PT', 'Perdagangan ATK', '29.82492.0441.018237', 'Jl. Kemaggisan no. 22, Jakarta Timur', 'sales@neoabadi.com', '021-82837722', '021-82837723', 'Opik', 'opik@gmail.com', '082777216222');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_permintaan`
--
ALTER TABLE `barang_permintaan`
  ADD PRIMARY KEY (`kd_brg_permintaan`),
  ADD KEY `id_permintaan` (`no_permintaan`);

--
-- Indeks untuk tabel `barang_pesan`
--
ALTER TABLE `barang_pesan`
  ADD PRIMARY KEY (`kd_brg_pesan`),
  ADD KEY `id_permintaan` (`no_pesan`),
  ADD KEY `no_penawaran_vendor` (`kd_brg_penawaran`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_bayar`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pesan`);

--
-- Indeks untuk tabel `penawaran_vendor`
--
ALTER TABLE `penawaran_vendor`
  ADD PRIMARY KEY (`kd_brg_penawaran`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indeks untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`no_permintaan`);

--
-- Indeks untuk tabel `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`kd_brg_stok`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang_permintaan`
--
ALTER TABLE `barang_permintaan`
  ADD CONSTRAINT `barang_permintaan_ibfk_1` FOREIGN KEY (`no_permintaan`) REFERENCES `permintaan` (`no_permintaan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
