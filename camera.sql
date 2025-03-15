-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 15, 2025 lúc 12:03 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `camera`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `sanpham` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ghichu` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` double NOT NULL,
  `trangthai` int(11) NOT NULL,
  `diachi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `sanpham`, `username`, `ghichu`, `soluong`, `giaban`, `trangthai`, `diachi`) VALUES
(1, 2, 'tthanh', '', 1, 58000, 1, '??ng nai'),
(2, 1, 'tthanh', '', 1, 320000, 1, '??ng nai'),
(3, 2, 'tthanh', '', 1, 58000, 1, '??ng nai'),
(4, 1, 'tthanh', '', 1, 320000, 1, '??ng nai'),
(5, 26, 'tthanh', '', 1, 6799000, 1, '??ng nai'),
(6, 25, 'thanhlam', '', 1, 990000, 1, 'H?i Phòng'),
(7, 22, 'thanhlam', '', 1, 590000, 1, 'H?i Phòng'),
(8, 27, 'thanhlam', '', 1, 1290000, 1, 'H?i Phòng'),
(9, 26, 'thanhlam', '', 1, 6799000, 1, 'H?i Phòng'),
(10, 26, 'admin1', 'jjji', 1, 6799000, 0, 'hp'),
(11, 23, 'thanhlam', '', 1, 12990000, 1, 'H?i Phòng'),
(12, 26, 'thanhlam', '', 1, 6799000, 1, 'H?i Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `ten`) VALUES
('M01', 'Camera Hồng ngoại'),
('M02', 'Camera Wifi'),
('M03', 'Camera Bí Mật'),
('M04', 'Camera Hành Trình'),
('M05', 'Camera Cầm tay'),
('M06', 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `mahang` int(20) NOT NULL,
  `tenhang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giatien` int(20) NOT NULL,
  `slogan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sogr1sp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `chitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`mahang`, `tenhang`, `alias`, `giatien`, `slogan`, `maloai`, `ten`, `sogr1sp`, `chitiet`, `hinhanh`) VALUES
(3, 'Camera IP hồng ngoại 8.0 Megap', 'camera-ip-hong-ngoai-8-0-megap', 5200000, '				  ', 'M01', '', '500', '			 Camera IP thân trụ dòng AcuSense 8MP sử dụng ngoài trời, hỗ trợ nhiều tính năng thông minh.\r\n\r\n- Cảm biến hình ảnh: 1/2.8-inch Progressive Scan CMOS.\r\n\r\n- Độ phân giải: 8.0 Megapixel.\r\n\r\n- Ống kính: motorized 2.8 ~12 mm.\r\n\r\n- Tầm quan sát hồng ngoại: 60 mét.\r\n\r\n- Chức năng chống ngược sáng 120dB WDR. \r\n\r\n- Hỗ trợ các chức năng AGC, BLC, 3D DNR, HLC.\r\n\r\n- Tính năng thông minh: Phát hiện xâm nhập, trèo rào; Phát hiện khuôn mặt; Báo hiệu con người/phương tiện.\r\n\r\n- Khe cắm thẻ nhớ microSD 256GB (max).\r\n\r\n- Nguồn điện: 12VDC, PoE.\r\n\r\n- Tiêu chuẩn chống bụi và nước: IP67 (thích hợp sử dụng trong nhà và ngoài trời).\r\n\r\n- Tiêu chuẩn chống va đập: IK10	  ', 'home-1741600057.webp'),
(4, 'Camera Hồng Ngoại 30M DH-HAC-H', 'camera-hong-ngoai-30m-dh-hac-h', 590000, '										  	  	  ', 'M01', '', '270', '						2MP HDCVI IR Eyeball Camera\r\n_ Độ phân giải 2MP cảm biến CMOS 1/2.7″ 25fps@2MP.\r\n_ Độ nhạy sáng tối thiểu 0.002Lux/F1.9, 0Lux White Light on,\r\nchế độ ngày đêm(ICR), tự động cân bằng trắng (AWB), tự động bù tín hiệu ảnh (AGC),\r\nbù sáng(BLC), chống ngược sáng DWDR, chống nhiễu (3D-DNR)\r\n_ Hồng ngoại thông minh 30m\r\n_ Ống kính 3.6mm, chuẩn chống nước IP67, điện áp DC12V, công suất 3.3W.\r\n_ Chất liệu kim loại , môi trường làm việc từ -40°C~+60°C,\r\nkích thước φ93.4 mm × 79.4 mm ( φ3.68″ × 3.13″ ) ,\r\n_ Trọng lượng 0.27kg	  	  	  ', 'home-1741600168.jpg'),
(5, 'Camera IP hồng ngoại 4.0 Megap', 'camera-ip-hong-ngoai-4-0-megap', 1590000, '							  	  ', 'M01', '', '370', '						ảm biến hình ảnh: 1/3 inch Progressive Scan CMOS.\r\n\r\n- Độ phân giải camera: 4.0 megapixels.\r\n\r\n- Độ nhạy sáng: Color: 0.028 Lux @ (F2.0, AGC ON), 0 Lux with IR.\r\n\r\n- Chuẩn nén hình ảnh: H.265, H.264, H.264+, H.265+.\r\n\r\n- Ống kính: 4/6mm.\r\n\r\n- Tầm quan sát hồng ngoại: 50 mét.\r\n\r\n- Chức năng chống ngược sáng 120dB WDR.\r\n\r\n- Chức năng giảm nhiễu số 3D-DNR.\r\n\r\n- Chức năng bù ngược sáng BLC.\r\n\r\n- Tính năng thông minh: Phát hiện chuyển động, phát hiện video giả mạo.\r\n\r\n- Hỗ trợ dịch vụ Hik-Connect. \r\n\r\n- Nguồn điện: 12VDC & PoE.\r\n\r\n- Tiêu chuẩn chống bụi và nước: IP67 (thích hợp sử dụng trong nhà và ngoài trời).	  	  ', 'home-1741600291.webp'),
(6, 'Camera IP thân trụ hồng ngoạ', 'camera-ip-than-tru-ho-ng-ngoa-', 2350000, '							  	  ', 'M01', '', '300', '						– Cảm biến 1/2.8″ Progressive Scan CMOS 4.0 megapixel.\r\n– Chuẩn nén H.265+/H.265/H.264+/H.264.\r\n– Độ phân giải tối đa (1920×1080)25fps/30fps.\r\n– Ống kính 2.8/4/6 mm.\r\n– Hồng ngoại: 80m.\r\n– Tính năng WDR 120dB; 3D DNR; ICR; BLC.\r\n– Hỗ trợ thẻ nhớ SD/SDHC/SDXC tối đa 256GB.\r\n– Hỗ trợ các tính năng phát hiện thông minh.	  	  ', 'home-1741600427.jpg'),
(7, 'Camera Wifi 360 độ IMOU IPC-A5', 'camera-wifi-360-do-imou-ipc-a5', 550000, '				  ', 'M02', '', '200', '			– Độ phân giải 5 Megapixel quay quét trong nhà ghi hình 24/24h\r\n– Tầm xa hồng ngoại 10m với công nghệ hồng ngoại thông minh\r\n– Tính năng phát hiện người, phát hiện tiếng ồn, phát hiện chuyển động, theo dõi thông minh\r\n– Tính năng Wifi Hotspot (AP)\r\n– Tích hợp míc và loa đàm thoại hai chiều\r\n– Hỗ trợ khe cắm thẻ nhớ Micro SD, Max 256GB,\r\n– Chất liệu vỏ plastic.	  ', 'home-1741600553.webp'),
(8, 'Camera Wi-Fi An Ninh Quay/Quét', 'camera-wi-fi-an-ninh-quay-quet', 850000, '													  	  	  	  ', 'M02', '', '200', '												 Chế độ xem trực tiếp 2K QHD-Áp dụng độ phân giải 2560 × 1440, Tapo C520WS cung cấp điểm ảnh nhiều hơn 1.7 lần và mang lại hình ảnh sắc nét hơn so với 1080p.\r\nTầm nhìn ban đêm có màu Starlight \r\n-Sử dụng ống kính khẩu độ lớn F1.6 và cảm biến starlight, Tapo C520WS thu được nhiều ánh sáng hơn và có độ nhạy sáng cao hơn, do đó hiển thị màu sắc rực rỡ hơn trong điều kiện ánh sáng yếu so với camera tầm nhìn đêm có màu có ống kính F2.2 và cảm biến thông thường.\r\nTầm Nhìn Bao Quát 360° \r\n- Cung cấp phạm vi xem 360° theo chiều ngang và 130° theo chiều dọc, cho phép bạn tập trung vào các khu vực quan trọng hơn và loại bỏ các điểm mù.\r\nPhát Hiện Người/Thú cưng/Xe Miễn Phí\r\n-AI Thông Minh xác định người, vật nuôi và phương tiện, thông báo cho người dùng khi cần.\r\nBáo Động Âm Thanh và Ánh Sáng có thể tùy chỉnh\r\n-Ghi lại âm thanh báo động tùy chỉnh của riêng bạn để mở rộng cách sử dụng của bạn. Đèn siêu sáng và có thể điều chỉnh cũng được hỗ trợ để xua đuổi những vị khách không mong muốn.\r\nBảo Mật Nội Bộ và Lưu Trữ Đám Mây\r\n-Lưu video đã ghi vào thẻ nhớ microSD† hoặc bằng cách sử dụng dịch vụ đám mây Tapo Care**.\r\nChống chịu thời tiết IP66\r\n-Cung cấp hiệu suất chống nước và chống bụi tuyệt vời cho các tình huống ngoài trời.\r\nMạng có dây/không dây\r\n-Kết nối camera của bạn với mạng thông qua WiFi hoặc dây mạng để cài đặt linh hoạt hơn.	  	  	  	  ', 'home-1741600638.webp'),
(9, 'Camera IP 2MP bán cầu HIKVISIO', 'camera-ip-2mp-ban-cau-hikvisio', 450000, '																			  	  	  	  	  	  ', 'M02', '', '180', '															– Hình ảnh chất lượng cao với độ phân giải 2.0 MP\r\n– Công nghệ nén H.264 hiệu quả\r\n– Hình ảnh rõ ràng trước ánh sáng ngược mạnh nhờ công nghệ DWDR\r\n– Chống nước và bụi (IP67) và chống phá hoại (IK10)\r\n– EXIR 2.0: công nghệ hồng ngoại tiên tiến với tầm hồng ngoại xa	  	  	  	  	  	  ', 'home-1741605510.webp'),
(10, '(Mới) Camera Wifi Yoosee 4 Mắt', '-moi-camera-wifi-yoosee-4-mat', 650000, '				  ', 'M02', '', '745', 'Phiên bản nâng cấp 18mpx\r\n_ Đặc Biệt cả 3 mắt đều xoay 360 độ\r\n_ Hình ảnh sắc nét với độ phân giải Full HD\r\n_ Tích hợp 50 đèn LED công nghệ mới\r\n_ Xem ban đêm có màu, hỗ trợ đàm thoại 2 chiều\r\n_ Tích hợp báo động và gửi thông báo về điện thoại\r\n_ Chống thấm nước cực tốt\r\n_ Phù hợp lắp ngoài trời & trong nhà	  ', 'home-1741768467.webp'),
(11, 'Camera Wifi Hikvision DS-2CV1F', 'camera-wifi-hikvision-ds-2cv1f', 1290000, '				  ', 'M02', '', '270', '			Hình ảnh sắc nét với độ phân giải 4MP\r\nCông nghệ nén dữ liệu tiên tiến\r\nTầm xa hồng ngoại lên đến 20m\r\nTích hợp micro và đàm thoại 2 chiều\r\nPhát hiện chuyển động con người\r\nChuẩn chống nước IP54	  ', 'home-1741768578.webp'),
(12, 'Camera wifi Yoosee MINI X5 HD', 'camera-wifi-yoosee-mini-x5-hd', 536000, '				  ', 'M03', '', '10', '			Ứng dụng: V720\r\nMàu sắc: Đen\r\nKích thước: 30mm * 38mm\r\nThẻ TF: Hỗ trợ 8GB-128GB (máy ảnh không bao gồm thẻ TF)\r\nỐng kính: Góc rộng 160 độ\r\nChế độ cấp điện: cấp điện dự phòng, cấp điện gia dụng.\r\nĐịnh dạng quay video: AVI\r\nĐộ phân giải: 1920*1080P\r\nHệ điều hành: Android/IOS	  ', 'home-1741768883.webp'),
(13, 'Camera wifi mini V380 Pro HD 1', 'camera-wifi-mini-v380-pro-hd-1', 270000, '										  	  	  ', 'M03', '', '20', '									Màu sắc:Màu đen\r\n_ Chất liệu:Nhựa ABS\r\n_ Kích thước:5.5 x 5.5 x 3.5 cm\r\n_Ống kính chất lượng 3.6mm 2MP cung cấp hình ảnh chất lượng 1080p\r\n\r\n_ 10pcs IR Leds cho phép hình ảnh rõ ràng vào ban đêm, với tầm nhìn ban đêm khoảng cách lên đến 20m\r\n\r\n_ Được thiết kế mic trong và loa, hỗ trợ hai cách giao tiếp\r\n\r\n_ Với chức năng báo động phát hiện chuyển động thông minh\r\n\r\n_ Hỗ trợ xem từ xa, hỗ trợ quan sát trực tuyến nhiều người dùng cùng một lúc\r\n\r\n_ Kích thước siêu nhỏ và trọng lượng nhẹ, dễ dàng treo trên tường để sử dụng\r\n\r\n_ Phù hợp sử dụng trong cửa hàng, văn phòng, phòng điều dưỡng, ...\r\n\r\n 	  	  	  ', 'home-1741769196.jpg'),
(14, 'Camera Hành Trình 70mai M300 –', 'camera-hanh-trinh-70mai-m300-', 990000, '							  	  ', 'M04', '', '320', '						Camera 70Mai M300 là phiên bản nâng cấp mới nhất dựa trên mẫu sản phẩm 70mai Minutes, với có kích thước nhỏ gọn, chất lượng hình ảnh độ phân giải cao 2K cho phép ghi lại hình ảnh rõ nét cả ban ngày và ban đêm. Camera M300 được trang bị góc nhìn 140 độ, sẽ giúp bạn không bỏ sót sự vật hay khung hình nào trước ô tô của mình. Điều này làm cho chiếc camera 70mai M300 là bộ phụ kiện không thể thiếu cho chiếc xe hơi của bạn.	  	  ', 'home-1741769409.jpg'),
(15, 'Camera hành trình ô tô Taxi hỗ', 'camera-hanh-trinh-o-to-taxi-ho', 650000, '							  	  ', 'M04', '', '325', '						Mô hình riêng biệt, chào đón OEM, logo khởi động, in lụa vỏ, cài đặt hệ thống tuỳ chỉnh\r\n_Kích thước mỗi chiếc: 15.2x11x7cm\r\n_Màn hình IPS 2.0 inch, 1080 phía trước+720 bên trong+WIFI\r\n_Lens/ống kính: trước GC1084+giữa 0330+sau 0309 \r\n\r\n_Pixel/độ phân giải: 1920*1080/30 khung hinh\r\n\r\n_Góc nhìn/view angle: ống kính trước 130 độ, ống kính giữa 120 độ\r\n\r\n_Display/màn hình: 2.0 inch IPS   320*240   4:3	  	  ', 'home-1741769601.webp'),
(16, 'Camera hành trình V10plus cảm ', 'camera-hanh-trinh-v10plus-cam', 750000, '			Giảm mạnh	  ', 'M04', '', '410', '			_Camera hành trình V10 màn hình IPS 4 inch với 6 thấu kính góc quan sát 170 độ.\r\n_ Sử dụng chipset Mstar tăng độ sắc nét và cho hình ảnh trung thực...\r\n_ Độ phân giải Full HD 1296p - 1080p - 720p\r\n hỗ trợ hồng ngoại quay đêm. - Hỗ trợ camera lùi\r\n_Hiển thị tốc độ trên hành trình (playback)\r\nCảm biến va chạm, đo khảng cách. (ADAS)\r\nNgôn ngữ: tiếng việt 	  ', 'home-1741770215.jpg'),
(17, 'Camera hành trình VIETMAP SPEE', 'camera-hanh-trinh-vietmap-spee', 7350000, '			An tâm - Mọi Lúc - Mọi nơi  	  ', 'M04', '', '440', '						Trải nghiệm lái xe an toàn, thông minh cùng SpeedMap M2 camera hành trình hàng đầu của VIETMAP. Với cảm biến Sony Starvis 2, ghi hình siêu nét cả ngày lẫn đêm, cảnh báo giao thông đa dạng, kết nối 4G tiện lợi, VIETMAP SpeedMap M2 là người bạn đồng hành không thể thiếu của mọi tài xế. Bảo vệ bạn và gia đình trên mọi nẻo đường.\r\n\r\n 	  	  ', 'home-1741770388.webp'),
(18, ' Camera hành trình SJCAM C100', 'camera-hanh-trinh-sjcam-c100', 939000, '							Bảo hành 1 đổi 1 - Thời hạn bảo hành: 6 tháng\r\n\r\n			  	  	  ', 'M04', '', '223', '									Màu sắc: Đen, Trắng, Xanh\r\n\r\n_Độ phân giải camera: 12MP\r\n\r\n_Chất lượng video: 1080P@30FPS\r\n\r\n_Khả năng chống nước 30m\r\n\r\n_App sử dụng: SJCAM	  	  	  ', 'home-1741770695.jpg'),
(19, 'Camera hành trình ô tô Q3 kết ', 'camera-hanh-trinh-o-to-q3-ket', 560000, '						Khuyến mãi trong tháng 3\r\n✓  Hỗ trợ mua thẻ nhớ Thẻ Nhớ Mixie 32Gb chỉ với 109K\r\n\r\n✓  Hỗ trợ mua thẻ nhớ Thẻ Nhớ Mixie 64Gb chỉ với 149K	  	  ', 'M04', '', '532', '						Model: Q3\r\n_Pixel của ảnh: 1080P-1440P\r\n_Chế độ cấp nguồn: Type-C\r\n_Số lượng camera: 1\r\n_Độ phân giải: 1296*1080P/2560*1440P\r\n_Loa thích hợp: có\r\n_Góc rộng: 160 độ	  	  ', 'home-1741771016.jpg'),
(20, 'Camera hành trình gương ô tô K', 'camera-hanh-trinh-guong-o-to-k', 1190000, '			Bảo hành 1 đổi 1\r\n- Thời hạn bảo hành: 6 tháng\r\n  	  	  ', 'M04', '', '700', '									Camera hành trình gương ô tô K888 , màn hình cảm ứng 10 inch chính hãng giá rẻ. camera hành trình có góc quay rộng\r\n_ Moden: K888\r\n_Góc quay trước: 170 độ\r\n_Góc quay camera sau: 160 độ\r\n_Vị trí lắp: Gương chiếu hậu\r\n_Kích thước : 10 inch\r\n_Ghi: vòn lặp\r\nKích thước: 290x70x15 mm\r\nTrọng lượng: 700g\r\nNguồn điện: 5v/12v	  	  	  ', 'home-1741772006.jpg'),
(21, 'Camera hành trình 4K ', 'camera-hanh-trinh-4k', 856000, '			Trả hàng miễn phí 15 ngày - Bảo hiểm Thiệt hại sản phẩm	  ', 'M04', '', '350', '			Điều khiển chính: SA220\r\n\r\n_ Điểm ảnh: 4K 3840*2160P\r\n\r\n_ Cảm biến: GC4653\r\n\r\n_ Góc nhin phía trước: 6G 2160P 170°\r\n\r\n_ Góc nhìn phía sau: 4G 1080P 170°\r\n\r\n_ Lưu trữ: Thẻ TF 8-128G (không bao gồm thẻ theo tiêu chuẩn)\r\n\r\n_ Cảm biến trọng lực: Cảm biến G 3D ba trục\r\n\r\n_ Trọng lượng toàn bộ: 0,35 kg\r\n\r\n_ Kích thước bao bì: 182*147*47mm\r\n\r\n_Kích thước hộp bên ngoài: 578*370*300mm	  ', 'home-1741772333.webp'),
(22, 'Camera Hành Trình Xe hơi V021', 'camera-hanh-trinh-xe-hoi-v021', 590000, '			Khuyến mãi trong tháng 3\r\n✓  Hỗ trợ mua thẻ nhớ Thẻ Nhớ Mixie 32Gb chỉ với 109K\r\n\r\n✓  Hỗ trợ mua thẻ nhớ Thẻ Nhớ Mixie 64Gb chỉ với 149K	  ', 'M04', '', '450', '			Chất liệu: Nhựa ( hợp kim kẽm)\r\nĐộ phân giải: 1920x1080\r\n_ Định dạng video: MOV\r\n_ Ống kính: ống kính phẳng\r\n_ Nguồn điện đầu vào: DC5V-12V 1A\r\n_ Quay video (camera trước): 1920x1080P/30 khung hình/giây\r\n_ Camera sau: 640*480P/30 khung hình/giây\r\n_ Góc nhìn camera trước: 170°\r\n_ Góc nhìn camera sau: 120°\r\n_ Màn hình: 4inch\r\n_ Ngôn ngữ: Tiếng Trung, tiếng Anh, tiếng Nhật, tiếng Nga và 10 ngôn ngữ phổ biến khác thông dụng trên thế giới\r\n_ Thẻ nhớ: hỗ trợ lên đến 64GB	  ', 'home-1741772562.jpg'),
(23, 'Máy quay chống rung DJI Osmo P', 'may-quay-chong-rung-dji-osmo-p', 12990000, '			Thương hiệu	DJI\r\n- Bảo hành	12 tháng	  ', 'M05', '', '350', '			ở hữu cảm biến CMOS 1 inch\r\n- Quay video 4K/120fps và Slo-Mo\r\n- Tích hợp chế độ màu D-Log M và HLG 10-bit\r\n- Màn hình xoay 2\" linh hoạt\r\n- Công nghệ ActiveTrack 6.0\r\n- Khả năng lấy nét nhanh toàn điểm ảnh\r\n- Hệ thống chống rung 3 trục\r\n- 3 micro tích hợp, hỗ trợ giảm tiếng ồn của gió \r\n- Thời gian sử dụng lên đến 116 phút \r\n- Hỗ trợ Wi-Fi & Bluetooth	  ', 'home-1741772814.avif'),
(24, 'Moza Moin Camera – Máy quay cầ', 'moza-moin-camera-may-quay-ca', 6690000, '									MOIN CAMERA  – Nắm bắt cả thế giới trong tay	  	  	  ', 'M05', '', '262', '									Cảm biến 1/2.3 inch – 12MP Sony IMX378\r\n_\r\nĐi kèm ống kính 14mm f/2.2, FOV 120°\r\n_ Màn hình cảm ứng 2.45 inch 480 x 272 IPS\r\n_ Dải ISO 100-3200\r\n_ Quay Video Res 4K/60fps, Slow Motion 8x, TimeLapse, Hyperlapse, Panorama\r\n_ Max Video Bitrate : 100Mbps\r\n_ Pin sạc Lithium 930mAh, sử dụng đến 145 phút\r\n_ Kết nối : Wifi 2.4/5.2 Hhz, Bluetooth BLE 4.2\r\n_ Kích thước : 129 × 37.8 × 32mm	  	  	  ', 'home-1741772972.png'),
(25, 'Chân máy ảnh Tripod/ Monopod B', 'chan-may-anh-tripod-monopod-b', 990000, '			Bảo hành: Hỗ trợ BH 12 Tháng	  ', 'M06', '', '1240', '			- Trọng lượng: 1.24kg\r\n- Khả năng tải: 7kg\r\n- Sử dụng đầu bi Panorama QZ06\r\n- Hỗ trợ chụp lia máy theo chiều ngang\r\n- Chiều cao tối đa: 150cm\r\n- Chiều cao khi gấp gọn: 35cm\r\n- Có thể tháo rời làm monopod\r\n- Chất liệu: Hợp kim nhôm cao cấp	  ', 'home-1741774489.webp'),
(26, 'Gimbal Feiyu Scorp 2 Mắt thần ', 'gimbal-feiyu-scorp-2-mat-than', 6799000, '			Bảo hành 12 tháng, 1 đổi 1 trong vòng 07 ngày.\r\n- Tặng gấp 10 lần giá trị sản phẩm nếu phát hiện hàng giả, hàng nhái.	  ', 'M06', '', '2500', '			Gimbal SCORP-C chống rung 3 trục\r\n_ Công nghệ AI mới\r\n_ Thiết kế nhả nhanh để thiết lập quay phim dọc tức thì\r\n_ Tải trọng tối đa : 2500 g ( Khối motor mới nhất )\r\n_Dung lượng pin: 2500mAh , Thời gian sử dụng : 13 giờ	  ', 'home-1741774726.jpg'),
(27, 'Test', 'test', 1290000, 'Test', 'M01', '', '0.2', 'aaaaaaaa', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `quequan` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `ngaysinh`, `quequan`, `dienthoai`, `username`, `password`, `quyen`) VALUES
('Phạm Thị Thanh Lam', '2003-10-30', 'Hải Phòng', '0234567899', 'thanhlam', 'c4ca4238a0b923820dcc509a6f75849b', '0'),
('tiến thành', '1995-11-29', 'đồng nai', '0123456789', 'tthanh', '87f43df7008406bc7c7c21e822ede16d', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien_admin`
--

CREATE TABLE `thanhvien_admin` (
  `hoten` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thanhvien_admin`
--

INSERT INTO `thanhvien_admin` (`hoten`, `ngaysinh`, `quequan`, `dienthoai`, `username`, `password`) VALUES
('admin', '2017-11-01', 'Hp', '123456789', 'admin', 'c4ca4238a0b923820dcc509a6f75849b'),
('admin1', '2025-03-03', 'Hp', '23232323', 'admin1', 'c4ca4238a0b923820dcc509a6f75849b');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`mahang`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `thanhvien_admin`
--
ALTER TABLE `thanhvien_admin`
  ADD PRIMARY KEY (`hoten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `mahang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
