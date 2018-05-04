/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50548
 Source Host           : localhost:3306
 Source Schema         : euni1

 Target Server Type    : MySQL
 Target Server Version : 50548
 File Encoding         : 65001

 Date: 02/05/2018 18:24:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chucnang
-- ----------------------------
DROP TABLE IF EXISTS `chucnang`;
CREATE TABLE `chucnang`  (
  `maChucNang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `duongDan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tenHienThi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `ChucNangCha_maChucNang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maChucNang`) USING BTREE,
  INDEX `FK7AB5D71FBB2DDE63`(`ChucNangCha_maChucNang`) USING BTREE,
  CONSTRAINT `FK7AB5D71FBB2DDE63` FOREIGN KEY (`ChucNangCha_maChucNang`) REFERENCES `chucnang` (`maChucNang`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chucnang
-- ----------------------------
INSERT INTO `chucnang` VALUES ('CN0', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 0', NULL, NULL);
INSERT INTO `chucnang` VALUES ('CN0 0', 'eCore/pages/lops.jsp', NULL, 'fa fa-exchange fa-fw', NULL, 'Quản lý Lớp', NULL, 'CN0');
INSERT INTO `chucnang` VALUES ('CN0 1', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 0 - 1', NULL, 'CN0');
INSERT INTO `chucnang` VALUES ('CN0 2', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 0 - 2', NULL, 'CN0');
INSERT INTO `chucnang` VALUES ('CN1', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 1', NULL, NULL);
INSERT INTO `chucnang` VALUES ('CN1 0', 'eCore/pages/namhocs.jsp', NULL, 'fa fa-exchange fa-fw', NULL, 'Quản lý Năm Học', NULL, 'CN1');
INSERT INTO `chucnang` VALUES ('CN1 1', 'test.jsp', NULL, 'fa fa-exchange fa-fw', NULL, 'Quản lý bảo hiểm', NULL, 'CN1');
INSERT INTO `chucnang` VALUES ('CN1 2', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 1 - 2', NULL, 'CN1');
INSERT INTO `chucnang` VALUES ('CN2', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 2', NULL, NULL);
INSERT INTO `chucnang` VALUES ('CN2 0', 'eCore/pages/hockys.jsp', NULL, 'fa fa-exchange fa-fw', NULL, 'Quản lý Học Kỳ', NULL, 'CN2');
INSERT INTO `chucnang` VALUES ('CN2 1', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 2 - 1', NULL, 'CN2');
INSERT INTO `chucnang` VALUES ('CN2 2', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 2 - 2', NULL, 'CN2');
INSERT INTO `chucnang` VALUES ('CN3', 'google.com', NULL, 'fa fa-exchange fa-fw', NULL, 'Chức năng 3', NULL, NULL);
INSERT INTO `chucnang` VALUES ('CN3 0', 'eCore/pages/donvis.jsp', NULL, 'fa fa-exchange fa-fw', NULL, 'Quản lý Đơn Vị', NULL, 'CN3');

-- ----------------------------
-- Table structure for donvi
-- ----------------------------
DROP TABLE IF EXISTS `donvi`;
CREATE TABLE `donvi`  (
  `maDonVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diaChiLienHe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `soDienThoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenDonVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `donViCha_maDonVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maDonVi`) USING BTREE,
  INDEX `FK3F25B36B4C5E770`(`donViCha_maDonVi`) USING BTREE,
  CONSTRAINT `FK3F25B36B4C5E770` FOREIGN KEY (`donViCha_maDonVi`) REFERENCES `donvi` (`maDonVi`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of donvi
-- ----------------------------
INSERT INTO `donvi` VALUES ('DV01', NULL, NULL, NULL, NULL, NULL, 'Bộ môn Công nghệ Thông tin', NULL, NULL);
INSERT INTO `donvi` VALUES ('DV02', NULL, NULL, NULL, NULL, NULL, 'Bộ môn Điện Điện tử', NULL, NULL);
INSERT INTO `donvi` VALUES ('Đơn vị 0', '450 Lê Văn Việt', 'donvi@utc2.edu.vn', '', '', '0123456701', 'Đơn vị 0', '2018-05-02 16:24:14', NULL);
INSERT INTO `donvi` VALUES ('Đơn vị 1', '450 Lê Văn Việt', 'donvi1@utc2.edu.vn', '', '', '0123456712', 'Đơn vị 1', '2018-05-02 16:24:16', 'Đơn vị 0');
INSERT INTO `donvi` VALUES ('Đơn vị 2', '450 Lê Văn Việt', 'donvi2@utc2.edu.vn', '', '', '0123456723', 'Đơn vị 2', '2018-05-02 16:24:17', 'Đơn vị 1');
INSERT INTO `donvi` VALUES ('Đơn vị 3', '450 Lê Văn Việt', 'donvi3@utc2.edu.vn', '', '', '0123456734', 'Đơn vị 3', '2018-05-02 16:24:18', 'Đơn vị 2');
INSERT INTO `donvi` VALUES ('Đơn vị 4', '450 Lê Văn Việt', 'donvi4@utc2.edu.vn', '', '', '0123456745', 'Đơn vị 4', '2018-05-02 16:24:19', 'Đơn vị 3');
INSERT INTO `donvi` VALUES ('Đơn vị 5', '450 Lê Văn Việt', 'donvi5@utc2.edu.vn', '', '', '0123456756', 'Đơn vị 5', '2018-05-02 16:24:20', 'Đơn vị 4');
INSERT INTO `donvi` VALUES ('Đơn vị 6', '450 Lê Văn Việt', 'donvi6@utc2.edu.vn', '', '', '0123456767', 'Đơn vị 6', '2018-05-02 16:24:21', 'Đơn vị 5');
INSERT INTO `donvi` VALUES ('Đơn vị 7', '450 Lê Văn Việt', 'donvi7@utc2.edu.vn', '', '', '0123456778', 'Đơn vị 7', '2018-05-02 16:24:22', 'Đơn vị 6');
INSERT INTO `donvi` VALUES ('Đơn vị 8', '450 Lê Văn Việt', 'donvi8@utc2.edu.vn', '', '', '0123456789', 'Đơn vị 8', '2018-05-02 16:24:23', 'Đơn vị 7');
INSERT INTO `donvi` VALUES ('Đơn vị 9', '450 Lê Văn Việt', 'donvi9@utc2.edu.vn', '', '', '01234567910', 'Đơn vị 9', '2018-05-02 16:24:24', 'Đơn vị 8');

-- ----------------------------
-- Table structure for hocky
-- ----------------------------
DROP TABLE IF EXISTS `hocky`;
CREATE TABLE `hocky`  (
  `maHocKy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ngayBatDau` datetime NULL DEFAULT NULL,
  `ngayKetThuc` datetime NULL DEFAULT NULL,
  `tenHocKy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `namHoc_maNamHoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maHocKy`) USING BTREE,
  INDEX `FK42A8EAA818B584`(`namHoc_maNamHoc`) USING BTREE,
  CONSTRAINT `FK42A8EAA818B584` FOREIGN KEY (`namHoc_maNamHoc`) REFERENCES `namhoc` (`maNamHoc`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hocky
-- ----------------------------
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2013-2014', '', '', '2013-09-01 00:00:00', '2013-08-30 00:00:00', 'Học kỳ I năm 2013-2014', '2018-05-02 13:59:06', '2013-2014');
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2014-2015', '', '', '2014-09-01 00:00:00', '2014-08-30 00:00:00', 'Học kỳ I năm 2014-2015', '2018-05-02 13:59:07', '2014-2015');
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2015-2016', '', '', '2015-09-01 00:00:00', '2015-08-30 00:00:00', 'Học kỳ I năm 2015-2016', '2018-05-02 13:59:08', '2015-2016');
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2016-2017', '', '', '2016-09-01 00:00:00', '2016-08-30 00:00:00', 'Học kỳ I năm 2016-2017', '2018-05-02 13:59:09', '2016-2017');
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2017-2018', '', '', '2017-09-01 00:00:00', '2017-08-30 00:00:00', 'Học kỳ I năm 2017-2018', '2018-05-02 13:59:10', '2017-2018');
INSERT INTO `hocky` VALUES ('Học kỳ I năm 2018-2019', '', '', '2018-09-01 00:00:00', '2018-08-30 00:00:00', 'Học kỳ I năm 2018-2019', '2018-05-02 17:05:41', '2018-2019');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2013-2014', '', '', '2013-09-01 00:00:00', '2013-08-30 00:00:00', 'Học kỳ II năm 2013-2014', '2018-05-02 13:59:06', '2013-2014');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2014-2015', '', '', '2014-09-01 00:00:00', '2014-08-30 00:00:00', 'Học kỳ II năm 2014-2015', '2018-05-02 13:59:07', '2014-2015');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2015-2016', '', '', '2015-09-01 00:00:00', '2015-08-30 00:00:00', 'Học kỳ II năm 2015-2016', '2018-05-02 13:59:08', '2015-2016');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2016-2017', '', '', '2016-09-01 00:00:00', '2016-08-30 00:00:00', 'Học kỳ II năm 2016-2017', '2018-05-02 13:59:09', '2016-2017');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2017-2018', '', '', '2017-09-01 00:00:00', '2017-08-30 00:00:00', 'Học kỳ II năm 2017-2018', '2018-05-02 13:59:10', '2017-2018');
INSERT INTO `hocky` VALUES ('Học kỳ II năm 2018-2019', '', '', '2018-09-01 00:00:00', '2018-08-30 00:00:00', 'Học kỳ II năm 2018-2019', '2018-05-02 16:59:32', '2018-2019');

-- ----------------------------
-- Table structure for lop
-- ----------------------------
DROP TABLE IF EXISTS `lop`;
CREATE TABLE `lop`  (
  `maLop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `khoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nienKhoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenLop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `donVi_maDonVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maLop`) USING BTREE,
  INDEX `FK12B2D614A4900`(`donVi_maDonVi`) USING BTREE,
  CONSTRAINT `FK12B2D614A4900` FOREIGN KEY (`donVi_maDonVi`) REFERENCES `donvi` (`maDonVi`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lop
-- ----------------------------
INSERT INTO `lop` VALUES ('10', '-', '10', '-', '2018-2022', 'Lớp 10', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('100', '-', '100', '-', '2018-2022', 'Lớp 100', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('103', '-', '103', '-', '2018-2022', 'Lớp 103', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('104', '-', '104', '-', '2018-2022', 'Lớp 104', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('105', '-', '105', '-', '2018-2022', 'Lớp 105', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('106', '-', '106', '-', '2018-2022', 'Lớp 106', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('108', '-', '108', '-', '2018-2022', 'Lớp 108', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('109', '-', '109', '-', '2018-2022', 'Lớp 109', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('11', '-', '11', '-', '2018-2022', 'Lớp 11', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('110', '-', '110', '-', '2018-2022', 'Lớp 110', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('111', '-', '111', '-', '2018-2022', 'Lớp 111', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('112', '-', '112', '-', '2018-2022', 'Lớp 112', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('113', '-', '113', '-', '2018-2022', 'Lớp 113', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('114', '-', '114', '-', '2018-2022', 'Lớp 114', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('115', '-', '115', '-', '2018-2022', 'Lớp 115', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('116', '-', '116', '-', '2018-2022', 'Lớp 116', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('117', '-', '117', '-', '2018-2022', 'Lớp 117', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('118', '-', '118', '-', '2018-2022', 'Lớp 118', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('119', '-', '119', '-', '2018-2022', 'Lớp 119', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('12', '-', '12', '-', '2018-2022', 'Lớp 12', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('120', '-', '120', '-', '2018-2022', 'Lớp 120', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('121', '-', '121', '-', '2018-2022', 'Lớp 121', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('122', '-', '122', '-', '2018-2022', 'Lớp 122', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('123', '-', '123', '-', '2018-2022', 'Lớp 123', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('124', '-', '124', '-', '2018-2022', 'Lớp 124', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('125', '-', '125', '-', '2018-2022', 'Lớp 125', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('126', '-', '126', '-', '2018-2022', 'Lớp 126', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('127', '-', '127', '-', '2018-2022', 'Lớp 127', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('128', '-', '128', '-', '2018-2022', 'Lớp 128', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('129', '-', '129', '-', '2018-2022', 'Lớp 129', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('13', '-', '13', '-', '2018-2022', 'Lớp 13', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('130', '-', '130', '-', '2018-2022', 'Lớp 130', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('131', '-', '131', '-', '2018-2022', 'Lớp 131', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('132', '-', '132', '-', '2018-2022', 'Lớp 132', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('133', '-', '133', '-', '2018-2022', 'Lớp 133', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('134', '-', '134', '-', '2018-2022', 'Lớp 134', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('135', '-', '135', '-', '2018-2022', 'Lớp 135', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('136', '-', '136', '-', '2018-2022', 'Lớp 136', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('137', '-', '137', '-', '2018-2022', 'Lớp 137', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('138', '-', '138', '-', '2018-2022', 'Lớp 138', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('139', '-', '139', '-', '2018-2022', 'Lớp 139', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('14', '-', '14', '-', '2018-2022', 'Lớp 14', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('140', '-', '140', '-', '2018-2022', 'Lớp 140', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('141', '-', '141', '-', '2018-2022', 'Lớp 141', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('142', '-', '142', '-', '2018-2022', 'Lớp 142', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('143', '-', '143', '-', '2018-2022', 'Lớp 143', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('144', '-', '144', '-', '2018-2022', 'Lớp 144', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('145', '-', '145', '-', '2018-2022', 'Lớp 145', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('146', '-', '146', '-', '2018-2022', 'Lớp 146', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('147', '-', '147', '-', '2018-2022', 'Lớp 147', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('148', '-', '148', '-', '2018-2022', 'Lớp 148', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('149', '-', '149', '-', '2018-2022', 'Lớp 149', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('15', '-', '15', '-', '2018-2022', 'Lớp 15', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('150', '-', '150', '-', '2018-2022', 'Lớp 150', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('151', '-', '151', '-', '2018-2022', 'Lớp 151', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('152', '-', '152', '-', '2018-2022', 'Lớp 152', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('153', '-', '153', '-', '2018-2022', 'Lớp 153', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('154', '-', '154', '-', '2018-2022', 'Lớp 154', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('155', '-', '155', '-', '2018-2022', 'Lớp 155', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('156', '-', '156', '-', '2018-2022', 'Lớp 156', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('157', '-', '157', '-', '2018-2022', 'Lớp 157', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('158', '-', '158', '-', '2018-2022', 'Lớp 158', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('159', '-', '159', '-', '2018-2022', 'Lớp 159', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('16', '-', '16', '-', '2018-2022', 'Lớp 16', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('160', '-', '160', '-', '2018-2022', 'Lớp 160', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('161', '-', '161', '-', '2018-2022', 'Lớp 161', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('162', '-', '162', '-', '2018-2022', 'Lớp 162', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('163', '-', '163', '-', '2018-2022', 'Lớp 163', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('164', '-', '164', '-', '2018-2022', 'Lớp 164', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('165', '-', '165', '-', '2018-2022', 'Lớp 165', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('166', '-', '166', '-', '2018-2022', 'Lớp 166', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('167', '-', '167', '-', '2018-2022', 'Lớp 167', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('168', '-', '168', '-', '2018-2022', 'Lớp 168', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('169', '-', '169', '-', '2018-2022', 'Lớp 169', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('17', '-', '17', '-', '2018-2022', 'Lớp 17', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('170', '-', '170', '-', '2018-2022', 'Lớp 170', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('171', '-', '171', '-', '2018-2022', 'Lớp 171', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('172', '-', '172', '-', '2018-2022', 'Lớp 172', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('173', '-', '173', '-', '2018-2022', 'Lớp 173', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('174', '-', '174', '-', '2018-2022', 'Lớp 174', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('175', '-', '175', '-', '2018-2022', 'Lớp 175', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('176', '-', '176', '-', '2018-2022', 'Lớp 176', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('177', '-', '177', '-', '2018-2022', 'Lớp 177', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('178', '-', '178', '-', '2018-2022', 'Lớp 178', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('179', '-', '179', '-', '2018-2022', 'Lớp 179', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('18', '-', '18', '-', '2018-2022', 'Lớp 18', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('180', '-', '180', '-', '2018-2022', 'Lớp 180', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('181', '-', '181', '-', '2018-2022', 'Lớp 181', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('182', '-', '182', '-', '2018-2022', 'Lớp 182', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('183', '-', '183', '-', '2018-2022', 'Lớp 183', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('184', '-', '184', '-', '2018-2022', 'Lớp 184', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('185', '-', '185', '-', '2018-2022', 'Lớp 185', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('186', '-', '186', '-', '2018-2022', 'Lớp 186', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('187', '-', '187', '-', '2018-2022', 'Lớp 187', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('188', '-', '188', '-', '2018-2022', 'Lớp 188', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('189', '-', '189', '-', '2018-2022', 'Lớp 189', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('19', '-', '19', '-', '2018-2022', 'Lớp 19', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('190', '-', '190', '-', '2018-2022', 'Lớp 190', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('191', '-', '191', '-', '2018-2022', 'Lớp 191', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('192', '-', '192', '-', '2018-2022', 'Lớp 192', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('193', '-', '193', '-', '2018-2022', 'Lớp 193', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('194', '-', '194', '-', '2018-2022', 'Lớp 194', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('195', '-', '195', '-', '2018-2022', 'Lớp 195', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('196', '-', '196', '-', '2018-2022', 'Lớp 196', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('197', '-', '197', '-', '2018-2022', 'Lớp 197', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('198', '-', '198', '-', '2018-2022', 'Lớp 198', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('199', '-', '199', '-', '2018-2022', 'Lớp 199', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('2', '-', '2', '-', '2018-2022', 'Lớp 2', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('20', '-', '20', '-', '2018-2022', 'Lớp 20', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('200', '-', '200', '-', '2018-2022', 'Lớp 200', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('201', '-', '201', '-', '2018-2022', 'Lớp 201', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('202', '-', '202', '-', '2018-2022', 'Lớp 202', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('203', '-', '203', '-', '2018-2022', 'Lớp 203', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('204', '-', '204', '-', '2018-2022', 'Lớp 204', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('205', '-', '205', '-', '2018-2022', 'Lớp 205', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('206', '-', '206', '-', '2018-2022', 'Lớp 206', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('207', '-', '207', '-', '2018-2022', 'Lớp 207', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('208', '-', '208', '-', '2018-2022', 'Lớp 208', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('209', '-', '209', '-', '2018-2022', 'Lớp 209', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('21', '-', '21', '-', '2018-2022', 'Lớp 21', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('210', '-', '210', '-', '2018-2022', 'Lớp 210', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('211', '-', '211', '-', '2018-2022', 'Lớp 211', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('212', '-', '212', '-', '2018-2022', 'Lớp 212', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('213', '-', '213', '-', '2018-2022', 'Lớp 213', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('214', '-', '214', '-', '2018-2022', 'Lớp 214', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('215', '-', '215', '-', '2018-2022', 'Lớp 215', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('216', '-', '216', '-', '2018-2022', 'Lớp 216', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('217', '-', '217', '-', '2018-2022', 'Lớp 217', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('218', '-', '218', '-', '2018-2022', 'Lớp 218', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('219', '-', '219', '-', '2018-2022', 'Lớp 219', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('22', '-', '22', '-', '2018-2022', 'Lớp 22', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('220', '-', '220', '-', '2018-2022', 'Lớp 220', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('221', '-', '221', '-', '2018-2022', 'Lớp 221', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('222', '-', '222', '-', '2018-2022', 'Lớp 222', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('223', '-', '223', '-', '2018-2022', 'Lớp 223', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('224', '-', '224', '-', '2018-2022', 'Lớp 224', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('225', '-', '225', '-', '2018-2022', 'Lớp 225', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('226', '-', '226', '-', '2018-2022', 'Lớp 226', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('227', '-', '227', '-', '2018-2022', 'Lớp 227', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('228', '-', '228', '-', '2018-2022', 'Lớp 228', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('229', '-', '229', '-', '2018-2022', 'Lớp 229', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('23', '-', '23', '-', '2018-2022', 'Lớp 23', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('230', '-', '230', '-', '2018-2022', 'Lớp 230', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('231', '-', '231', '-', '2018-2022', 'Lớp 231', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('232', '-', '232', '-', '2018-2022', 'Lớp 232', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('233', '-', '233', '-', '2018-2022', 'Lớp 233', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('234', '-', '234', '-', '2018-2022', 'Lớp 234', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('235', '-', '235', '-', '2018-2022', 'Lớp 235', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('236', '-', '236', '-', '2018-2022', 'Lớp 236', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('237', '-', '237', '-', '2018-2022', 'Lớp 237', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('238', '-', '238', '-', '2018-2022', 'Lớp 238', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('239', '-', '239', '-', '2018-2022', 'Lớp 239', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('24', '-', '24', '-', '2018-2022', 'Lớp 24', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('240', '-', '240', '-', '2018-2022', 'Lớp 240', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('241', '-', '241', '-', '2018-2022', 'Lớp 241', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('242', '-', '242', '-', '2018-2022', 'Lớp 242', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('243', '-', '243', '-', '2018-2022', 'Lớp 243', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('244', '-', '244', '-', '2018-2022', 'Lớp 244', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('245', '-', '245', '-', '2018-2022', 'Lớp 245', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('246', '-', '246', '-', '2018-2022', 'Lớp 246', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('247', '-', '247', '-', '2018-2022', 'Lớp 247', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('248', '-', '248', '-', '2018-2022', 'Lớp 248', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('249', '-', '249', '-', '2018-2022', 'Lớp 249', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('25', '-', '25', '-', '2018-2022', 'Lớp 25', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('250', '-', '250', '-', '2018-2022', 'Lớp 250', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('251', '-', '251', '-', '2018-2022', 'Lớp 251', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('252', '-', '252', '-', '2018-2022', 'Lớp 252', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('253', '-', '253', '-', '2018-2022', 'Lớp 253', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('254', '-', '254', '-', '2018-2022', 'Lớp 254', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('255', '-', '255', '-', '2018-2022', 'Lớp 255', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('256', '-', '256', '-', '2018-2022', 'Lớp 256', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('257', '-', '257', '-', '2018-2022', 'Lớp 257', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('258', '-', '258', '-', '2018-2022', 'Lớp 258', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('259', '-', '259', '-', '2018-2022', 'Lớp 259', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('26', '-', '26', '-', '2018-2022', 'Lớp 26', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('260', '-', '260', '-', '2018-2022', 'Lớp 260', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('261', '-', '261', '-', '2018-2022', 'Lớp 261', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('262', '-', '262', '-', '2018-2022', 'Lớp 262', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('263', '-', '263', '-', '2018-2022', 'Lớp 263', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('264', '-', '264', '-', '2018-2022', 'Lớp 264', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('265', '-', '265', '-', '2018-2022', 'Lớp 265', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('266', '-', '266', '-', '2018-2022', 'Lớp 266', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('267', '-', '267', '-', '2018-2022', 'Lớp 267', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('268', '-', '268', '-', '2018-2022', 'Lớp 268', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('269', '-', '269', '-', '2018-2022', 'Lớp 269', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('27', '-', '27', '-', '2018-2022', 'Lớp 27', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('270', '-', '270', '-', '2018-2022', 'Lớp 270', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('271', '-', '271', '-', '2018-2022', 'Lớp 271', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('272', '-', '272', '-', '2018-2022', 'Lớp 272', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('273', '-', '273', '-', '2018-2022', 'Lớp 273', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('274', '-', '274', '-', '2018-2022', 'Lớp 274', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('275', '-', '275', '-', '2018-2022', 'Lớp 275', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('276', '-', '276', '-', '2018-2022', 'Lớp 276', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('277', '-', '277', '-', '2018-2022', 'Lớp 277', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('278', '-', '278', '-', '2018-2022', 'Lớp 278', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('279', '-', '279', '-', '2018-2022', 'Lớp 279', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('28', '-', '28', '-', '2018-2022', 'Lớp 28', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('280', '-', '280', '-', '2018-2022', 'Lớp 280', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('281', '-', '281', '-', '2018-2022', 'Lớp 281', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('282', '-', '282', '-', '2018-2022', 'Lớp 282', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('283', '-', '283', '-', '2018-2022', 'Lớp 283', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('284', '-', '284', '-', '2018-2022', 'Lớp 284', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('285', '-', '285', '-', '2018-2022', 'Lớp 285', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('286', '-', '286', '-', '2018-2022', 'Lớp 286', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('287', '-', '287', '-', '2018-2022', 'Lớp 287', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('288', '-', '288', '-', '2018-2022', 'Lớp 288', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('289', '-', '289', '-', '2018-2022', 'Lớp 289', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('29', '-', '29', '-', '2018-2022', 'Lớp 29', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('290', '-', '290', '-', '2018-2022', 'Lớp 290', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('291', '-', '291', '-', '2018-2022', 'Lớp 291', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('292', '-', '292', '-', '2018-2022', 'Lớp 292', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('293', '-', '293', '-', '2018-2022', 'Lớp 293', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('294', '-', '294', '-', '2018-2022', 'Lớp 294', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('295', '-', '295', '-', '2018-2022', 'Lớp 295', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('296', '-', '296', '-', '2018-2022', 'Lớp 296', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('297', '-', '297', '-', '2018-2022', 'Lớp 297', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('298', '-', '298', '-', '2018-2022', 'Lớp 298', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('299', '-', '299', '-', '2018-2022', 'Lớp 299', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('3', '-', '3', '-', '2018-2022', 'Lớp 3', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('30', '-', '30', '-', '2018-2022', 'Lớp 30', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('300', '-', '300', '-', '2018-2022', 'Lớp 300', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('301', '-', '301', '-', '2018-2022', 'Lớp 301', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('302', '-', '302', '-', '2018-2022', 'Lớp 302', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('303', '-', '303', '-', '2018-2022', 'Lớp 303', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('304', '-', '304', '-', '2018-2022', 'Lớp 304', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('305', '-', '305', '-', '2018-2022', 'Lớp 305', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('306', '-', '306', '-', '2018-2022', 'Lớp 306', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('307', '-', '307', '-', '2018-2022', 'Lớp 307', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('308', '-', '308', '-', '2018-2022', 'Lớp 308', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('309', '-', '309', '-', '2018-2022', 'Lớp 309', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('31', '-', '31', '-', '2018-2022', 'Lớp 31', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('310', '-', '310', '-', '2018-2022', 'Lớp 310', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('311', '-', '311', '-', '2018-2022', 'Lớp 311', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('312', '-', '312', '-', '2018-2022', 'Lớp 312', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('313', '-', '313', '-', '2018-2022', 'Lớp 313', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('314', '-', '314', '-', '2018-2022', 'Lớp 314', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('315', '-', '315', '-', '2018-2022', 'Lớp 315', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('316', '-', '316', '-', '2018-2022', 'Lớp 316', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('317', '-', '317', '-', '2018-2022', 'Lớp 317', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('318', '-', '318', '-', '2018-2022', 'Lớp 318', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('319', '-', '319', '-', '2018-2022', 'Lớp 319', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('32', '-', '32', '-', '2018-2022', 'Lớp 32', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('320', '-', '320', '-', '2018-2022', 'Lớp 320', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('321', '-', '321', '-', '2018-2022', 'Lớp 321', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('322', '-', '322', '-', '2018-2022', 'Lớp 322', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('323', '-', '323', '-', '2018-2022', 'Lớp 323', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('324', '-', '324', '-', '2018-2022', 'Lớp 324', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('325', '-', '325', '-', '2018-2022', 'Lớp 325', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('326', '-', '326', '-', '2018-2022', 'Lớp 326', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('327', '-', '327', '-', '2018-2022', 'Lớp 327', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('328', '-', '328', '-', '2018-2022', 'Lớp 328', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('329', '-', '329', '-', '2018-2022', 'Lớp 329', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('33', '-', '33', '-', '2018-2022', 'Lớp 33', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('330', '-', '330', '-', '2018-2022', 'Lớp 330', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('331', '-', '331', '-', '2018-2022', 'Lớp 331', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('332', '-', '332', '-', '2018-2022', 'Lớp 332', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('333', '-', '333', '-', '2018-2022', 'Lớp 333', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('334', '-', '334', '-', '2018-2022', 'Lớp 334', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('335', '-', '335', '-', '2018-2022', 'Lớp 335', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('336', '-', '336', '-', '2018-2022', 'Lớp 336', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('337', '-', '337', '-', '2018-2022', 'Lớp 337', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('338', '-', '338', '-', '2018-2022', 'Lớp 338', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('339', '-', '339', '-', '2018-2022', 'Lớp 339', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('34', '-', '34', '-', '2018-2022', 'Lớp 34', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('340', '-', '340', '-', '2018-2022', 'Lớp 340', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('341', '-', '341', '-', '2018-2022', 'Lớp 341', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('342', '-', '342', '-', '2018-2022', 'Lớp 342', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('343', '-', '343', '-', '2018-2022', 'Lớp 343', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('344', '-', '344', '-', '2018-2022', 'Lớp 344', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('345', '-', '345', '-', '2018-2022', 'Lớp 345', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('346', '-', '346', '-', '2018-2022', 'Lớp 346', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('347', '-', '347', '-', '2018-2022', 'Lớp 347', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('348', '-', '348', '-', '2018-2022', 'Lớp 348', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('349', '-', '349', '-', '2018-2022', 'Lớp 349', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('35', '-', '35', '-', '2018-2022', 'Lớp 35', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('350', '-', '350', '-', '2018-2022', 'Lớp 350', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('351', '-', '351', '-', '2018-2022', 'Lớp 351', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('352', '-', '352', '-', '2018-2022', 'Lớp 352', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('353', '-', '353', '-', '2018-2022', 'Lớp 353', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('354', '-', '354', '-', '2018-2022', 'Lớp 354', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('355', '-', '355', '-', '2018-2022', 'Lớp 355', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('356', '-', '356', '-', '2018-2022', 'Lớp 356', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('357', '-', '357', '-', '2018-2022', 'Lớp 357', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('358', '-', '358', '-', '2018-2022', 'Lớp 358', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('359', '-', '359', '-', '2018-2022', 'Lớp 359', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('36', '-', '36', '-', '2018-2022', 'Lớp 36', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('360', '-', '360', '-', '2018-2022', 'Lớp 360', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('361', '-', '361', '-', '2018-2022', 'Lớp 361', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('362', '-', '362', '-', '2018-2022', 'Lớp 362', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('363', '-', '363', '-', '2018-2022', 'Lớp 363', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('364', '-', '364', '-', '2018-2022', 'Lớp 364', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('365', '-', '365', '-', '2018-2022', 'Lớp 365', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('366', '-', '366', '-', '2018-2022', 'Lớp 366', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('367', '-', '367', '-', '2018-2022', 'Lớp 367', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('368', '-', '368', '-', '2018-2022', 'Lớp 368', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('369', '-', '369', '-', '2018-2022', 'Lớp 369', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('37', '-', '37', '-', '2018-2022', 'Lớp 37', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('370', '-', '370', '-', '2018-2022', 'Lớp 370', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('371', '-', '371', '-', '2018-2022', 'Lớp 371', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('372', '-', '372', '-', '2018-2022', 'Lớp 372', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('373', '-', '373', '-', '2018-2022', 'Lớp 373', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('374', '-', '374', '-', '2018-2022', 'Lớp 374', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('375', '-', '375', '-', '2018-2022', 'Lớp 375', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('376', '-', '376', '-', '2018-2022', 'Lớp 376', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('377', '-', '377', '-', '2018-2022', 'Lớp 377', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('378', '-', '378', '-', '2018-2022', 'Lớp 378', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('379', '-', '379', '-', '2018-2022', 'Lớp 379', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('38', '-', '38', '-', '2018-2022', 'Lớp 38', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('380', '-', '380', '-', '2018-2022', 'Lớp 380', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('381', '-', '381', '-', '2018-2022', 'Lớp 381', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('382', '-', '382', '-', '2018-2022', 'Lớp 382', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('383', '-', '383', '-', '2018-2022', 'Lớp 383', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('384', '-', '384', '-', '2018-2022', 'Lớp 384', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('385', '-', '385', '-', '2018-2022', 'Lớp 385', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('386', '-', '386', '-', '2018-2022', 'Lớp 386', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('387', '-', '387', '-', '2018-2022', 'Lớp 387', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('388', '-', '388', '-', '2018-2022', 'Lớp 388', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('389', '-', '389', '-', '2018-2022', 'Lớp 389', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('39', '-', '39', '-', '2018-2022', 'Lớp 39', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('390', '-', '390', '-', '2018-2022', 'Lớp 390', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('391', '-', '391', '-', '2018-2022', 'Lớp 391', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('392', '-', '392', '-', '2018-2022', 'Lớp 392', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('393', '-', '393', '-', '2018-2022', 'Lớp 393', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('394', '-', '394', '-', '2018-2022', 'Lớp 394', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('395', '-', '395', '-', '2018-2022', 'Lớp 395', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('396', '-', '396', '-', '2018-2022', 'Lớp 396', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('397', '-', '397', '-', '2018-2022', 'Lớp 397', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('398', '-', '398', '-', '2018-2022', 'Lớp 398', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('399', '-', '399', '-', '2018-2022', 'Lớp 399', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('4', '-', '4', '-', '2018-2022', 'Lớp 4', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('40', '-', '40', '-', '2018-2022', 'Lớp 40', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('400', '-', '400', '-', '2018-2022', 'Lớp 400', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('401', '-', '401', '-', '2018-2022', 'Lớp 401', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('402', '-', '402', '-', '2018-2022', 'Lớp 402', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('403', '-', '403', '-', '2018-2022', 'Lớp 403', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('404', '-', '404', '-', '2018-2022', 'Lớp 404', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('405', '-', '405', '-', '2018-2022', 'Lớp 405', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('406', '-', '406', '-', '2018-2022', 'Lớp 406', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('407', '-', '407', '-', '2018-2022', 'Lớp 407', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('408', '-', '408', '-', '2018-2022', 'Lớp 408', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('409', '-', '409', '-', '2018-2022', 'Lớp 409', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('41', '-', '41', '-', '2018-2022', 'Lớp 41', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('410', '-', '410', '-', '2018-2022', 'Lớp 410', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('411', '-', '411', '-', '2018-2022', 'Lớp 411', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('412', '-', '412', '-', '2018-2022', 'Lớp 412', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('413', '-', '413', '-', '2018-2022', 'Lớp 413', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('414', '-', '414', '-', '2018-2022', 'Lớp 414', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('415', '-', '415', '-', '2018-2022', 'Lớp 415', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('416', '-', '416', '-', '2018-2022', 'Lớp 416', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('417', '-', '417', '-', '2018-2022', 'Lớp 417', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('418', '-', '418', '-', '2018-2022', 'Lớp 418', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('419', '-', '419', '-', '2018-2022', 'Lớp 419', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('42', '-', '42', '-', '2018-2022', 'Lớp 42', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('420', '-', '420', '-', '2018-2022', 'Lớp 420', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('421', '-', '421', '-', '2018-2022', 'Lớp 421', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('422', '-', '422', '-', '2018-2022', 'Lớp 422', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('423', '-', '423', '-', '2018-2022', 'Lớp 423', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('424', '-', '424', '-', '2018-2022', 'Lớp 424', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('425', '-', '425', '-', '2018-2022', 'Lớp 425', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('426', '-', '426', '-', '2018-2022', 'Lớp 426', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('427', '-', '427', '-', '2018-2022', 'Lớp 427', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('428', '-', '428', '-', '2018-2022', 'Lớp 428', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('429', '-', '429', '-', '2018-2022', 'Lớp 429', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('43', '-', '43', '-', '2018-2022', 'Lớp 43', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('430', '-', '430', '-', '2018-2022', 'Lớp 430', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('431', '-', '431', '-', '2018-2022', 'Lớp 431', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('432', '-', '432', '-', '2018-2022', 'Lớp 432', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('433', '-', '433', '-', '2018-2022', 'Lớp 433', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('434', '-', '434', '-', '2018-2022', 'Lớp 434', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('435', '-', '435', '-', '2018-2022', 'Lớp 435', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('436', '-', '436', '-', '2018-2022', 'Lớp 436', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('437', '-', '437', '-', '2018-2022', 'Lớp 437', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('438', '-', '438', '-', '2018-2022', 'Lớp 438', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('439', '-', '439', '-', '2018-2022', 'Lớp 439', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('44', '-', '44', '-', '2018-2022', 'Lớp 44', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('440', '-', '440', '-', '2018-2022', 'Lớp 440', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('441', '-', '441', '-', '2018-2022', 'Lớp 441', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('442', '-', '442', '-', '2018-2022', 'Lớp 442', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('443', '-', '443', '-', '2018-2022', 'Lớp 443', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('444', '-', '444', '-', '2018-2022', 'Lớp 444', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('445', '-', '445', '-', '2018-2022', 'Lớp 445', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('446', '-', '446', '-', '2018-2022', 'Lớp 446', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('447', '-', '447', '-', '2018-2022', 'Lớp 447', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('448', '-', '448', '-', '2018-2022', 'Lớp 448', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('449', '-', '449', '-', '2018-2022', 'Lớp 449', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('45', '-', '45', '-', '2018-2022', 'Lớp 45', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('450', '-', '450', '-', '2018-2022', 'Lớp 450', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('451', '-', '451', '-', '2018-2022', 'Lớp 451', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('452', '-', '452', '-', '2018-2022', 'Lớp 452', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('453', '-', '453', '-', '2018-2022', 'Lớp 453', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('454', '-', '454', '-', '2018-2022', 'Lớp 454', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('455', '-', '455', '-', '2018-2022', 'Lớp 455', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('456', '-', '456', '-', '2018-2022', 'Lớp 456', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('457', '-', '457', '-', '2018-2022', 'Lớp 457', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('458', '-', '458', '-', '2018-2022', 'Lớp 458', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('459', '-', '459', '-', '2018-2022', 'Lớp 459', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('46', '-', '46', '-', '2018-2022', 'Lớp 46', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('460', '-', '460', '-', '2018-2022', 'Lớp 460', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('461', '-', '461', '-', '2018-2022', 'Lớp 461', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('462', '-', '462', '-', '2018-2022', 'Lớp 462', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('463', '-', '463', '-', '2018-2022', 'Lớp 463', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('464', '-', '464', '-', '2018-2022', 'Lớp 464', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('465', '-', '465', '-', '2018-2022', 'Lớp 465', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('466', '-', '466', '-', '2018-2022', 'Lớp 466', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('467', '-', '467', '-', '2018-2022', 'Lớp 467', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('468', '-', '468', '-', '2018-2022', 'Lớp 468', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('469', '-', '469', '-', '2018-2022', 'Lớp 469', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('47', '-', '47', '-', '2018-2022', 'Lớp 47', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('470', '-', '470', '-', '2018-2022', 'Lớp 470', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('471', '-', '471', '-', '2018-2022', 'Lớp 471', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('472', '-', '472', '-', '2018-2022', 'Lớp 472', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('473', '-', '473', '-', '2018-2022', 'Lớp 473', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('474', '-', '474', '-', '2018-2022', 'Lớp 474', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('475', '-', '475', '-', '2018-2022', 'Lớp 475', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('476', '-', '476', '-', '2018-2022', 'Lớp 476', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('477', '-', '477', '-', '2018-2022', 'Lớp 477', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('478', '-', '478', '-', '2018-2022', 'Lớp 478', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('479', '-', '479', '-', '2018-2022', 'Lớp 479', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('48', '-', '48', '-', '2018-2022', 'Lớp 48', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('480', '-', '480', '-', '2018-2022', 'Lớp 480', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('481', '-', '481', '-', '2018-2022', 'Lớp 481', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('482', '-', '482', '-', '2018-2022', 'Lớp 482', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('483', '-', '483', '-', '2018-2022', 'Lớp 483', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('484', '-', '484', '-', '2018-2022', 'Lớp 484', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('485', '-', '485', '-', '2018-2022', 'Lớp 485', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('486', '-', '486', '-', '2018-2022', 'Lớp 486', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('487', '-', '487', '-', '2018-2022', 'Lớp 487', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('488', '-', '488', '-', '2018-2022', 'Lớp 488', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('489', '-', '489', '-', '2018-2022', 'Lớp 489', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('49', '-', '49', '-', '2018-2022', 'Lớp 49', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('490', '-', '490', '-', '2018-2022', 'Lớp 490', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('491', '-', '491', '-', '2018-2022', 'Lớp 491', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('492', '-', '492', '-', '2018-2022', 'Lớp 492', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('493', '-', '493', '-', '2018-2022', 'Lớp 493', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('494', '-', '494', '-', '2018-2022', 'Lớp 494', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('495', '-', '495', '-', '2018-2022', 'Lớp 495', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('496', '-', '496', '-', '2018-2022', 'Lớp 496', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('497', '-', '497', '-', '2018-2022', 'Lớp 497', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('498', '-', '498', '-', '2018-2022', 'Lớp 498', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('499', '-', '499', '-', '2018-2022', 'Lớp 499', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('5', '-', '5', '-', '2018-2022', 'Lớp 5', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('50', '-', '50', '-', '2018-2022', 'Lớp 50', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('500', '-', '500', '-', '2018-2022', 'Lớp 500', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('501', '-', '501', '-', '2018-2022', 'Lớp 501', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('502', '-', '502', '-', '2018-2022', 'Lớp 502', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('503', '-', '503', '-', '2018-2022', 'Lớp 503', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('504', '-', '504', '-', '2018-2022', 'Lớp 504', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('505', '-', '505', '-', '2018-2022', 'Lớp 505', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('506', '-', '506', '-', '2018-2022', 'Lớp 506', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('507', '-', '507', '-', '2018-2022', 'Lớp 507', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('508', '-', '508', '-', '2018-2022', 'Lớp 508', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('509', '-', '509', '-', '2018-2022', 'Lớp 509', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('51', '-', '51', '-', '2018-2022', 'Lớp 51', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('510', '-', '510', '-', '2018-2022', 'Lớp 510', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('511', '-', '511', '-', '2018-2022', 'Lớp 511', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('512', '-', '512', '-', '2018-2022', 'Lớp 512', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('513', '-', '513', '-', '2018-2022', 'Lớp 513', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('514', '-', '514', '-', '2018-2022', 'Lớp 514', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('515', '-', '515', '-', '2018-2022', 'Lớp 515', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('516', '-', '516', '-', '2018-2022', 'Lớp 516', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('517', '-', '517', '-', '2018-2022', 'Lớp 517', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('518', '-', '518', '-', '2018-2022', 'Lớp 518', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('519', '-', '519', '-', '2018-2022', 'Lớp 519', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('52', '-', '52', '-', '2018-2022', 'Lớp 52', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('520', '-', '520', '-', '2018-2022', 'Lớp 520', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('521', '-', '521', '-', '2018-2022', 'Lớp 521', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('522', '-', '522', '-', '2018-2022', 'Lớp 522', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('523', '-', '523', '-', '2018-2022', 'Lớp 523', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('524', '-', '524', '-', '2018-2022', 'Lớp 524', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('525', '-', '525', '-', '2018-2022', 'Lớp 525', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('526', '-', '526', '-', '2018-2022', 'Lớp 526', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('527', '-', '527', '-', '2018-2022', 'Lớp 527', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('528', '-', '528', '-', '2018-2022', 'Lớp 528', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('529', '-', '529', '-', '2018-2022', 'Lớp 529', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('53', '-', '53', '-', '2018-2022', 'Lớp 53', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('530', '-', '530', '-', '2018-2022', 'Lớp 530', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('531', '-', '531', '-', '2018-2022', 'Lớp 531', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('532', '-', '532', '-', '2018-2022', 'Lớp 532', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('533', '-', '533', '-', '2018-2022', 'Lớp 533', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('534', '-', '534', '-', '2018-2022', 'Lớp 534', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('535', '-', '535', '-', '2018-2022', 'Lớp 535', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('536', '-', '536', '-', '2018-2022', 'Lớp 536', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('537', '-', '537', '-', '2018-2022', 'Lớp 537', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('538', '-', '538', '-', '2018-2022', 'Lớp 538', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('539', '-', '539', '-', '2018-2022', 'Lớp 539', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('54', '-', '54', '-', '2018-2022', 'Lớp 54', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('540', '-', '540', '-', '2018-2022', 'Lớp 540', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('541', '-', '541', '-', '2018-2022', 'Lớp 541', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('542', '-', '542', '-', '2018-2022', 'Lớp 542', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('543', '-', '543', '-', '2018-2022', 'Lớp 543', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('544', '-', '544', '-', '2018-2022', 'Lớp 544', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('545', '-', '545', '-', '2018-2022', 'Lớp 545', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('546', '-', '546', '-', '2018-2022', 'Lớp 546', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('547', '-', '547', '-', '2018-2022', 'Lớp 547', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('548', '-', '548', '-', '2018-2022', 'Lớp 548', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('549', '-', '549', '-', '2018-2022', 'Lớp 549', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('55', '-', '55', '-', '2018-2022', 'Lớp 55', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('550', '-', '550', '-', '2018-2022', 'Lớp 550', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('551', '-', '551', '-', '2018-2022', 'Lớp 551', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('552', '-', '552', '-', '2018-2022', 'Lớp 552', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('553', '-', '553', '-', '2018-2022', 'Lớp 553', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('554', '-', '554', '-', '2018-2022', 'Lớp 554', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('555', '-', '555', '-', '2018-2022', 'Lớp 555', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('556', '-', '556', '-', '2018-2022', 'Lớp 556', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('557', '-', '557', '-', '2018-2022', 'Lớp 557', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('558', '-', '558', '-', '2018-2022', 'Lớp 558', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('559', '-', '559', '-', '2018-2022', 'Lớp 559', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('56', '-', '56', '-', '2018-2022', 'Lớp 56', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('560', '-', '560', '-', '2018-2022', 'Lớp 560', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('561', '-', '561', '-', '2018-2022', 'Lớp 561', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('562', '-', '562', '-', '2018-2022', 'Lớp 562', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('563', '-', '563', '-', '2018-2022', 'Lớp 563', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('564', '-', '564', '-', '2018-2022', 'Lớp 564', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('565', '-', '565', '-', '2018-2022', 'Lớp 565', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('566', '-', '566', '-', '2018-2022', 'Lớp 566', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('567', '-', '567', '-', '2018-2022', 'Lớp 567', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('568', '-', '568', '-', '2018-2022', 'Lớp 568', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('569', '-', '569', '-', '2018-2022', 'Lớp 569', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('57', '-', '57', '-', '2018-2022', 'Lớp 57', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('570', '-', '570', '-', '2018-2022', 'Lớp 570', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('571', '-', '571', '-', '2018-2022', 'Lớp 571', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('572', '-', '572', '-', '2018-2022', 'Lớp 572', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('573', '-', '573', '-', '2018-2022', 'Lớp 573', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('574', '-', '574', '-', '2018-2022', 'Lớp 574', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('575', '-', '575', '-', '2018-2022', 'Lớp 575', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('576', '-', '576', '-', '2018-2022', 'Lớp 576', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('577', '-', '577', '-', '2018-2022', 'Lớp 577', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('578', '-', '578', '-', '2018-2022', 'Lớp 578', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('579', '-', '579', '-', '2018-2022', 'Lớp 579', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('58', '-', '58', '-', '2018-2022', 'Lớp 58', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('580', '-', '580', '-', '2018-2022', 'Lớp 580', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('581', '-', '581', '-', '2018-2022', 'Lớp 581', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('582', '-', '582', '-', '2018-2022', 'Lớp 582', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('583', '-', '583', '-', '2018-2022', 'Lớp 583', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('584', '-', '584', '-', '2018-2022', 'Lớp 584', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('585', '-', '585', '-', '2018-2022', 'Lớp 585', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('586', '-', '586', '-', '2018-2022', 'Lớp 586', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('587', '-', '587', '-', '2018-2022', 'Lớp 587', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('588', '-', '588', '-', '2018-2022', 'Lớp 588', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('589', '-', '589', '-', '2018-2022', 'Lớp 589', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('59', '-', '59', '-', '2018-2022', 'Lớp 59', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('590', '-', '590', '-', '2018-2022', 'Lớp 590', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('591', '-', '591', '-', '2018-2022', 'Lớp 591', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('592', '-', '592', '-', '2018-2022', 'Lớp 592', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('593', '-', '593', '-', '2018-2022', 'Lớp 593', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('594', '-', '594', '-', '2018-2022', 'Lớp 594', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('595', '-', '595', '-', '2018-2022', 'Lớp 595', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('596', '-', '596', '-', '2018-2022', 'Lớp 596', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('597', '-', '597', '-', '2018-2022', 'Lớp 597', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('598', '-', '598', '-', '2018-2022', 'Lớp 598', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('599', '-', '599', '-', '2018-2022', 'Lớp 599', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('6', '-', '6', '-', '2018-2022', 'Lớp 6', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('60', '-', '60', '-', '2018-2022', 'Lớp 60', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('600', '-', '600', '-', '2018-2022', 'Lớp 600', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('601', '-', '601', '-', '2018-2022', 'Lớp 601', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('602', '-', '602', '-', '2018-2022', 'Lớp 602', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('603', '-', '603', '-', '2018-2022', 'Lớp 603', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('604', '-', '604', '-', '2018-2022', 'Lớp 604', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('605', '-', '605', '-', '2018-2022', 'Lớp 605', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('606', '-', '606', '-', '2018-2022', 'Lớp 606', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('607', '-', '607', '-', '2018-2022', 'Lớp 607', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('608', '-', '608', '-', '2018-2022', 'Lớp 608', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('609', '-', '609', '-', '2018-2022', 'Lớp 609', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('61', '-', '61', '-', '2018-2022', 'Lớp 61', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('610', '-', '610', '-', '2018-2022', 'Lớp 610', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('611', '-', '611', '-', '2018-2022', 'Lớp 611', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('612', '-', '612', '-', '2018-2022', 'Lớp 612', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('613', '-', '613', '-', '2018-2022', 'Lớp 613', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('614', '-', '614', '-', '2018-2022', 'Lớp 614', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('615', '-', '615', '-', '2018-2022', 'Lớp 615', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('616', '-', '616', '-', '2018-2022', 'Lớp 616', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('617', '-', '617', '-', '2018-2022', 'Lớp 617', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('618', '-', '618', '-', '2018-2022', 'Lớp 618', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('619', '-', '619', '-', '2018-2022', 'Lớp 619', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('62', '-', '62', '-', '2018-2022', 'Lớp 62', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('620', '-', '620', '-', '2018-2022', 'Lớp 620', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('621', '-', '621', '-', '2018-2022', 'Lớp 621', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('622', '-', '622', '-', '2018-2022', 'Lớp 622', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('623', '-', '623', '-', '2018-2022', 'Lớp 623', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('624', '-', '624', '-', '2018-2022', 'Lớp 624', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('625', '-', '625', '-', '2018-2022', 'Lớp 625', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('626', '-', '626', '-', '2018-2022', 'Lớp 626', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('627', '-', '627', '-', '2018-2022', 'Lớp 627', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('628', '-', '628', '-', '2018-2022', 'Lớp 628', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('629', '-', '629', '-', '2018-2022', 'Lớp 629', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('63', '-', '63', '-', '2018-2022', 'Lớp 63', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('630', '-', '630', '-', '2018-2022', 'Lớp 630', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('631', '-', '631', '-', '2018-2022', 'Lớp 631', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('632', '-', '632', '-', '2018-2022', 'Lớp 632', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('633', '-', '633', '-', '2018-2022', 'Lớp 633', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('634', '-', '634', '-', '2018-2022', 'Lớp 634', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('635', '-', '635', '-', '2018-2022', 'Lớp 635', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('636', '-', '636', '-', '2018-2022', 'Lớp 636', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('637', '-', '637', '-', '2018-2022', 'Lớp 637', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('638', '-', '638', '-', '2018-2022', 'Lớp 638', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('639', '-', '639', '-', '2018-2022', 'Lớp 639', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('64', '-', '64', '-', '2018-2022', 'Lớp 64', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('640', '-', '640', '-', '2018-2022', 'Lớp 640', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('641', '-', '641', '-', '2018-2022', 'Lớp 641', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('642', '-', '642', '-', '2018-2022', 'Lớp 642', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('643', '-', '643', '-', '2018-2022', 'Lớp 643', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('644', '-', '644', '-', '2018-2022', 'Lớp 644', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('645', '-', '645', '-', '2018-2022', 'Lớp 645', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('646', '-', '646', '-', '2018-2022', 'Lớp 646', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('647', '-', '647', '-', '2018-2022', 'Lớp 647', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('648', '-', '648', '-', '2018-2022', 'Lớp 648', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('649', '-', '649', '-', '2018-2022', 'Lớp 649', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('65', '-', '65', '-', '2018-2022', 'Lớp 65', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('650', '-', '650', '-', '2018-2022', 'Lớp 650', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('651', '-', '651', '-', '2018-2022', 'Lớp 651', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('652', '-', '652', '-', '2018-2022', 'Lớp 652', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('653', '-', '653', '-', '2018-2022', 'Lớp 653', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('654', '-', '654', '-', '2018-2022', 'Lớp 654', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('655', '-', '655', '-', '2018-2022', 'Lớp 655', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('656', '-', '656', '-', '2018-2022', 'Lớp 656', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('657', '-', '657', '-', '2018-2022', 'Lớp 657', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('658', '-', '658', '-', '2018-2022', 'Lớp 658', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('659', '-', '659', '-', '2018-2022', 'Lớp 659', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('66', '-', '66', '-', '2018-2022', 'Lớp 66', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('660', '-', '660', '-', '2018-2022', 'Lớp 660', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('661', '-', '661', '-', '2018-2022', 'Lớp 661', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('662', '-', '662', '-', '2018-2022', 'Lớp 662', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('663', '-', '663', '-', '2018-2022', 'Lớp 663', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('664', '-', '664', '-', '2018-2022', 'Lớp 664', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('665', '-', '665', '-', '2018-2022', 'Lớp 665', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('666', '-', '666', '-', '2018-2022', 'Lớp 666', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('667', '-', '667', '-', '2018-2022', 'Lớp 667', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('668', '-', '668', '-', '2018-2022', 'Lớp 668', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('669', '-', '669', '-', '2018-2022', 'Lớp 669', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('67', '-', '67', '-', '2018-2022', 'Lớp 67', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('670', '-', '670', '-', '2018-2022', 'Lớp 670', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('671', '-', '671', '-', '2018-2022', 'Lớp 671', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('672', '-', '672', '-', '2018-2022', 'Lớp 672', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('673', '-', '673', '-', '2018-2022', 'Lớp 673', '2018-05-01 11:05:51', NULL);
INSERT INTO `lop` VALUES ('674', '-', '674', '-', '2018-2022', 'Lớp 674', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('675', '-', '675', '-', '2018-2022', 'Lớp 675', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('676', '-', '676', '-', '2018-2022', 'Lớp 676', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('677', '-', '677', '-', '2018-2022', 'Lớp 677', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('678', '-', '678', '-', '2018-2022', 'Lớp 678', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('679', '-', '679', '-', '2018-2022', 'Lớp 679', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('68', '-', '68', '-', '2018-2022', 'Lớp 68', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('680', '-', '680', '-', '2018-2022', 'Lớp 680', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('681', '-', '681', '-', '2018-2022', 'Lớp 681', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('682', '-', '682', '-', '2018-2022', 'Lớp 682', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('683', '-', '683', '-', '2018-2022', 'Lớp 683', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('684', '-', '684', '-', '2018-2022', 'Lớp 684', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('685', '-', '685', '-', '2018-2022', 'Lớp 685', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('686', '-', '686', '-', '2018-2022', 'Lớp 686', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('687', '-', '687', '-', '2018-2022', 'Lớp 687', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('688', '-', '688', '-', '2018-2022', 'Lớp 688', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('689', '-', '689', '-', '2018-2022', 'Lớp 689', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('69', '-', '69', '-', '2018-2022', 'Lớp 69', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('690', '-', '690', '-', '2018-2022', 'Lớp 690', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('691', '-', '691', '-', '2018-2022', 'Lớp 691', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('692', '-', '692', '-', '2018-2022', 'Lớp 692', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('693', '-', '693', '-', '2018-2022', 'Lớp 693', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('694', '-', '694', '-', '2018-2022', 'Lớp 694', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('695', '-', '695', '-', '2018-2022', 'Lớp 695', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('696', '-', '696', '-', '2018-2022', 'Lớp 696', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('697', '-', '697', '-', '2018-2022', 'Lớp 697', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('698', '-', '698', '-', '2018-2022', 'Lớp 698', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('699', '-', '699', '-', '2018-2022', 'Lớp 699', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('7', '-', '7', '-', '2018-2022', 'Lớp 7', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('70', '-', '70', '-', '2018-2022', 'Lớp 70', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('700', '-', '700', '-', '2018-2022', 'Lớp 700', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('701', '-', '701', '-', '2018-2022', 'Lớp 701', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('702', '-', '702', '-', '2018-2022', 'Lớp 702', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('703', '-', '703', '-', '2018-2022', 'Lớp 703', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('704', '-', '704', '-', '2018-2022', 'Lớp 704', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('705', '-', '705', '-', '2018-2022', 'Lớp 705', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('706', '-', '706', '-', '2018-2022', 'Lớp 706', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('707', '-', '707', '-', '2018-2022', 'Lớp 707', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('708', '-', '708', '-', '2018-2022', 'Lớp 708', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('709', '-', '709', '-', '2018-2022', 'Lớp 709', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('71', '-', '71', '-', '2018-2022', 'Lớp 71', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('710', '-', '710', '-', '2018-2022', 'Lớp 710', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('711', '-', '711', '-', '2018-2022', 'Lớp 711', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('712', '-', '712', '-', '2018-2022', 'Lớp 712', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('713', '-', '713', '-', '2018-2022', 'Lớp 713', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('714', '-', '714', '-', '2018-2022', 'Lớp 714', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('715', '-', '715', '-', '2018-2022', 'Lớp 715', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('716', '-', '716', '-', '2018-2022', 'Lớp 716', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('717', '-', '717', '-', '2018-2022', 'Lớp 717', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('718', '-', '718', '-', '2018-2022', 'Lớp 718', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('719', '-', '719', '-', '2018-2022', 'Lớp 719', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('72', '-', '72', '-', '2018-2022', 'Lớp 72', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('720', '-', '720', '-', '2018-2022', 'Lớp 720', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('721', '-', '721', '-', '2018-2022', 'Lớp 721', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('722', '-', '722', '-', '2018-2022', 'Lớp 722', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('723', '-', '723', '-', '2018-2022', 'Lớp 723', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('724', '-', '724', '-', '2018-2022', 'Lớp 724', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('725', '-', '725', '-', '2018-2022', 'Lớp 725', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('726', '-', '726', '-', '2018-2022', 'Lớp 726', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('727', '-', '727', '-', '2018-2022', 'Lớp 727', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('728', '-', '728', '-', '2018-2022', 'Lớp 728', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('729', '-', '729', '-', '2018-2022', 'Lớp 729', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('73', '-', '73', '-', '2018-2022', 'Lớp 73', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('730', '-', '730', '-', '2018-2022', 'Lớp 730', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('731', '-', '731', '-', '2018-2022', 'Lớp 731', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('732', '-', '732', '-', '2018-2022', 'Lớp 732', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('733', '-', '733', '-', '2018-2022', 'Lớp 733', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('734', '-', '734', '-', '2018-2022', 'Lớp 734', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('735', '-', '735', '-', '2018-2022', 'Lớp 735', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('736', '-', '736', '-', '2018-2022', 'Lớp 736', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('737', '-', '737', '-', '2018-2022', 'Lớp 737', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('738', '-', '738', '-', '2018-2022', 'Lớp 738', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('739', '-', '739', '-', '2018-2022', 'Lớp 739', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('74', '-', '74', '-', '2018-2022', 'Lớp 74', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('740', '-', '740', '-', '2018-2022', 'Lớp 740', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('741', '-', '741', '-', '2018-2022', 'Lớp 741', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('742', '-', '742', '-', '2018-2022', 'Lớp 742', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('743', '-', '743', '-', '2018-2022', 'Lớp 743', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('744', '-', '744', '-', '2018-2022', 'Lớp 744', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('745', '-', '745', '-', '2018-2022', 'Lớp 745', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('746', '-', '746', '-', '2018-2022', 'Lớp 746', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('747', '-', '747', '-', '2018-2022', 'Lớp 747', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('748', '-', '748', '-', '2018-2022', 'Lớp 748', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('749', '-', '749', '-', '2018-2022', 'Lớp 749', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('75', '-', '75', '-', '2018-2022', 'Lớp 75', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('750', '-', '750', '-', '2018-2022', 'Lớp 750', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('751', '-', '751', '-', '2018-2022', 'Lớp 751', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('752', '-', '752', '-', '2018-2022', 'Lớp 752', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('753', '-', '753', '-', '2018-2022', 'Lớp 753', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('754', '-', '754', '-', '2018-2022', 'Lớp 754', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('755', '-', '755', '-', '2018-2022', 'Lớp 755', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('756', '-', '756', '-', '2018-2022', 'Lớp 756', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('757', '-', '757', '-', '2018-2022', 'Lớp 757', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('758', '-', '758', '-', '2018-2022', 'Lớp 758', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('759', '-', '759', '-', '2018-2022', 'Lớp 759', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('76', '-', '76', '-', '2018-2022', 'Lớp 76', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('760', '-', '760', '-', '2018-2022', 'Lớp 760', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('761', '-', '761', '-', '2018-2022', 'Lớp 761', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('762', '-', '762', '-', '2018-2022', 'Lớp 762', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('763', '-', '763', '-', '2018-2022', 'Lớp 763', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('764', '-', '764', '-', '2018-2022', 'Lớp 764', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('765', '-', '765', '-', '2018-2022', 'Lớp 765', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('766', '-', '766', '-', '2018-2022', 'Lớp 766', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('767', '-', '767', '-', '2018-2022', 'Lớp 767', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('768', '-', '768', '-', '2018-2022', 'Lớp 768', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('769', '-', '769', '-', '2018-2022', 'Lớp 769', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('77', '-', '77', '-', '2018-2022', 'Lớp 77', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('770', '-', '770', '-', '2018-2022', 'Lớp 770', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('771', '-', '771', '-', '2018-2022', 'Lớp 771', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('772', '-', '772', '-', '2018-2022', 'Lớp 772', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('773', '-', '773', '-', '2018-2022', 'Lớp 773', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('774', '-', '774', '-', '2018-2022', 'Lớp 774', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('775', '-', '775', '-', '2018-2022', 'Lớp 775', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('776', '-', '776', '-', '2018-2022', 'Lớp 776', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('777', '-', '777', '-', '2018-2022', 'Lớp 777', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('778', '-', '778', '-', '2018-2022', 'Lớp 778', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('779', '-', '779', '-', '2018-2022', 'Lớp 779', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('78', '-', '78', '-', '2018-2022', 'Lớp 78', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('780', '-', '780', '-', '2018-2022', 'Lớp 780', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('781', '-', '781', '-', '2018-2022', 'Lớp 781', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('782', '-', '782', '-', '2018-2022', 'Lớp 782', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('783', '-', '783', '-', '2018-2022', 'Lớp 783', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('784', '-', '784', '-', '2018-2022', 'Lớp 784', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('785', '-', '785', '-', '2018-2022', 'Lớp 785', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('786', '-', '786', '-', '2018-2022', 'Lớp 786', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('787', '-', '787', '-', '2018-2022', 'Lớp 787', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('788', '-', '788', '-', '2018-2022', 'Lớp 788', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('789', '-', '789', '-', '2018-2022', 'Lớp 789', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('79', '-', '79', '-', '2018-2022', 'Lớp 79', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('790', '-', '790', '-', '2018-2022', 'Lớp 790', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('791', '-', '791', '-', '2018-2022', 'Lớp 791', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('792', '-', '792', '-', '2018-2022', 'Lớp 792', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('793', '-', '793', '-', '2018-2022', 'Lớp 793', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('794', '-', '794', '-', '2018-2022', 'Lớp 794', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('795', '-', '795', '-', '2018-2022', 'Lớp 795', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('796', '-', '796', '-', '2018-2022', 'Lớp 796', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('797', '-', '797', '-', '2018-2022', 'Lớp 797', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('798', '-', '798', '-', '2018-2022', 'Lớp 798', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('799', '-', '799', '-', '2018-2022', 'Lớp 799', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('8', '-', '8', '-', '2018-2022', 'Lớp 8', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('80', '-', '80', '-', '2018-2022', 'Lớp 80', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('800', '-', '800', '-', '2018-2022', 'Lớp 800', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('801', '-', '801', '-', '2018-2022', 'Lớp 801', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('802', '-', '802', '-', '2018-2022', 'Lớp 802', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('803', '-', '803', '-', '2018-2022', 'Lớp 803', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('804', '-', '804', '-', '2018-2022', 'Lớp 804', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('805', '-', '805', '-', '2018-2022', 'Lớp 805', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('806', '-', '806', '-', '2018-2022', 'Lớp 806', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('807', '-', '807', '-', '2018-2022', 'Lớp 807', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('808', '-', '808', '-', '2018-2022', 'Lớp 808', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('809', '-', '809', '-', '2018-2022', 'Lớp 809', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('81', '-', '81', '-', '2018-2022', 'Lớp 81', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('810', '-', '810', '-', '2018-2022', 'Lớp 810', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('811', '-', '811', '-', '2018-2022', 'Lớp 811', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('812', '-', '812', '-', '2018-2022', 'Lớp 812', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('813', '-', '813', '-', '2018-2022', 'Lớp 813', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('814', '-', '814', '-', '2018-2022', 'Lớp 814', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('815', '-', '815', '-', '2018-2022', 'Lớp 815', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('816', '-', '816', '-', '2018-2022', 'Lớp 816', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('817', '-', '817', '-', '2018-2022', 'Lớp 817', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('818', '-', '818', '-', '2018-2022', 'Lớp 818', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('819', '-', '819', '-', '2018-2022', 'Lớp 819', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('82', '-', '82', '-', '2018-2022', 'Lớp 82', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('820', '-', '820', '-', '2018-2022', 'Lớp 820', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('821', '-', '821', '-', '2018-2022', 'Lớp 821', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('822', '-', '822', '-', '2018-2022', 'Lớp 822', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('823', '-', '823', '-', '2018-2022', 'Lớp 823', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('824', '-', '824', '-', '2018-2022', 'Lớp 824', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('825', '-', '825', '-', '2018-2022', 'Lớp 825', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('826', '-', '826', '-', '2018-2022', 'Lớp 826', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('827', '-', '827', '-', '2018-2022', 'Lớp 827', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('828', '-', '828', '-', '2018-2022', 'Lớp 828', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('829', '-', '829', '-', '2018-2022', 'Lớp 829', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('83', '-', '83', '-', '2018-2022', 'Lớp 83', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('830', '-', '830', '-', '2018-2022', 'Lớp 830', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('831', '-', '831', '-', '2018-2022', 'Lớp 831', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('832', '-', '832', '-', '2018-2022', 'Lớp 832', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('833', '-', '833', '-', '2018-2022', 'Lớp 833', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('834', '-', '834', '-', '2018-2022', 'Lớp 834', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('835', '-', '835', '-', '2018-2022', 'Lớp 835', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('836', '-', '836', '-', '2018-2022', 'Lớp 836', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('837', '-', '837', '-', '2018-2022', 'Lớp 837', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('838', '-', '838', '-', '2018-2022', 'Lớp 838', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('839', '-', '839', '-', '2018-2022', 'Lớp 839', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('84', '-', '84', '-', '2018-2022', 'Lớp 84', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('840', '-', '840', '-', '2018-2022', 'Lớp 840', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('841', '-', '841', '-', '2018-2022', 'Lớp 841', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('842', '-', '842', '-', '2018-2022', 'Lớp 842', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('843', '-', '843', '-', '2018-2022', 'Lớp 843', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('844', '-', '844', '-', '2018-2022', 'Lớp 844', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('845', '-', '845', '-', '2018-2022', 'Lớp 845', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('846', '-', '846', '-', '2018-2022', 'Lớp 846', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('847', '-', '847', '-', '2018-2022', 'Lớp 847', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('848', '-', '848', '-', '2018-2022', 'Lớp 848', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('849', '-', '849', '-', '2018-2022', 'Lớp 849', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('85', '-', '85', '-', '2018-2022', 'Lớp 85', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('850', '-', '850', '-', '2018-2022', 'Lớp 850', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('851', '-', '851', '-', '2018-2022', 'Lớp 851', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('852', '-', '852', '-', '2018-2022', 'Lớp 852', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('853', '-', '853', '-', '2018-2022', 'Lớp 853', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('854', '-', '854', '-', '2018-2022', 'Lớp 854', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('855', '-', '855', '-', '2018-2022', 'Lớp 855', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('856', '-', '856', '-', '2018-2022', 'Lớp 856', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('857', '-', '857', '-', '2018-2022', 'Lớp 857', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('858', '-', '858', '-', '2018-2022', 'Lớp 858', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('859', '-', '859', '-', '2018-2022', 'Lớp 859', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('86', '-', '86', '-', '2018-2022', 'Lớp 86', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('860', '-', '860', '-', '2018-2022', 'Lớp 860', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('861', '-', '861', '-', '2018-2022', 'Lớp 861', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('862', '-', '862', '-', '2018-2022', 'Lớp 862', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('863', '-', '863', '-', '2018-2022', 'Lớp 863', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('864', '-', '864', '-', '2018-2022', 'Lớp 864', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('865', '-', '865', '-', '2018-2022', 'Lớp 865', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('866', '-', '866', '-', '2018-2022', 'Lớp 866', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('867', '-', '867', '-', '2018-2022', 'Lớp 867', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('868', '-', '868', '-', '2018-2022', 'Lớp 868', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('869', '-', '869', '-', '2018-2022', 'Lớp 869', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('87', '-', '87', '-', '2018-2022', 'Lớp 87', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('870', '-', '870', '-', '2018-2022', 'Lớp 870', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('871', '-', '871', '-', '2018-2022', 'Lớp 871', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('872', '-', '872', '-', '2018-2022', 'Lớp 872', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('873', '-', '873', '-', '2018-2022', 'Lớp 873', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('874', '-', '874', '-', '2018-2022', 'Lớp 874', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('875', '-', '875', '-', '2018-2022', 'Lớp 875', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('876', '-', '876', '-', '2018-2022', 'Lớp 876', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('877', '-', '877', '-', '2018-2022', 'Lớp 877', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('878', '-', '878', '-', '2018-2022', 'Lớp 878', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('879', '-', '879', '-', '2018-2022', 'Lớp 879', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('88', '-', '88', '-', '2018-2022', 'Lớp 88', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('880', '-', '880', '-', '2018-2022', 'Lớp 880', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('881', '-', '881', '-', '2018-2022', 'Lớp 881', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('882', '-', '882', '-', '2018-2022', 'Lớp 882', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('883', '-', '883', '-', '2018-2022', 'Lớp 883', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('884', '-', '884', '-', '2018-2022', 'Lớp 884', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('885', '-', '885', '-', '2018-2022', 'Lớp 885', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('886', '-', '886', '-', '2018-2022', 'Lớp 886', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('887', '-', '887', '-', '2018-2022', 'Lớp 887', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('888', '-', '888', '-', '2018-2022', 'Lớp 888', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('889', '-', '889', '-', '2018-2022', 'Lớp 889', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('89', '-', '89', '-', '2018-2022', 'Lớp 89', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('890', '-', '890', '-', '2018-2022', 'Lớp 890', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('891', '-', '891', '-', '2018-2022', 'Lớp 891', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('892', '-', '892', '-', '2018-2022', 'Lớp 892', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('893', '-', '893', '-', '2018-2022', 'Lớp 893', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('894', '-', '894', '-', '2018-2022', 'Lớp 894', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('895', '-', '895', '-', '2018-2022', 'Lớp 895', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('896', '-', '896', '-', '2018-2022', 'Lớp 896', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('897', '-', '897', '-', '2018-2022', 'Lớp 897', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('898', '-', '898', '-', '2018-2022', 'Lớp 898', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('899', '-', '899', '-', '2018-2022', 'Lớp 899', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('9', '-', '9', '-', '2018-2022', 'Lớp 9', '2018-05-01 11:05:49', NULL);
INSERT INTO `lop` VALUES ('90', '-', '90', '-', '2018-2022', 'Lớp 90', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('900', '-', '900', '-', '2018-2022', 'Lớp 900', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('901', '-', '901', '-', '2018-2022', 'Lớp 901', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('902', '-', '902', '-', '2018-2022', 'Lớp 902', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('903', '-', '903', '-', '2018-2022', 'Lớp 903', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('904', '-', '904', '-', '2018-2022', 'Lớp 904', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('905', '-', '905', '-', '2018-2022', 'Lớp 905', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('906', '-', '906', '-', '2018-2022', 'Lớp 906', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('907', '-', '907', '-', '2018-2022', 'Lớp 907', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('908', '-', '908', '-', '2018-2022', 'Lớp 908', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('909', '-', '909', '-', '2018-2022', 'Lớp 909', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('91', '-', '91', '-', '2018-2022', 'Lớp 91', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('910', '-', '910', '-', '2018-2022', 'Lớp 910', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('911', '-', '911', '-', '2018-2022', 'Lớp 911', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('912', '-', '912', '-', '2018-2022', 'Lớp 912', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('913', '-', '913', '-', '2018-2022', 'Lớp 913', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('914', '-', '914', '-', '2018-2022', 'Lớp 914', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('915', '-', '915', '-', '2018-2022', 'Lớp 915', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('916', '-', '916', '-', '2018-2022', 'Lớp 916', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('917', '-', '917', '-', '2018-2022', 'Lớp 917', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('918', '-', '918', '-', '2018-2022', 'Lớp 918', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('919', '-', '919', '-', '2018-2022', 'Lớp 919', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('92', '-', '92', '-', '2018-2022', 'Lớp 92', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('920', '-', '920', '-', '2018-2022', 'Lớp 920', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('921', '-', '921', '-', '2018-2022', 'Lớp 921', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('922', '-', '922', '-', '2018-2022', 'Lớp 922', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('923', '-', '923', '-', '2018-2022', 'Lớp 923', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('924', '-', '924', '-', '2018-2022', 'Lớp 924', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('925', '-', '925', '-', '2018-2022', 'Lớp 925', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('926', '-', '926', '-', '2018-2022', 'Lớp 926', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('927', '-', '927', '-', '2018-2022', 'Lớp 927', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('928', '-', '928', '-', '2018-2022', 'Lớp 928', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('929', '-', '929', '-', '2018-2022', 'Lớp 929', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('93', '-', '93', '-', '2018-2022', 'Lớp 93', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('930', '-', '930', '-', '2018-2022', 'Lớp 930', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('931', '-', '931', '-', '2018-2022', 'Lớp 931', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('932', '-', '932', '-', '2018-2022', 'Lớp 932', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('933', '-', '933', '-', '2018-2022', 'Lớp 933', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('934', '-', '934', '-', '2018-2022', 'Lớp 934', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('935', '-', '935', '-', '2018-2022', 'Lớp 935', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('936', '-', '936', '-', '2018-2022', 'Lớp 936', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('937', '-', '937', '-', '2018-2022', 'Lớp 937', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('938', '-', '938', '-', '2018-2022', 'Lớp 938', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('939', '-', '939', '-', '2018-2022', 'Lớp 939', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('94', '-', '94', '-', '2018-2022', 'Lớp 94', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('940', '-', '940', '-', '2018-2022', 'Lớp 940', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('941', '-', '941', '-', '2018-2022', 'Lớp 941', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('942', '-', '942', '-', '2018-2022', 'Lớp 942', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('943', '-', '943', '-', '2018-2022', 'Lớp 943', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('944', '-', '944', '-', '2018-2022', 'Lớp 944', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('945', '-', '945', '-', '2018-2022', 'Lớp 945', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('946', '-', '946', '-', '2018-2022', 'Lớp 946', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('947', '-', '947', '-', '2018-2022', 'Lớp 947', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('948', '-', '948', '-', '2018-2022', 'Lớp 948', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('949', '-', '949', '-', '2018-2022', 'Lớp 949', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('95', '-', '95', '-', '2018-2022', 'Lớp 95', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('950', '-', '950', '-', '2018-2022', 'Lớp 950', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('951', '-', '951', '-', '2018-2022', 'Lớp 951', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('952', '-', '952', '-', '2018-2022', 'Lớp 952', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('953', '-', '953', '-', '2018-2022', 'Lớp 953', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('954', '-', '954', '-', '2018-2022', 'Lớp 954', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('955', '-', '955', '-', '2018-2022', 'Lớp 955', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('956', '-', '956', '-', '2018-2022', 'Lớp 956', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('957', '-', '957', '-', '2018-2022', 'Lớp 957', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('958', '-', '958', '-', '2018-2022', 'Lớp 958', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('959', '-', '959', '-', '2018-2022', 'Lớp 959', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('96', '-', '96', '-', '2018-2022', 'Lớp 96', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('960', '-', '960', '-', '2018-2022', 'Lớp 960', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('961', '-', '961', '-', '2018-2022', 'Lớp 961', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('962', '-', '962', '-', '2018-2022', 'Lớp 962', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('963', '-', '963', '-', '2018-2022', 'Lớp 963', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('964', '-', '964', '-', '2018-2022', 'Lớp 964', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('965', '-', '965', '-', '2018-2022', 'Lớp 965', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('966', '-', '966', '-', '2018-2022', 'Lớp 966', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('967', '-', '967', '-', '2018-2022', 'Lớp 967', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('968', '-', '968', '-', '2018-2022', 'Lớp 968', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('969', '-', '969', '-', '2018-2022', 'Lớp 969', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('97', '-', '97', '-', '2018-2022', 'Lớp 97', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('970', '-', '970', '-', '2018-2022', 'Lớp 970', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('971', '-', '971', '-', '2018-2022', 'Lớp 971', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('972', '-', '972', '-', '2018-2022', 'Lớp 972', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('973', '-', '973', '-', '2018-2022', 'Lớp 973', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('974', '-', '974', '-', '2018-2022', 'Lớp 974', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('975', '-', '975', '-', '2018-2022', 'Lớp 975', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('976', '-', '976', '-', '2018-2022', 'Lớp 976', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('977', '-', '977', '-', '2018-2022', 'Lớp 977', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('978', '-', '978', '-', '2018-2022', 'Lớp 978', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('979', '-', '979', '-', '2018-2022', 'Lớp 979', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('98', '-', '98', '-', '2018-2022', 'Lớp 98', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('980', '-', '980', '-', '2018-2022', 'Lớp 980', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('981', '-', '981', '-', '2018-2022', 'Lớp 981', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('982', '-', '982', '-', '2018-2022', 'Lớp 982', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('983', '-', '983', '-', '2018-2022', 'Lớp 983', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('984', '-', '984', '-', '2018-2022', 'Lớp 984', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('985', '-', '985', '-', '2018-2022', 'Lớp 985', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('986', '-', '986', '-', '2018-2022', 'Lớp 986', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('987', '-', '987', '-', '2018-2022', 'Lớp 987', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('988', '-', '988', '-', '2018-2022', 'Lớp 988', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('989', '-', '989', '-', '2018-2022', 'Lớp 989', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('99', '-', '99', '-', '2018-2022', 'Lớp 99', '2018-05-01 11:05:50', NULL);
INSERT INTO `lop` VALUES ('990', '-', '990', '-', '2018-2022', 'Lớp 990', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('991', '-', '991', '-', '2018-2022', 'Lớp 991', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('992', '-', '992', '-', '2018-2022', 'Lớp 992', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('993', '-', '993', '-', '2018-2022', 'Lớp 993', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('994', '-', '994', '-', '2018-2022', 'Lớp 994', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('995', '-', '995', '-', '2018-2022', 'Lớp 995', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('996', '-', '996', '-', '2018-2022', 'Lớp 996', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('997', '-', '997', '-', '2018-2022', 'Lớp 997', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('998', '-', '998', '-', '2018-2022', 'Lớp 998', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('999', '-', '999', '-', '2018-2022', 'Lớp 999', '2018-05-01 11:05:52', NULL);
INSERT INTO `lop` VALUES ('A', '<p>\r\n	A</p>\r\n', 'A', '<p>\r\n	A</p>\r\n', 'A', 'A', '2018-05-01 23:14:58', NULL);
INSERT INTO `lop` VALUES ('B', '<p>\r\n	B</p>\r\n', 'B', '<p>\r\n	B</p>\r\n', 'B', 'B', '2018-05-01 23:18:07', 'DV01');
INSERT INTO `lop` VALUES ('C', '<p>\r\n	C</p>\r\n', 'C', '<p>\r\n	C</p>\r\n', 'C', 'C', '2018-05-01 23:21:17', 'DV02');
INSERT INTO `lop` VALUES ('D', '<p>\r\n	D</p>\r\n', 'D', '<p>\r\n	D</p>\r\n', 'E', 'D', '2018-05-01 23:47:44', NULL);
INSERT INTO `lop` VALUES ('DD', '<p>\r\n	DD</p>\r\n', 'D', '<p>\r\n	DD</p>\r\n', 'DD', 'DD', '2018-05-01 23:53:33', NULL);
INSERT INTO `lop` VALUES ('zzzz', 'zz', 'zz', 'zzz', 'â', 'â', '2018-05-02 09:02:16', NULL);

-- ----------------------------
-- Table structure for namhoc
-- ----------------------------
DROP TABLE IF EXISTS `namhoc`;
CREATE TABLE `namhoc`  (
  `maNamHoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ngayBatDau` datetime NULL DEFAULT NULL,
  `ngayKetThuc` datetime NULL DEFAULT NULL,
  `tenNamHoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`maNamHoc`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of namhoc
-- ----------------------------
INSERT INTO `namhoc` VALUES ('2013-2014', '', '', '2013-09-01 00:00:00', '2014-08-30 00:00:00', '2013-2014', '2018-05-02 13:58:22');
INSERT INTO `namhoc` VALUES ('2014-2015', '', '', '2014-09-01 00:00:00', '2015-08-30 00:00:00', '2014-2015', '2018-05-02 13:58:24');
INSERT INTO `namhoc` VALUES ('2015-2016', '', '', '2015-09-01 00:00:00', '2016-08-30 00:00:00', '2015-2016', '2018-05-02 13:58:25');
INSERT INTO `namhoc` VALUES ('2016-2017', '', '', '2016-09-01 00:00:00', '2017-08-30 00:00:00', '2016-2017', '2018-05-02 13:58:26');
INSERT INTO `namhoc` VALUES ('2017-2018', '', '', '2017-09-01 00:00:00', '2018-08-30 00:00:00', '2017-2018', '2018-05-02 13:58:27');
INSERT INTO `namhoc` VALUES ('2018-2019', '', '', '2018-09-01 00:00:00', '2019-08-30 00:00:00', '2018-2019', '2018-05-02 13:58:28');

-- ----------------------------
-- Table structure for nhanvien
-- ----------------------------
DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien`  (
  `maNhanVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bacLuong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chucVu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `congViecChinhDuocGiao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dacDiemLichSuBanThan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `danToc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `danhHieuDuocPhongTangCaoNhat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diaChiBaoTin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diaChiLienHe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gioiTinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `heSo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hoKhauThuongTru` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hoanCanhKinhTeGiaDinh` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `khenThuong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `kyLuat` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `laConGiaDinhChinhSach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laConThuongBinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lyLuanChinhTri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maNgach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ngachCongChuc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngayCapCMND` datetime NULL DEFAULT NULL,
  `ngayCapHoChieu` datetime NULL DEFAULT NULL,
  `ngayHuong` datetime NULL DEFAULT NULL,
  `ngayNhapNgu` datetime NULL DEFAULT NULL,
  `ngaySinh` datetime NULL DEFAULT NULL,
  `ngayTuyenDung` datetime NULL DEFAULT NULL,
  `ngayVaoDangChinhThuc` datetime NULL DEFAULT NULL,
  `ngayVaoDangDuBi` datetime NULL DEFAULT NULL,
  `ngayXuatNgu` datetime NULL DEFAULT NULL,
  `ngheNghiepTruocKhiTuyenDung` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngoaiNgu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nhanXetDanhGiaCuaCoQuan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `noiCapCMND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noiCapHoChieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noiOHienTai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noiSinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quaTrinhCongTac` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quaTrinhDaoTao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quanHamCaoNhat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quanHeVoiGiaDinh` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quanLyNhaNuoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `queQuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soCMND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soDienThoaiCoQuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soDienThoaiDiDong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soHoChieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soSoBaoHiemXaHoi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soTruongCongTac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenNhanVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thamGiaToChucChinhTriXaHoi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `tinHoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tinhTrangSucKhoe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tonGiao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trinhDoChuyenMonCaoNhat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trinhDoGiaoDucPhoThong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `donVi_maDonVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maNhanVien`) USING BTREE,
  INDEX `FKCFE09AC3614A4900`(`donVi_maDonVi`) USING BTREE,
  CONSTRAINT `FKCFE09AC3614A4900` FOREIGN KEY (`donVi_maDonVi`) REFERENCES `donvi` (`maDonVi`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nhanvien
-- ----------------------------
INSERT INTO `nhanvien` VALUES ('001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tungit07@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Le Nhat Tung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DV01');

-- ----------------------------
-- Table structure for nhomphanquyen
-- ----------------------------
DROP TABLE IF EXISTS `nhomphanquyen`;
CREATE TABLE `nhomphanquyen`  (
  `maNhomPhanQuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tenNhomPhanQuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`maNhomPhanQuyen`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nhomphanquyen
-- ----------------------------
INSERT INTO `nhomphanquyen` VALUES ('giangvien', NULL, NULL, 'Giảng viên', NULL);

-- ----------------------------
-- Table structure for nhomphanquyen_chucnang
-- ----------------------------
DROP TABLE IF EXISTS `nhomphanquyen_chucnang`;
CREATE TABLE `nhomphanquyen_chucnang`  (
  `maNhomPhanQuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maChucNang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`maNhomPhanQuyen`, `maChucNang`) USING BTREE,
  INDEX `FKB4A9D6DD2A3A677F`(`maNhomPhanQuyen`) USING BTREE,
  INDEX `FKB4A9D6DDAD493641`(`maChucNang`) USING BTREE,
  CONSTRAINT `FKB4A9D6DDAD493641` FOREIGN KEY (`maChucNang`) REFERENCES `chucnang` (`maChucNang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKB4A9D6DD2A3A677F` FOREIGN KEY (`maNhomPhanQuyen`) REFERENCES `nhomphanquyen` (`maNhomPhanQuyen`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nhomphanquyen_chucnang
-- ----------------------------
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN0');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN0 0');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN0 1');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN0 2');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN1');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN1 0');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN2');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN2 0');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN3');
INSERT INTO `nhomphanquyen_chucnang` VALUES ('giangvien', 'CN3 0');

-- ----------------------------
-- Table structure for sinhvien
-- ----------------------------
DROP TABLE IF EXISTS `sinhvien`;
CREATE TABLE `sinhvien`  (
  `maSinhVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bhtn_thamgia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bhyt_maBenhVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bhyt_maTinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bhyt_tenBenhVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bthn_sothang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `daKhaiPhieuQuanLySinhVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `daNhapHoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diaChiKhiCanBaoTinChoAi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diaChiNhanThu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diemMon1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diemMon2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diemMon3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diemUuTien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dienThoaiCoDinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dienThoaiDiDong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dienThoaiGiaDinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doiTuong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emailPhuHuynh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gioiTinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hoDem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hoKhauThuongTru` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khiCanBaoTinChoAi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khuVuc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maChuyenNganh1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maChuyenNganh2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maDanToc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maPhuongXa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maQuanHuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maQuocTich` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maSoHinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maThanhPhanGiaDinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maTinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maTonGiao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `namTotNghiepTHPT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngayCap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngaySinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngayVaoDang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngayVaoDoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ngheNghiepTruocKhiVaoTruong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noiCap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `noiSinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quenQuan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soBaoDanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soCMND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenNganhTrungTuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thanhPhanGiaDinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thiTHPTNgay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `thongTinBaoTin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toNghiepTaiTruongTHPT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tongDiem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xepLoaiDaoDuc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xepLoaiVanHoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lop_maLop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maSinhVien`) USING BTREE,
  INDEX `FK2207296CF890A8E5`(`lop_maLop`) USING BTREE,
  CONSTRAINT `FK2207296CF890A8E5` FOREIGN KEY (`lop_maLop`) REFERENCES `lop` (`maLop`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE `taikhoan`  (
  `DTYPE` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `maDangNhap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anhDaiDien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cauHoiBiMat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghiChu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hoVaTen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loaiTaiKhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `matKhau` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `moTa` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ngayCapNhatMatKhau` datetime NULL DEFAULT NULL,
  `ngayTao` datetime NULL DEFAULT NULL,
  `thoiGianCapNhat` datetime NULL DEFAULT NULL,
  `traLoiCauHoiBiMat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangThaiHoatDong` bit(1) NOT NULL,
  `nhomPhanQuyen_maNhomPhanQuyen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nhanVien_maNhanVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sinhVien_maSinhVien` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maDangNhap`) USING BTREE,
  INDEX `FKD89DDC4310DDB661`(`nhomPhanQuyen_maNhomPhanQuyen`) USING BTREE,
  INDEX `FKD89DDC43C722B0C5`(`nhanVien_maNhanVien`) USING BTREE,
  INDEX `FKD89DDC4338AABCE`(`sinhVien_maSinhVien`) USING BTREE,
  CONSTRAINT `FKD89DDC4338AABCE` FOREIGN KEY (`sinhVien_maSinhVien`) REFERENCES `sinhvien` (`maSinhVien`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKD89DDC4310DDB661` FOREIGN KEY (`nhomPhanQuyen_maNhomPhanQuyen`) REFERENCES `nhomphanquyen` (`maNhomPhanQuyen`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKD89DDC43C722B0C5` FOREIGN KEY (`nhanVien_maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of taikhoan
-- ----------------------------
INSERT INTO `taikhoan` VALUES ('TaiKhoanNhanVien', 'tungit07@gmail.com', NULL, NULL, 'tungit07@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, b'0', 'giangvien', '001', NULL);

SET FOREIGN_KEY_CHECKS = 1;
