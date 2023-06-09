-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 10:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxshare`
--
CREATE DATABASE IF NOT EXISTS `luxshare` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `luxshare`;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MNV` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CCCD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SOBAOHIEM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HOTEN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYSINH` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYNGHIVIEC` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYNHAN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `KYTEN` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GHICHU` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MNV`, `CCCD`, `SOBAOHIEM`, `HOTEN`, `NGAYSINH`, `NGAYNGHIVIEC`, `NGAYNHAN`, `KYTEN`, `GHICHU`, `ROLE`) VALUES
('91202464', '040088014545', '4025086753', 'PHAN VĂN NAM', '12/12/1988', '01/02/2023', '', '', '', 0),
('91203074', '040095017621', '4019043068', 'NGUYỄN THANH TÂM', '23/10/1995', '02/02/2023', '91404283 ngày 12/04/', '', '', 0),
('91203163', '186161144', '4018366057', 'HOÀNG THỊ HƯƠNG NHÀN', '06/08/1986', '01/02/2023', '25/03/2023', '', '', 0),
('91203727', '187884248', '4016906733', 'DƯ VĂN HOÀN', '13/05/2002', '03/02/2023', '', '', '', 0),
('91317910', '191709020', '4213007379', 'PHAN GIA CƯỜNG', '14/11/1990', '01/02/2023', '', '', '', 0),
('91400806', '186756766', '4016334442', 'LÔ THỊ HỒNG', '17/03/1989', '04/02/2023', '25/03/2023', '', '', 0),
('91400841', '187011082', '4025506322', 'NGUYỄN THỊ KIỀU OANH', '02/11/1993', '31/01/2023', '01/04/2023', '', '', 0),
('91401821', '186098524', '4012003788', 'HOÀNG THỊ THỦY', '30/05/1985', '02/02/2023', '25/03/2023', '', '', 0),
('91402056', '186653671', '7508110762', 'ĐÀO THỊ HOÀI', '05/09/1989', '07/02/2023', '25/03/2023', '', '', 0),
('91402253', '187039800', '4011024698', 'HỒ THỊ HUYỀN', '20/10/1992', '04/02/2023', '25/03/2023', '', '', 0),
('91402579', '187439715', '2717049428', 'NGUYỄN THỊ MINH', '13/10/1996', '04/02/2023', '25/03/2023', '', '', 0),
('91402587', '187266826', '4025964128', 'PHẠM THỊ THẢO', '19/01/1993', '01/02/2023', '25/03/2023', '', '', 0),
('91403121', '187955566', '4016996899', 'NGUYỄN HỮU THÀNH', '07/04/2001', '06/02/2023', '25/03/2023', '', '', 0),
('91403218', '187196772', '4025083109', 'LÊ VĂN TUẤN', '20/07/1994', '01/02/2023', '25/03/2023', '', '', 0),
('91403224', '184209989', '4221467208', 'NGUYỄN MẠNH HÙNG', '30/08/1995', '01/02/2023', '22/04/2023', '', '', 0),
('91403591', '183345513', '4013018075', 'CAO THỊ THỊNH', '11/11/1993', '06/02/2023', '01/04/2023', '', '', 0),
('91403646', '186446714', '4018489440', 'Phan Thị Thanh Nhàn', '08/09/1989', '01/02/2023', '15/04/2023', '', '', 0),
('91403798', '186660369', '4018382275', 'ĐINH VIẾT KHANG', '11/06/1990', '06/02/2023', '', '', '', 0),
('91403981', '187195396', '4014006033', 'CAO THỊ HẰNG', '08/06/1993', '31/01/2023', '01/04/2023', '', '', 0),
('91404019', '187909701', '4018372796', 'NGUYỄN THỊ HIẾU', '20/04/2002', '01/02/2023', '25/03/2023', '', '', 0),
('91404183', '182519976', '4011019547', 'NGUYỄN THỊ XUÂN', '17/03/1984', '01/02/2023', '25/03/2023', '', '', 0),
('91404223', '187417506', '7514054010', 'HỒ THỊ VÂN', '27/05/1996', '02/02/2023', '25/03/2023', '', '', 0),
('91404300', '186875567', '7412246846', 'VÕ THỊ DUNG', '15/06/1990', '03/02/2023', '25/03/2023', '', '', 0),
('91404301', '187129818', '7413165028', 'NGUYỄN THỊ THỦY', '16/10/1994', '04/02/2023', '13/05/2023', '', '', 0),
('91404317', '183345513', '4216131220', 'LÊ THỊ MÂY', '16/07/1981', '01/02/2023', '25/03/2023', '', '', 0),
('91404622', '187575958', '4018816780', 'NGUYỄN THỊ KIM OANH', '27/05/1998', '01/02/2023', '25/03/2023', '', '', 0),
('91404679', '186932954', '4026311541', 'TRẦN THỊ THANH', '18/02/1990', '04/02/2023', '25/03/2023', '', '', 0),
('91404694', '187861455', '4017396541', 'NGUYỄN THỊ NGỌC ÁNH', '18/11/2001', '01/02/2023', '', '', '', 0),
('91404722', '187910907', '4017755776', 'NGUYỄN THỊ THỦY', '12/09/2002', '01/02/2023', '', '', '', 0),
('91404816', '187714305', '4019318146', 'NGUYỄN THỊ THANH', '07/09/2000', '07/02/2023', '', '', '', 0),
('91405107', '187502698', '4018826799', 'CHÂU THỊ MAI', '19/01/1996', '07/02/2023', '22/04/2023', '', '', 0),
('91405121', '187217769', '4018467688', 'CAO THỊ DUNG', '21/08/1985', '01/02/2023', 'c huệ sx3 18/04/2023', '', '', 0),
('91405197', '038192001968', '4023790974', 'NGUYỄN THỊ VÂN', '30/04/1992', '04/02/2023', '25/03/2023', '', '', 0),
('91405450', '187524214', '4018385017', 'NGUYỄN THỊ VÂN', '16/02/1996', '01/02/2023', '25/03/2023', '', '', 0),
('91405503', '187038603', '7510197984', 'PHẠM THỊ THU', '28/02/1992', '06/02/2023', '', '', '', 0),
('91405738', '187788286', '4023934855', 'TRẦN THỊ LAN', '17/09/1999', '01/02/2023', 'a việt 18/04/2023', '', '', 0),
('91405817', '187851713', '4018261143', 'HỒ THỊ NHUNG', '22/07/2001', '31/01/2023', '25/03/2023', '', '', 0),
('91406360', '251080006', '4018824022', 'PHƯƠNG THỊ LAN', '23/04/1996', '07/02/2023', '', '', '', 0),
('91406372', '187891551', '4018428730', 'ĐẶNG THỊ TÂM', '08/11/2000', '01/02/2023', '', '', '', 0),
('91406429', '187705317', '4017274969', 'HOÀNG THỊ THƠ', '04/09/1997', '04/02/2023', '', '', '', 0),
('91406588', '187010993', '4012018046', 'ĐẶNG THỊ MỸ', '01/01/1992', '07/02/2023', '01/04/2023', '', '', 0),
('91406655', '187789397', '4017845410', 'PHẠM THỊ THU THẢO', '08/05/1999', '04/02/2023', '01/04/2023', '', '', 0),
('91406656', '187433152', '4017703004', 'CAO THỊ ÁNH', '19/05/1996', '04/02/2023', '01/04/2023', '', '', 0),
('91406840', '183700122', '4217569324', 'NGUYỄN ĐÌNH PHƯƠNG', '27/03/1990', '06/02/2023', '25/03/2023', '', '', 0),
('91407028', '040201023253', '4025075323', 'NGÔ ĐỨC LÂM', '23/06/2001', '02/02/2023', '08/04/2023', '', '', 0),
('91407138', '040099007201', '4017542526', 'NGUYỄN DUY THANH', '12/09/1999', '01/02/2023', '25/03/2023', '', '', 0),
('91407271', '187442147', '4025026477', 'NGUYỄN HỮU HOÀNG', '28/02/1996', '06/02/2023', '', '', '', 0),
('91407553', '186111921', '4018393363', 'PHAN THỊ THƯƠNG', '12/07/1985', '01/02/2023', '25/03/2023', '', '', 0),
('91407630', '040203015035', '4017019698', 'TRẦN VĂN LỘC', '16/10/2003', '01/02/2023', '', '', '', 0),
('91407718', '040202019979', '4018629503', 'QUANG VĂN SAO', '12/05/2002', '01/02/2023', '25/03/2023', '', '', 0),
('91407820', '040202018614', '4017477424', 'VĂN TIẾN HỒNG ANH', '18/10/2002', '02/02/2023', '', '', '', 0),
('91407868', '040300017041', '4017970202', 'NGÔ THỊ HOA', '29/03/2000', '02/02/2023', '25/03/2023', '', '', 0),
('91407987', '040197014400', '2716017515', 'NGUYỄN THỊ TUYÊN', '23/11/1997', '07/02/2023', '25/03/2023', '', '', 0),
('91407991', '40189027727', '4025122764', 'HOÀNG THỊ YẾN', '05/01/1989', '07/02/2023', '25/03/2023', '', '', 0),
('91408129', '187713505', '4016893279', 'ĐINH THỊ HỒNG NHUNG', '25/09/1999', '01/02/2023', '08/04/2023', '', '', 0),
('91408135', '040187012862', '7909252877', 'NGUYỄN THỊ NGỌC', '21/07/1987', '04/02/2023', '01/04/2023', '', '', 0),
('91408204', '040091030609', '4012004965', 'TRẦN ĐỨC HỒNG', '25/11/1991', '04/02/2023', '13/05/2023', '', '', 0),
('91408214', '186249089', '4013009634', 'PHAN THỊ NGUYỆT', '01/07/1985', '07/02/2023', '01/04/2023', '', '', 0),
('91408230', '040094022992', '4018390193', 'NGUYỄN LỆ KIÊN', '06/04/1994', '06/02/2023', '15/04/2023', '', '', 0),
('91408307', '040088031118', '4017436035', 'PHẠM HỮU NGUYÊN', '23/09/1988', '06/02/2023', '', '', '', 0),
('91408327', '038303025818', '4017342002', 'TỐNG THỊ HIẾU', '01/10/2003', '04/02/2023', '', '', '', 0),
('91408538', '040303007926', '4018018577', 'NGUYỄN THỊ THANH BÌNH', '28/04/2003', '01/02/2023', '', '', '', 0),
('91408648', '187548787', '2717090212', 'PHAN THỊ DUNG', '04/11/1995', '02/02/2023', '', '', '', 0),
('91408846', '040303002595', '4017037815', 'PHẠM THỊ HIỀN', '12/03/2003', '01/02/2023', '27/05/2023', '', '', 0),
('91408961', '040203005803', '4018528542', 'LÊ VĂN HÙNG', '12/08/2003', '01/02/2023', '', '', '', 0),
('91409012', '187334009', '4024706269', 'TRẦN TRỌNG NHUẬN', '18/04/1995', '01/02/2023', '', '', '', 0),
('91409016', '040196013998', '4019031923', 'NGÔ THỊ VÂN', '11/05/1996', '02/02/2023', '', '', '', 0),
('91409099', '187534508', '4024469914', 'BÙI VĂN MINH', '28/03/1995', '01/02/2023', '', '', '', 0),
('91409114', '040187018039', '7513060635', 'TRƯƠNG THỊ HUẾ', '21/07/1987', '01/02/2023', '', '', '', 0),
('91409118', '040090038240', '4024995554', 'NGUYỄN DUY MÂN', '20/05/1990', '01/02/2023', '08/04/2023', '', '', 0),
('91409152', '187633528', '2715041813', 'BÙI THỊ KIỀU', '01/08/1996', '06/02/2023', '', '', '', 0),
('91409163', '040302019570', '4017424064', 'NGUYỄN THỊ MỸ LINH', '10/05/2002', '04/02/2023', '', '', '', 0),
('91409236', '187074181', '4025051731', 'NGUYỄN TRỌNG CHÍ', '03/03/1993', '06/02/2023', '', '', '', 0),
('91409326', '184058198', '4217265936', 'NGUYỄN THỊ HUYỀN TRANG', '07/07/1995', '06/02/2023', '', '', '', 0),
('91409438', '187811600', '4017506173', 'CHU THỊ NHƯ QUỲNH', '16/06/1998', '01/02/2023', '', '', '', 0),
('91409439', '040300020420', '4018690370', 'ĐẬU THỊ HƯƠNG', '16/03/2000', '01/02/2023', '25/03/2023', '', '', 0),
('91409450', '187715082', '4018690361', 'LÊ THỊ DUYÊN', '22/01/2000', '01/02/2023', '25/03/2023', '', '', 0),
('91409455', '040195030010', '2716046201', 'HỒ THỊ HƯƠNG', '23/04/1995', '02/02/2023', '01/04/2023', '', '', 0),
('91409515', '188037429', '4016761824', 'LÊ ĐỨC MẠNH', '04/02/2004', '01/02/2023', '25/03/2023', '', '', 0),
('91409519', '040304003360', '4017067453', 'PHẠM THÙY DƯƠNG', '16/04/2004', '02/02/2023', '', '', '', 0),
('91409521', '040199023310', '4024516528', 'NGUYỄN THỊ HOAN', '14/06/1999', '06/02/2023', '', '', '', 0),
('91409531', '040304015253', '4018639803', 'TRẦN THỊ HUYỀN SƯƠNG', '24/05/2004', '04/02/2023', 'a Thạch 15/05/2023', '', '', 0),
('91409576', '040303019619', '4018863907', 'TRẦN THỊ LAN ANH', '18/09/2003', '01/02/2023', '', '', '', 0),
('91409581', '187542545', '1915830732', 'BÙI THỊ NGỌC', '17/05/1996', '01/02/2023', '27/05/2023', '', '', 0),
('91409639', '040303013205', '4019276754', 'LÊ THỊ MAI', '22/05/2003', '01/02/2023', '', '', '', 0),
('91409645', '040304008002', '4018938064', 'THÁI THỊ LY', '21/09/2004', '01/02/2023', '', '', '', 0),
('91409650', '187840785', '4016314319', 'NGUYỄN THỊ BÌNH', '04/02/2000', '06/02/2023', '', '', '', 0),
('91409663', '040303022869', '4018307414', 'NGUYỄN THỊ HOÀI', '21/04/2003', '06/02/2023', '06/05/2023', '', '', 0),
('91409692', '040200001790', '4018335061', 'NGUYỄN TIẾN ĐẠT', '07/09/2000', '01/02/2023', '', '', '', 0),
('91409695', '040301016906', '4016280184', 'QUANG THỊ THẮM', '07/05/2001', '01/02/2023', '', '', '', 0),
('91409704', '040194011252', '2715035811', 'NGUYỄN THỊ THƯỜNG', '19/04/1994', '03/02/2023', '01/04/2023', '', '', 0),
('91409709', '040187023623', '4017763864', 'NGUYỄN THỊ DUNG', '12/07/1987', '01/02/2023', '08/04/2023', '', '', 0),
('91409719', '184174776', '7415158022', 'PHAN THỊ THẢO', '25/11/1996', '06/02/2023', '', '', '', 0),
('91409764', '040204027145', '4025605021', 'NGUYỄN ĐÌNH NGHĨA', '17/10/2004', '01/02/2023', '', '', '', 0),
('91409794', '040303014142', '4018551274', 'TRƯƠNG THỊ QUỲNH', '17/10/2003', '04/02/2023', '', '', '', 0),
('91409804', '040204004101', '4018324036', 'NGUYỄN VIẾT TUẤN', '11/09/2004', '06/02/2023', '', '', '', 0),
('91410464', '042200011819', '4019214337', 'HÀ HUY SƠN', '24/10/2000', '06/06/2023', '06/06/2023', 'ĐÃ NHẬN', 'Đã nghỉ việc', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;