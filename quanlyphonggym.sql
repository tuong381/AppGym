-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2022 lúc 07:05 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyphonggym`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_AD` int(10) UNSIGNED NOT NULL,
  `HoTenAD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDT` int(11) NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_AD`, `HoTenAD`, `MatKhau`, `Email`, `SoDT`, `DiaChi`, `created_at`, `updated_at`) VALUES
(1, 'tuongQTV1', '202cb962ac59075b964b07152d234b70', 'tuong@123.com', 349246232, 'Trà Vinh', NULL, NULL),
(2, 'tuong1', '202cb962ac59075b964b07152d234b70', 'tuongb1809317@student.ctu.edu.vn', 2147483647, 'Cần thơ', NULL, NULL),
(3, 'vd', '202cb962ac59075b964b07152d234b70', 'tuongb1809317@student.ctu.edu.vn', 349246232, 'qdwf', NULL, NULL),
(4, 'Admin', '202cb962ac59075b964b07152d234b70', 'admin123@gmail.com', 349246232, 'Trà Vinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id_BaiViet` int(11) UNSIGNED NOT NULL,
  `id_DanhMuc` int(11) UNSIGNED NOT NULL,
  `TenBaiViet` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `NoiDungBaiViet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id_BaiViet`, `id_DanhMuc`, `TenBaiViet`, `HinhAnh`, `NoiDungBaiViet`) VALUES
(1, 1, 'Tư thế bay ngực', 'tu-the-bay-nguc.jpg', '<p>Tương tự như tư thế đẩy ngực, bắt đầu bằng c&aacute;ch nằm ngửa tr&ecirc;n s&agrave;n, hai gối cong, Hai tay duỗi ra hai b&ecirc;n, vu&ocirc;ng g&oacute;c với th&acirc;n người. Cong nhẹ hai c&ugrave;i chỏ, n&acirc;ng hai tạ tay l&ecirc;n v&ograve;ng qua ngực, &eacute;p chặt hai tạ giữa ngực. Nhẹ nh&agrave;ng hạ hai tạ xuống tư thế ban đầu</p>'),
(2, 1, 'Tư thế hít đất', 'chong-day-tang-chieu-cao.jpg', '<p>Đ&acirc;y l&agrave; tư thế cơ bản nhưng cực kỳ hiệu quả. Bắt đầu bằng hai tay dưới hai vai v&agrave; hai mũi ch&acirc;n chống đất, hai ch&acirc;n rộng bằng h&ocirc;ng. Nhẹ nh&agrave;ng hạ th&acirc;n người xuống cho tới khi n&agrave;o bạn chỉ c&aacute;ch s&agrave;n v&agrave;i centiment, sau đ&oacute; đẩy ngược th&acirc;n người l&ecirc;n. Nếu bạn gặp vấn đề, di chuyển hai gối. Giữ xương cột sống thẳng khi thực hiện động t&aacute;c n&agrave;y.</p>'),
(3, 1, 'Tư thế duỗi ngược', 'tu-the-duoi-nguc.jpg', '<p>Một tư thế đơn giản, bạn chỉ cần nắm chặt 2 tay ra sau lưng, nhớ tay duỗi thẳng, đẩy ra c&agrave;ng xa c&agrave;ng tốt miễn sao bạn vẫn thấy thoải m&aacute;i. Đầu n&acirc;ng cao v&agrave; giữ thẳng, giữ in tư thế trong 30 gi&acirc;y.</p>'),
(4, 1, 'Tư thế bay ngược', 'tu-the-bay-nguoc.jpg', '<p>Ngồi hoặc đứng, nghi&ecirc;ng th&acirc;n người tr&ecirc;n về ph&iacute;a trước v&agrave; hai tay nắm hai tạ tay giơ l&ecirc;n ph&iacute;a trước người. Hai tay hơi cong, nhẹ nh&agrave;ng n&acirc;ng hai tạ tay cho tới khi n&agrave;o c&ugrave;i chỏ ngang vai, sau đ&oacute; hạ thấp hai tay xuống lại vị tr&iacute; ban đầu. Đ&acirc;y l&agrave;</p>'),
(5, 1, 'Tư thế ngực bướm ép hai vai', 'tu-the-nguc-buom-ep-vai.jpg', '<p>Đứng hai ch&ocirc;ng rộng bằng h&ocirc;ng, cong hai tay tạo 1 g&oacute;c độ, c&ugrave;i chỏ ngang vai, l&ograve;ng b&agrave;n tay hướng v&agrave;o nhau. Mở hai c&ugrave;i chỏ ra hai b&ecirc;n sao cho hai l&ograve;ng b&agrave;n tay hướng về ph&iacute;a trước, vẫn giữ 1 g&oacute;c 90 độ. Đẩy hai tạ l&ecirc;n cho tới khi n&agrave;o hai tay duỗi thẳng. Nhẹ nh&agrave;ng hạ xuống v&agrave; quay trở lại vị tr&iacute; ban đầu.</p>'),
(6, 1, 'Tư thế chèo thuyền ngược', 'tu-the-cheo-thuyen-nguoc.jpg', '<p>Bắt đầu bằng tư thế Plank (tư thế h&iacute;t đất) với mỗi cặp tạ tay ở mỗi tay. N&acirc;ng 1 tay giữ ta l&ecirc;n c&agrave;ng cao c&agrave;ng tốt, căng cơ bụng v&agrave; xương bả vai căng lại. Giữ trong 1 gi&acirc;y, sau đ&oacute; đưa tạ xuống mặt đất v&agrave; lặp lại cho b&ecirc;n c&ograve;n lại.</p>'),
(7, 1, 'Tư thế rung kim tự tháp', 'tu-the-rung-kim-tu-thap.jpg', '<p>Bạn c&oacute; thể thực hiện tư thế n&agrave;y khi ngồi tr&ecirc;n s&agrave;n, đứng, hoặc ngồi tr&ecirc;n b&oacute;ng Swiss để tăng th&ecirc;m thử th&aacute;ch căng cơ bụng. &Eacute;p một b&oacute;ng mềm giữa hai c&ugrave;i chỏ, hai b&agrave;n tay m&oacute;c lại c&aacute;ch tr&aacute;n khoảng 15cm. Sau đ&oacute;, nhịp hai tay l&ecirc;n xuống, kh&ocirc;ng để c&ugrave;i chỏ xuống thấp dưới g&oacute;c 90 độ.</p>'),
(8, 1, 'Tư thế Plank nhún vai', 'tu-the-plank-nhun-vai.jpg', '<p>Bắt đầu với tư thế Plank, h&iacute;t đất. Thay v&igrave; cong hai tay, giữ thẳng v&agrave; căng c&aacute;c xương bả vai lại. Bạn sẽ cảm thấy ngực hạ thấp 1 t&iacute;. Giữ tư thế n&agrave;y trong 3 gi&acirc;y trước khi đẩy ngược l&ecirc;n lại.</p>'),
(9, 1, 'Tư thế đẩy ngực', 'tu-the-day-nguc.jpg', '<p>Nằm ngửa, hai gối cong, hai tay giữ 1 cặp tạ tay tạo 1 g&oacute;c 90 độ hai b&ecirc;n ngực. Đẩy hai tay thẳng l&ecirc;n cho tới khi n&agrave;o ho&agrave;n to&agrave;n duỗi thẳng, đảm bảo căng cơ ngực. Sau đ&oacute; nhẹ nh&agrave;ng hạ thấp xuống tư thế ban đầu.</p>'),
(10, 1, 'Tư thế nhúng cơ tam đầu', 'tu-the-nhun-co-tam-dau.jpg', '<p>D&ugrave;ng 1 ghế tập; tựa th&acirc;n người bằng c&aacute;ch giữ 1 cạnh, hai tay thẳng v&agrave; hai ch&acirc;n cong 1 g&oacute;c 90 độ. Từ từ hạ thấp người xuống, giữ c&ugrave;i chỏ hai b&ecirc;n người cho tới khi n&agrave;o hai tay cong 1 g&oacute;c 90 độ, sau đ&oacute; đẩy ngược lại vị tr&iacute; ban đầu. Bạn c&oacute; thể c&oacute; thể thực hiện tư thế n&agrave;y với ch&acirc;n thẳng.</p>'),
(11, 2, 'Chống đẩy tập lưng', 'chong-day-tap-lung-cho-nu.jpg', '<p>Bước 1: Đặt 2 tay với khoảng c&aacute;ch rộng gấp 1.5 lần vai v&agrave; chống l&ecirc;n s&agrave;n nh&agrave;. Giữ th&acirc;n người v&agrave; h&ocirc;ng th&agrave;nh một mặt phẳng. 2 mũi ch&acirc;n s&aacute;t v&agrave;o nhau, 2 ch&acirc;n dang rộng bằng h&ocirc;ng v&agrave; ngang bằng nhau. Bước 2: Từ vị tr&iacute; chuẩn bị tr&ecirc;n, bạn h&iacute;t v&agrave;o v&agrave; tập trung sức v&agrave;o cơ ngực, hạ người dần dần thấp xuống. Vẫn giữ thẳng lưng v&agrave; hạ thấp người khi bạn cảm thấy cơ ngực căng ra th&igrave; dừng lại một nhịp. Bước 3: Gồng cơ ngực v&agrave; lưng &eacute;p thật mạnh rồi n&acirc;ng người l&ecirc;n trở về vị tr&iacute; ban đầu trong khi thở ra.</p>'),
(12, 4, 'Gập Bụng', 'top-9-bai-tap-giam-mo-bung-nhanh-chong-hieu-qua-4.jpg', '<p>Bước 1: Tay đặt ở ph&iacute;a sau đầu hoặc bắt ch&eacute;o trước ngực. Bước 2: Tiến h&agrave;nh gập người đồng thời h&iacute;t s&acirc;u. Khi nhấc người l&ecirc;n th&igrave; thở ra. Lặp lại động t&aacute;c. Bước 3: Khi mới bắt đầu bạn c&oacute; thể l&agrave;m 1 hiệp, khoảng 8 - 10 lần. Sau n&agrave;y quen c&oacute; thể tăng l&ecirc;n 2 &ndash; 3 hiệp, v&agrave; 10 &ndash; 12 lần/hiệp.</p>'),
(13, 4, 'Gập bụng chéo', 'top-9-bai-tap-giam-mo-bung-nhanh-chong-hieu-qua-5.jpg', '<p>- Đ&acirc;y l&agrave; một biến thể của b&agrave;i tập gập bụng, kh&oacute; thực hiện hơn một ch&uacute;t nhưng hiệu quả cũng cao hơn. - Nằm xuống s&agrave;n, hai tay để sau đầu. - Tư thế của ch&acirc;n v&agrave; đầu gối tương tự như ở b&agrave;i tập gập bụng. - Kh&aacute;c với Gập bụng, khi bạn nhấc th&acirc;n l&ecirc;n th&igrave; thực hiện động t&aacute;c gập bụng ch&eacute;o: Đưa vai sang tr&aacute;i, giữ phần tr&aacute;i cơ thể &aacute;p s&aacute;t với mặt s&agrave;n. Sau đ&oacute; đổi lại, nhấc vai tr&aacute;i l&ecirc;n đưa về ph&iacute;a phải, giữ b&ecirc;n phải của th&acirc;n s&aacute;t với s&agrave;n.&nbsp;</p>'),
(14, 6, 'Squat', 'squat-la-gi-7-bai-tap-squat-va-huong-dan-cu-the-dung-cach-nhat-8-min.jpg', '<p>Bước 1: Đứng thẳng lưng, 2 ch&acirc;n để rộng bằng vai. Ch&uacute; &yacute; đầu gối v&agrave; mũi ch&acirc;n hướng c&ugrave;ng về một ph&iacute;a. Bước 2: Ngực bằng vai, c&ograve;n 2 tay đan ch&eacute;o hoặc nắm hờ trước ngực. Bước 3: Giữ thẳng lưng rồi từ từ khuỵu đầu gối xuống v&agrave; đẩy h&ocirc;ng ra sau để hạ người xuống. Ch&uacute; &yacute;: Hạ người xuống s&acirc;u nhất c&oacute; thể nhưng kh&ocirc;ng để đầu gối bị qu&aacute; mũi ch&acirc;n. Bước 4: Dừng ở tư thế n&agrave;y 1 - 2 gi&acirc;y rồi đẩy người trở về vị tr&iacute; ban đầu</p>'),
(15, 6, 'Squat Jump', 'Jump-Squat.jpg', '<p>Bước 1: Đứng thẳng lưng, 2 ch&acirc;n rộng bằng vai v&agrave; mũi ch&acirc;n hướng ra ngo&agrave;i 1 g&oacute;c 30 độ. Bước 2: Thở ra rồi hạ h&ocirc;ng xuống tương tự như động t&aacute;c squat truyền thống sao cho đ&ugrave;i song song với mặt s&agrave;n. Bước 3: Đẩy ch&acirc;n để bật nhảy l&ecirc;n rồi hạ người xuống về tư thế squat truyền th&ocirc;ng. Bước 4: Lặp lại c&aacute;c động t&aacute;c trong 10 - 15 lần nữa.</p>'),
(16, 4, 'Nâng chân với ghế', 'top-9-bai-tap-giam-mo-bung-nhanh-chong-hieu-qua-15.jpg', '<p>Để thực hiện b&agrave;i tập n&agrave;y bạn cần chuẩn bị một chiếc ghế. - Ở tư thế ngồi thẳng lưng tr&ecirc;n ghế, để vai thư gi&atilde;n. - Hai tay chống h&ocirc;ng hoặc b&aacute;m v&agrave;o lưng ghế để lấy điểm tựa, mắt nh&igrave;n xuống. - H&iacute;t s&acirc;u, khi thở ra th&igrave; từ từ đưa hai ch&acirc;n l&ecirc;n cao sao cho đầu gối chạm với gần ngực, giữ nguy&ecirc;n tư thế trong 5 gi&acirc;y rồi từ từ hạ ch&acirc;n xuống. - Lặp lại động t&aacute;c trong 15 &ndash; 20 lần/set, 2 &ndash; 3 set. Trong qu&aacute; tr&igrave;nh thực hiện động t&aacute;c cần ch&uacute; &yacute; giữ thẳng lưng.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `id_CaLV` int(11) NOT NULL,
  `id_NhanVien` int(11) NOT NULL,
  `Ngay` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id_Chat` int(10) UNSIGNED NOT NULL,
  `id_NhanVien` int(11) UNSIGNED DEFAULT NULL,
  `id_KhachHang` int(11) UNSIGNED DEFAULT NULL,
  `TinNhan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` int(11) NOT NULL COMMENT '-1: nhan vien gui\r\n1:khach hang gui',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chat`
--

INSERT INTO `chat` (`id_Chat`, `id_NhanVien`, `id_KhachHang`, `TinNhan`, `TrangThai`, `created_at`, `updated_at`) VALUES
(521, 2, 12, 'Xin chào', -1, '2022-05-21 13:48:37', NULL),
(522, 2, 12, 'ban khoe k', -1, '2022-05-21 13:49:05', NULL),
(534, 1, 12, 'Xin chào', -1, '2022-05-21 13:59:00', NULL),
(535, 1, 12, 'hi', 1, '2022-05-21 13:59:11', NULL),
(536, 1, 12, 'hello', 1, '2022-05-21 14:00:27', NULL),
(537, 1, 16, 'Xin chào', -1, '2022-05-23 04:39:32', NULL),
(538, 1, 16, 'hello', 1, '2022-05-23 04:39:44', NULL),
(539, 2, 16, 'Xin chào', -1, '2022-05-23 06:14:32', NULL),
(540, 2, 16, 'hello', 1, '2022-05-23 06:14:45', NULL),
(541, 0, 0, 'Xin chào', -1, '2022-05-23 12:57:51', NULL),
(542, 11, 16, 'Xin chào', -1, '2022-05-23 13:06:48', NULL),
(543, 11, 16, 'hi', 1, '2022-05-23 13:07:20', NULL),
(544, 11, 16, 'tu van giup toi duoc k', 1, '2022-05-23 13:08:21', NULL),
(545, 2, 16, 'hi', -1, '2022-05-24 13:35:09', NULL),
(546, 1, 16, 'hi', 1, '2022-05-24 13:39:22', NULL),
(547, 1, 16, 'banj giup tui nhe', 1, '2022-05-24 14:03:35', NULL),
(548, 1, 16, 'hi', -1, '2022-05-24 14:07:31', NULL),
(549, 1, 16, 'giup toi tu van nhe', 1, '2022-05-25 00:07:43', NULL),
(550, 2, 12, 'hi', -1, '2022-05-25 00:23:35', NULL),
(551, 1, 23, 'Xin chào', -1, '2022-05-25 02:17:12', NULL),
(552, 1, 23, 'hi ban tu van duoc k', 1, '2022-05-25 02:17:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `id_ChucVu` int(10) UNSIGNED NOT NULL,
  `TenChucVu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`id_ChucVu`, `TenChucVu`, `created_at`, `updated_at`) VALUES
(1, 'PT Yoga', NULL, NULL),
(2, 'PT Gym', NULL, NULL),
(3, 'PT Group X', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucbaiviet`
--

CREATE TABLE `danhmucbaiviet` (
  `id_DanhMuc` int(11) UNSIGNED NOT NULL,
  `TenDanhMuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmucbaiviet`
--

INSERT INTO `danhmucbaiviet` (`id_DanhMuc`, `TenDanhMuc`) VALUES
(1, 'Ngực'),
(2, 'Lưng'),
(3, 'Vai'),
(4, 'Bụng'),
(5, 'Chân '),
(6, 'Mông'),
(7, 'Cơ tay trước'),
(8, 'Cơ tay sau'),
(9, 'Toàn thân');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id_DanhMuc` int(10) UNSIGNED NOT NULL,
  `TenDanhMuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id_DanhMuc`, `TenDanhMuc`, `HinhAnh`, `created_at`, `updated_at`) VALUES
(21, 'Thực phẩm chức năng', 'thuc_pham_chuc_nang.jpg', NULL, NULL),
(22, 'Phụ kiện gym', 'phu_kien_gym.jpg', NULL, NULL),
(23, 'Thời trang phòng gym', 'thoi_trang_gym.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id_DichVu` int(10) UNSIGNED NOT NULL,
  `TenDichVu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh_DV` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id_DichVu`, `TenDichVu`, `HinhAnh_DV`, `Gia`, `created_at`, `updated_at`) VALUES
(1, 'Vé ngày', 'https://citigym.com.vn/storage/uploads/untitled-8-3.jpg', 30000, NULL, NULL),
(2, 'Vé tuần', 'https://citigym.com.vn/storage/uploads/thumbnail-3-2.jpg', 180000, NULL, NULL),
(3, 'Vé tháng', 'https://citigym.com.vn/storage/uploads/thumbnail-3-2.jpg', 780000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doituong`
--

CREATE TABLE `doituong` (
  `MaDoiTuong` int(11) NOT NULL,
  `TenDoiTuong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_HD` int(10) UNSIGNED NOT NULL,
  `id_KhachHang` int(11) UNSIGNED NOT NULL,
  `id_SanPham` int(11) UNSIGNED DEFAULT NULL,
  `id_LichHen` int(11) UNSIGNED DEFAULT NULL,
  `TenSanPham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TenVe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoLuongMua` int(11) DEFAULT NULL,
  `TongHoaDon` double NOT NULL,
  `Ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TrangThaiHoaDon` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_HD`, `id_KhachHang`, `id_SanPham`, `id_LichHen`, `TenSanPham`, `TenVe`, `SoLuongMua`, `TongHoaDon`, `Ngay`, `TrangThaiHoaDon`, `created_at`, `updated_at`) VALUES
(20, 12, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 2, 198000, '2022-05-15 16:02:07', 2, '2022-05-15 16:02:07', NULL),
(21, 12, 14, NULL, 'PVL PLANT PRO 100% ORGANIC (840G)', NULL, 3, 2850000, '2022-05-15 15:11:35', 1, '2022-05-15 15:11:35', NULL),
(39, 12, NULL, 72, NULL, 'Vé tuần', NULL, 180000, '2022-05-24 08:33:00', 1, '2022-05-24 08:33:00', NULL),
(40, 12, NULL, 73, NULL, 'Vé tháng', NULL, 780000, '2022-05-18 09:31:31', 1, '2022-05-18 09:31:31', NULL),
(43, 12, NULL, 75, NULL, 'Vé ngày', NULL, 30000, '2022-05-24 08:33:19', 1, '2022-05-24 08:33:19', NULL),
(44, 15, NULL, 76, NULL, 'Vé ngày', NULL, 30000, '2022-05-24 08:33:34', 1, '2022-05-24 08:33:34', NULL),
(45, 15, NULL, 77, NULL, 'Vé ngày', NULL, 30000, '2022-05-23 05:04:04', 1, '2022-05-23 05:04:04', NULL),
(47, 13, 0, 78, 'NULL', 'Vé tuần', NULL, 180000, '2022-05-20 06:45:48', 0, '2022-05-20 06:45:48', NULL),
(48, 13, 0, 79, 'NULL', 'Vé tuần', NULL, 180000, '2022-05-20 06:52:38', 0, '2022-05-20 06:52:38', NULL),
(51, 13, NULL, 82, NULL, 'Vé tuần', NULL, 180000, '2022-05-21 14:07:21', 1, '2022-05-21 14:07:21', NULL),
(52, 12, 0, 83, 'NULL', 'Vé ngày', NULL, 30000, '2022-05-24 08:47:35', 1, '2022-05-24 08:47:35', NULL),
(53, 16, NULL, 84, NULL, 'Vé ngày', NULL, 30000, '2022-05-23 04:38:03', 0, '2022-05-23 04:38:03', NULL),
(54, 16, NULL, 85, NULL, 'Vé ngày', NULL, 30000, '2022-05-23 05:01:15', 1, '2022-05-23 05:01:15', NULL),
(55, 16, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 2, 198000, '2022-05-23 05:00:40', 1, '2022-05-23 05:00:40', NULL),
(57, 12, NULL, 87, NULL, 'Vé tuần', NULL, 180000, '2022-05-23 05:03:29', 1, '2022-05-23 05:03:29', NULL),
(58, 16, NULL, 88, NULL, 'Vé ngày', NULL, 30000, '2022-05-24 12:53:39', 1, '2022-05-24 12:53:39', NULL),
(59, 16, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 1, 99000, '2022-05-23 06:20:37', 1, '2022-05-23 06:20:37', NULL),
(60, 17, 0, 89, 'NULL', 'Vé tháng', NULL, 780000, '2022-05-22 22:21:33', 0, '2022-05-22 22:21:33', NULL),
(61, 16, NULL, 90, NULL, 'Vé ngày', NULL, 30000, '2022-05-25 00:08:39', -1, '2022-05-25 00:08:39', NULL),
(62, 16, 6, NULL, 'PVL - ISO GOLD 5 LBS ( 2.27KG )', NULL, 2, 3900000, '2022-05-23 13:11:01', 2, '2022-05-23 13:11:01', NULL),
(84, 16, NULL, 111, NULL, 'Vé ngày', NULL, 30000, '2022-05-24 14:07:05', -1, '2022-05-24 14:07:05', NULL),
(85, 16, NULL, 112, NULL, 'Vé ngày', NULL, 30000, '2022-05-25 00:10:10', 1, '2022-05-25 00:10:10', NULL),
(86, 16, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 2, 198000, '2022-05-25 01:26:55', 2, '2022-05-25 01:26:55', NULL),
(87, 17, 0, 113, 'NULL', 'Vé tuần', NULL, 180000, '2022-05-25 00:09:52', 1, '2022-05-25 00:09:52', NULL),
(90, 12, NULL, 116, NULL, 'Vé ngày', NULL, 30000, '2022-05-25 00:14:17', 0, '2022-05-25 00:14:17', NULL),
(92, 21, 0, 118, 'NULL', 'Vé ngày', NULL, 30000, '2022-05-24 16:27:02', 0, '2022-05-24 16:27:02', NULL),
(94, 12, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 2, 198000, '2022-05-25 01:25:33', 1, '2022-05-25 01:25:33', NULL),
(96, 23, NULL, 119, NULL, 'Vé ngày', NULL, 30000, '2022-05-25 02:12:49', 0, '2022-05-25 02:12:49', NULL),
(97, 23, NULL, 120, NULL, 'Vé ngày', NULL, 30000, '2022-05-25 02:30:38', 1, '2022-05-25 02:30:38', NULL),
(98, 23, 15, NULL, 'BÁNH GẠO LỨT KEYGYM 500G', NULL, 2, 198000, '2022-05-25 02:20:41', 0, '2022-05-25 02:20:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_KhachHang` int(10) UNSIGNED NOT NULL,
  `TenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GioiTinh` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SoDienThoai` int(11) DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `ChieuCao` float DEFAULT NULL,
  `CanNang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_KhachHang`, `TenKH`, `Email`, `DiaChi`, `GioiTinh`, `SoDienThoai`, `HinhAnh`, `MatKhau`, `NgaySinh`, `ChieuCao`, `CanNang`, `created_at`, `updated_at`) VALUES
(12, 'Lan Nguyên', 'lannguyen12@gmail.com', 'Trà Vinh', 'Nu', 345923844, 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/8870eddc-7d75-44fb-a4f6-4a837cf58e02.jpg', '123', '2022-01-02', 1.58, 48, NULL, NULL),
(15, 'customer1', 'lamtuongnguyen76@gmail.com', 'Tra Vinh', '', 339158198, 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/5f962d69-136e-4fff-8599-98fbe81ccc38.jpg', '123', '2022-05-02', 0, 0, NULL, NULL),
(16, 'Tường', 'tuongb1809317@student.ctu.edu.vn', 'Tra Vinh', '', 339153198, 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/15fcc95a-c635-4fc7-9848-1f6cbd05c360.jpg', '123', '2021-07-04', 1.5, 48, NULL, NULL),
(17, 'Nguyễn Thị The', 'thenguyen99@gmail.com', 'An Giang', 'Nữ', 947563243, NULL, '123', '1999-05-02', NULL, NULL, NULL, NULL),
(18, 'Nguyễn Thị Ngọc Cầm', 'ngoccam2000@gmail.com', 'Kiên Giang', 'Nữ', 397264726, NULL, '1234', '2000-08-09', NULL, NULL, NULL, NULL),
(19, 'Lâm Tuấn Anh', 'tuananh98@gmail.com', 'Cần Thơ', 'Nam', 632526799, NULL, '456', '1998-05-23', NULL, NULL, NULL, NULL),
(20, 'Tô Thanh Hùng', 'hungto90@gmail.com', 'Trà Vinh', 'Nam', 82345899, NULL, '789', '2001-07-03', NULL, NULL, NULL, NULL),
(21, 'Lê thị Mỹ Như', 'nhu2000@gmail.com', 'Cần Thơ', 'Nữ', 632526790, NULL, '345', '2000-05-25', NULL, NULL, NULL, NULL),
(22, 'Lan Vy', 'vy99@gmail.com', '', 'Nu', 85485932, 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/bcf34f60-145b-41a7-8d2e-499380813b56.jpg', '123', '2021-06-06', 0, 0, NULL, NULL),
(23, 'Lam Tuong', 'tuongb1809317@student.ctu.edu.vn', 'Tra Vinh', '', 974375833, 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/9fc7db22-71ce-411e-8244-f2b413115723.jpg', '12345', '2021-09-05', 1.5, 48, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhen`
--

CREATE TABLE `lichhen` (
  `id_LichHen` int(10) UNSIGNED NOT NULL,
  `id_DichVu` int(11) UNSIGNED NOT NULL,
  `id_NhanVien` int(11) UNSIGNED NOT NULL,
  `id_KhachHang` int(11) UNSIGNED NOT NULL,
  `NgayDK` date NOT NULL,
  `GioDK` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TongTien` double NOT NULL,
  `TrangThaiLichHen` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichhen`
--

INSERT INTO `lichhen` (`id_LichHen`, `id_DichVu`, `id_NhanVien`, `id_KhachHang`, `NgayDK`, `GioDK`, `TongTien`, `TrangThaiLichHen`, `created_at`, `updated_at`) VALUES
(72, 2, 2, 12, '2022-05-20', '9:00 - 10:30', 180000, -1, NULL, NULL),
(73, 3, 1, 12, '2022-05-18', '6:00 - 7:30', 780000, 0, NULL, NULL),
(74, 2, 1, 12, '2022-05-19', '6:00 - 7:30', 180000, -1, NULL, NULL),
(75, 1, 1, 12, '2022-05-19', '9:00 - 10:30', 30000, 1, NULL, NULL),
(76, 1, 1, 15, '2022-05-20', '9:00 - 10:30', 30000, 1, NULL, NULL),
(77, 1, 1, 15, '2022-05-20', '6:00 - 7:30', 30000, 1, NULL, NULL),
(79, 2, 1, 13, '2022-05-26', '6:00 - 7:30', 180000, 1, NULL, NULL),
(81, 1, 2, 12, '2022-05-21', '6:00 - 7:30', 30000, -1, NULL, NULL),
(82, 2, 2, 13, '2022-05-27', '9:00 - 10:30', 180000, 1, NULL, NULL),
(83, 1, 1, 12, '2022-05-21', '9:00 - 10:30', 30000, 1, NULL, NULL),
(84, 1, 2, 16, '2022-05-23', '6:00 - 7:30', 30000, 1, NULL, NULL),
(85, 1, 2, 16, '2022-05-23', '16:00 - 17:30', 30000, -1, NULL, NULL),
(87, 2, 3, 12, '2022-05-25', '18:00 -19:30', 180000, 1, NULL, NULL),
(88, 1, 2, 16, '2022-05-24', '9:00 - 10:30', 30000, 1, NULL, NULL),
(89, 3, 1, 17, '2022-05-23', '9:00 - 10:30', 780000, 1, NULL, NULL),
(90, 1, 1, 16, '2022-05-23', '18:00 -19:30', 30000, -1, NULL, NULL),
(111, 1, 1, 16, '2022-05-24', '6:00 - 7:30', 30000, -1, NULL, NULL),
(112, 1, 1, 16, '2022-05-24', '6:00 - 7:30', 30000, 1, NULL, NULL),
(113, 2, 4, 17, '2022-05-31', '9:00 - 10:30', 180000, 1, NULL, NULL),
(116, 1, 2, 12, '2022-05-31', '6:00 - 7:30', 30000, 1, NULL, NULL),
(118, 1, 12, 21, '2022-05-31', '6:00 - 7:30', 30000, 1, NULL, NULL),
(119, 1, 1, 23, '2022-05-25', '6:00 - 7:30', 30000, 0, NULL, NULL),
(120, 1, 1, 23, '2022-05-25', '18:00 -19:30', 30000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_19_064952_create_thietbi_table', 1),
(6, '2022_01_19_070351_create_loaithietbi_table', 2),
(7, '2022_02_11_053951_create_danhmucthietbi', 3),
(8, '2022_02_11_064623_create_danhmucsanpham', 4),
(9, '2022_02_11_065253_create_sanpham', 5),
(10, '2022_02_12_063822_create_sanpham', 6),
(11, '2022_03_06_083012_create_admin_table', 7),
(12, '2022_03_06_083140_create_roles_table', 7),
(13, '2022_03_06_083235_create_admin_roles_table', 7),
(14, '2022_03_06_094311_create_nhanvien_table', 8),
(15, '2022_03_11_093138_create_chucvu_table', 9),
(16, '2022_03_11_101452_create_dichvu_table', 10),
(17, '2022_04_06_085007_create_khachhang_table', 11),
(18, '2022_04_21_153355_create_nhanvien_table', 12),
(19, '2022_04_23_061757_create_lichhen_table', 13),
(20, '2022_04_29_104443_create_chat_table', 14),
(21, '2022_05_02_054856_create_thongbao_table', 15),
(22, '2022_05_12_043450_create_lichhen_table', 16),
(23, '2022_05_12_071131_create_hoadon_table', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_NhanVien` int(10) UNSIGNED NOT NULL,
  `TenNV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDienThoai` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AnhDaiDien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KinhNghiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_NhanVien`, `TenNV`, `Email`, `SoDienThoai`, `DiaChi`, `MatKhau`, `AnhDaiDien`, `KinhNghiem`, `NgaySinh`, `GioiTinh`, `created_at`, `updated_at`) VALUES
(1, 'Lê Thị Hoa', 'hoa123@gmail.com', '0349241257', 'Cần Thơ', '123', 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/dcbcb0b2-627b-46a9-b168-52700d99aae7.jpg', '4', '2022-05-19', 'Nữ', NULL, NULL),
(2, 'Lam Tường', 'tuong123@gmail.com', '0349246232', 'Trà Vinh', '123', 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/96227e25-3153-42fd-b1b3-c2c8d4ea2efa.jpg', '2', '2022-05-26', 'Nữ', NULL, NULL),
(3, 'Nguyễn Văn Tấn', 'tannguyen123@gmail.com', '0947563243', 'Hồ Chí Minh', '456', 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/6ada5d19-8df4-4e83-9ab0-4676cf50885a.jpg', '5', '2022-05-06', 'Nam', NULL, NULL),
(4, 'Trần Văn Hùng', 'hung1289@gmail.com', '0632526790', 'Cần Thơ', '1237', 'file:///storage/emulated/0/Android/data/com.appgym/files/Pictures/02872162-4597-4704-b808-dd16527ed524.jpg', '3', '2022-05-06', 'Nam', NULL, NULL),
(10, 'Trần Thị Ngọc trân', 'trantran90@gmail.com', '0632526790', 'Sóc Trăng', '678', NULL, '1', '2000-04-04', 'Nữ', NULL, NULL),
(11, 'Nguyễn Minh', 'minhnguyen98@gmail.com', '0947563243', 'Cần Thơ', '145', NULL, '5', '1993-09-19', 'Nam', NULL, NULL),
(12, 'Dương Thị Cẩm Tú', 'camtu123@gmail.com', '0349246232', 'Hồ Chí Minh', '097', NULL, '2', '2000-01-20', 'Nữ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_SanPham` int(10) UNSIGNED NOT NULL,
  `id_DanhMuc` int(11) UNSIGNED NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaSanPham` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gia` double NOT NULL,
  `SoLuong_SP` int(11) NOT NULL,
  `SoLuong_SPDaBan` int(11) NOT NULL,
  `HinhAnh_SP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_SanPham`, `id_DanhMuc`, `TenSanPham`, `MoTaSanPham`, `Gia`, `SoLuong_SP`, `SoLuong_SPDaBan`, `HinhAnh_SP`, `created_at`, `updated_at`) VALUES
(6, 21, 'PVL - ISO GOLD 5 LBS ( 2.27KG )', 'PVL - PURE VITA LABS tự hào mang đến cho bạn TIÊU CHUẨN VÀNG MỚI trong Whey Protein chất lượng cao trên thị trường đó chính là ISO GOLD. Sản phẩm của hãng chứa mọi thứ bạn mong chờ ở một sản phẩm Whey Protein chất lượng cao', 1950000, 50, 0, 'iso-gold-444.png', NULL, NULL),
(8, 22, 'BAO TAY CÓ CỔ GEAR', '25 loại Vitamins và những khoáng chất cần thiết Hương vị cực kì hấp dẫn Cấu tạo bột dễ hòa tan thuận tiện sử dụng mọi lúc mọi nơi (post-workout và giữa bữa ăn) Là một vũ khí lên cân vượt trội – đặc biệt khi được kết hợp với chế độ tập luyện phù hợp giúp cơ thể nhanh chóng lớn mạnh', 120000, 100, 0, 'bao_tay.jpg', NULL, NULL),
(9, 23, 'Bra 360s Lux màu xanh lá', 'Áo Bras 360s Lux màu xanh lá kiểu dáng thể thao, với thiết kế nâng đỡ ngực khi tập luyện – vận động thể thao, giúp bảo vệ vùng ngực khỏi xung lực có hại đến ngực. Chất liệu co giản 4 chiều của Spandex giúp bạn thoải mái vận động, di chuyển trong từng động tác và phù hợp với mọi bộ môn thể thao.', 150000, 100, 0, 'Bra-lux-xanh-la-30-768x768.jpg', NULL, NULL),
(10, 23, 'Áo thun thể thao Eros xám đậm', 'Áo thun thể thao Eros xám đậm là một trong những mẫu áo thể thao “Thần Thoại Hy Lạp” của 2020 năm nay. Áo được thiết kế với phong cách thời trang, năng động, cùng với chất liệu co giản 4 chiều. Đây sẽ là một trong những mẫu trang phục không thể thiếu khi đồng hành cùng bạn đến phòng tập hay bất cứ môn thể thao nào.  Chất liệu: 87% Polyester – 13% Spandex  Màu sắc: Xám sáng – Xám đậm – Xanh rêu – Xanh dương  Kiểu dáng: Áo thun thể thao nam', 150000, 50, 0, 'Ao-eros-xam-dam-1-768x768.jpg', NULL, NULL),
(12, 21, 'VITA XTRONG ISO PRO 5LBS ( 2.27KG)', 'VitaXtrong cam kết với người dùng là không sử dụng các nguồn nguyên liệu kém chất lượng. Hơn hết, tất cả các thông số được in trên bao bì đều đúng sự thật .​​​ ISO PRO là sản phẩm cao cấp nhất và tinh khiết nhất trong toàn bộ chuỗi sản phẩm mà VitaXtrong làm ra và đem lại cho người dùng- Cung cấp đạm cho cơ thể - Giúp săn chắc và phát triển cơ - Bảo vệ và hồi phục cơ bắp', 1850000, 40, 10, 'iso-pro-1.jpg', NULL, NULL),
(13, 22, 'Thảm 360s Ultra TPE dày 8mm 1 lớp màu hồng', 'Thảm có độ dày 8mm với độ êm ái phù hợp với những người gặp các vấn đề về xương khớp hoặc mua cho người cao tuổi.  Thảm được làm từ chất liệu TPE (cao su non) có khả năng chịu lực tốt, chịu được nhiệt độ cao, độ bám tốt, chống trơn trượt.  Được gia công theo quy trình ép khuôn bằng nhiệt, thân thiện với môi trường, an toàn khi tiếp xúc với da.  Thảm đúc liền 1 lớp với 2 mặt thiết kế khác nhau, không bị bong, tách lớp. Có độ bám sàn và khả năng đàn hồi rất tốt.', 350000, 98, 2, 'tham-360s-ultra-1-lop-6mm-mau-hong-1.jpg', NULL, NULL),
(14, 21, 'PVL PLANT PRO 100% ORGANIC (840G)', 'PLANT PRO là sản phẩm đầu tiên của loại hình này bao gồm Phytase, giúp hỗ trợ các vấn đề tiêu hóa gặp phải với nhiều loại protein thực vật, cho phép bạn tiếp tục hoạt động tốt nhất.', 950000, 100, 9, 'plant-pro-4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thietbi`
--

CREATE TABLE `thietbi` (
  `MaTB` int(10) UNSIGNED NOT NULL,
  `MaLoaiTB` int(11) NOT NULL,
  `TenThietBi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaThietBi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `XuatXu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id_ThongBao` int(10) UNSIGNED NOT NULL,
  `id_NhanVien` int(11) UNSIGNED NOT NULL,
  `id_KhachHang` int(11) UNSIGNED NOT NULL,
  `id_LichHen` int(11) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL COMMENT '2: KH cap nhat lịch hen. 0: KH huy LH\r\n. -1: Nhan vien huy LH.  1:NV cap nhat LH\r\n\r\n',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id_ThongBao`, `id_NhanVien`, `id_KhachHang`, `id_LichHen`, `TieuDe`, `TrangThai`, `created_at`, `updated_at`) VALUES
(135, 1, 16, 90, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-23 12:56:27', NULL),
(136, 1, 16, 90, 'yêu cầu hủy lịch', -4, '2022-05-25 00:08:39', NULL),
(138, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 10:44:32', NULL),
(139, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 10:48:52', NULL),
(140, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 10:53:41', NULL),
(141, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 10:58:05', NULL),
(142, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 11:01:38', NULL),
(143, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 11:04:06', NULL),
(144, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 11:12:03', NULL),
(145, 1, 12, 95, 'yêu cầu hủy lịch', -4, '2022-05-24 11:13:52', NULL),
(147, 1, 12, 108, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-24 12:34:42', NULL),
(148, 1, 12, 108, 'yêu cầu hủy lịch', -4, '2022-05-24 12:38:37', NULL),
(149, 1, 12, 108, 'yêu cầu hủy lịch', -4, '2022-05-24 12:38:02', NULL),
(150, 1, 12, 74, 'yêu cầu hủy lịch', -4, '2022-05-24 12:45:37', NULL),
(151, 2, 12, 109, 'yêu cầu hủy lịch hẹn', -3, '2022-05-24 12:49:14', NULL),
(152, 2, 12, 109, 'yêu cầu hủy lịch', -4, '2022-05-24 12:51:58', NULL),
(153, 2, 12, 110, 'yêu cầu hủy lịch hẹn', -3, '2022-05-24 13:09:35', NULL),
(154, 1, 16, 112, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-24 14:02:35', NULL),
(156, 1, 16, 112, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-25 00:06:18', NULL),
(157, 2, 12, 117, 'yêu cầu hủy lịch hẹn', -3, '2022-05-25 00:17:32', NULL),
(158, 1, 23, 120, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-25 02:14:46', NULL),
(159, 1, 23, 119, 'yêu cầu hủy lịch hẹn', 3, '2022-05-25 02:14:54', NULL),
(160, 1, 23, 120, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-25 02:15:23', NULL),
(161, 1, 23, 120, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-25 02:15:40', NULL),
(162, 1, 23, 120, 'đã cập nhật lịch hẹn. Vui lòng xem lại lịch hẹn', 2, '2022-05-25 02:16:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_KH` int(10) UNSIGNED NOT NULL,
  `HoTenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_AD`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id_BaiViet`),
  ADD KEY `id_DanhMuc` (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`id_CaLV`);

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_Chat`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id_ChucVu`);

--
-- Chỉ mục cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  ADD PRIMARY KEY (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id_DichVu`);

--
-- Chỉ mục cho bảng `doituong`
--
ALTER TABLE `doituong`
  ADD PRIMARY KEY (`MaDoiTuong`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_HD`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_KhachHang`);

--
-- Chỉ mục cho bảng `lichhen`
--
ALTER TABLE `lichhen`
  ADD PRIMARY KEY (`id_LichHen`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_NhanVien`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_SanPham`),
  ADD KEY `id_DanhMuc` (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`MaTB`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id_ThongBao`),
  ADD KEY `id_NhanVien` (`id_NhanVien`,`id_KhachHang`,`id_LichHen`),
  ADD KEY `id_KhachHang` (`id_KhachHang`),
  ADD KEY `id_LichHen` (`id_LichHen`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_KH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_AD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id_BaiViet` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  MODIFY `id_CaLV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id_Chat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id_ChucVu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  MODIFY `id_DanhMuc` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id_DanhMuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id_DichVu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `doituong`
--
ALTER TABLE `doituong`
  MODIFY `MaDoiTuong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_HD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_KhachHang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `lichhen`
--
ALTER TABLE `lichhen`
  MODIFY `id_LichHen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_NhanVien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_SanPham` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `thietbi`
--
ALTER TABLE `thietbi`
  MODIFY `MaTB` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id_ThongBao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
