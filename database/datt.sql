-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 22, 2023 lúc 07:41 PM
-- Phiên bản máy phục vụ: 8.0.27
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin_user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor', 7, 'add_doctor'),
(26, 'Can change doctor', 7, 'change_doctor'),
(27, 'Can delete doctor', 7, 'delete_doctor'),
(28, 'Can view doctor', 7, 'view_doctor'),
(29, 'Can add receptionist', 8, 'add_receptionist'),
(30, 'Can change receptionist', 8, 'change_receptionist'),
(31, 'Can delete receptionist', 8, 'delete_receptionist'),
(32, 'Can view receptionist', 8, 'view_receptionist'),
(33, 'Can add patient', 9, 'add_patient'),
(34, 'Can change patient', 9, 'change_patient'),
(35, 'Can delete patient', 9, 'delete_patient'),
(36, 'Can view patient', 9, 'view_patient'),
(37, 'Can add medicalappointmentschedule', 10, 'add_medicalappointmentschedule'),
(38, 'Can change medicalappointmentschedule', 10, 'change_medicalappointmentschedule'),
(39, 'Can delete medicalappointmentschedule', 10, 'delete_medicalappointmentschedule'),
(40, 'Can view medicalappointmentschedule', 10, 'view_medicalappointmentschedule'),
(41, 'Can add historypatient', 11, 'add_historypatient'),
(42, 'Can change historypatient', 11, 'change_historypatient'),
(43, 'Can delete historypatient', 11, 'delete_historypatient'),
(44, 'Can view historypatient', 11, 'view_historypatient'),
(45, 'Can add diseases', 12, 'add_diseases'),
(46, 'Can change diseases', 12, 'change_diseases'),
(47, 'Can delete diseases', 12, 'delete_diseases'),
(48, 'Can view diseases', 12, 'view_diseases'),
(49, 'Can add diseaseprogression', 13, 'add_diseaseprogression'),
(50, 'Can change diseaseprogression', 13, 'change_diseaseprogression'),
(51, 'Can delete diseaseprogression', 13, 'delete_diseaseprogression'),
(52, 'Can view diseaseprogression', 13, 'view_diseaseprogression'),
(53, 'Can add comment', 14, 'add_comment'),
(54, 'Can change comment', 14, 'change_comment'),
(55, 'Can delete comment', 14, 'delete_comment'),
(56, 'Can view comment', 14, 'view_comment');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$CJGiq9LhTrCw$FAqzZbEV4d1Xp+4WwsIgGPQgEn2BM5kxWp+120TcYjw=', '2023-07-20 00:47:22.470322', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-06-28 10:45:54.132627'),
(2, 'pbkdf2_sha256$150000$aoFvcjttkjHv$Q/DqlcL1GgquqCT/naOAfiFgXyjJJpxQDciXJauaz4Y=', NULL, 0, 'NgoManhDat', 'Ngo', 'Dat', 'ngodat@gmail.com', 0, 1, '2023-06-28 10:57:51.000000'),
(3, 'pbkdf2_sha256$150000$Nw5KfwYqd8J1$pnrfvKQvg4eEm9v5loZmgfW+FKGeLQ4WUHsIUIYZzOI=', '2023-07-03 10:24:52.000000', 0, 'admin1', 'manh', 'duong', 'testdoctor@gmail.com', 0, 1, '2023-07-03 10:23:28.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(6, 2, 13),
(7, 2, 14),
(9, 2, 15),
(8, 2, 16),
(13, 2, 25),
(14, 2, 26),
(15, 2, 27),
(16, 2, 28),
(1, 2, 33),
(2, 2, 34),
(3, 2, 35),
(4, 2, 36),
(5, 2, 45),
(10, 2, 46),
(11, 2, 47),
(12, 2, 48),
(17, 3, 1),
(18, 3, 2),
(19, 3, 3),
(20, 3, 4),
(21, 3, 5),
(22, 3, 6),
(23, 3, 7),
(24, 3, 8),
(25, 3, 9),
(26, 3, 10),
(27, 3, 11),
(28, 3, 12),
(29, 3, 13),
(30, 3, 14),
(31, 3, 15),
(32, 3, 16),
(33, 3, 17),
(34, 3, 18),
(35, 3, 19),
(36, 3, 20),
(37, 3, 21),
(38, 3, 22),
(39, 3, 23),
(40, 3, 24),
(41, 3, 25),
(42, 3, 26),
(43, 3, 27),
(44, 3, 28),
(45, 3, 29),
(46, 3, 30),
(47, 3, 31),
(48, 3, 32),
(49, 3, 33),
(50, 3, 34),
(51, 3, 35),
(52, 3, 36),
(53, 3, 37),
(54, 3, 38),
(55, 3, 39),
(56, 3, 40),
(57, 3, 41),
(58, 3, 42),
(59, 3, 43),
(60, 3, 44),
(61, 3, 45),
(62, 3, 46),
(63, 3, 47),
(64, 3, 48),
(65, 3, 49),
(66, 3, 50),
(67, 3, 51),
(68, 3, 52),
(69, 3, 53),
(70, 3, 54),
(71, 3, 55),
(72, 3, 56);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-28 10:48:50.464816', '1', 'tranbahung', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-06-28 10:51:56.806118', '1', 'Đào Mẫu Sơn', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-28 10:53:55.194496', '1', 'Gãy xương ống chân', 1, '[{\"added\": {}}]', 14, 1),
(4, '2023-06-28 10:57:51.576676', '2', 'NgoManhDat', 1, '[{\"added\": {}}]', 4, 1),
(5, '2023-06-28 11:00:48.814050', '2', 'NgoManhDat', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"user_permissions\"]}}]', 4, 1),
(6, '2023-06-28 11:01:20.646403', '1', 'admin_user', 1, '[{\"added\": {}}]', 3, 1),
(7, '2023-06-28 11:08:34.236796', '2', 'vuongvu', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-06-29 12:05:09.949638', '1', 'Gãy xương ống chân', 2, '[{\"changed\": {\"fields\": [\"MRIImages\"]}}]', 14, 1),
(9, '2023-07-02 15:15:11.893913', '2', 'U não', 1, '[{\"added\": {}}]', 14, 1),
(10, '2023-07-02 15:27:01.494339', '1', 'Gãy xương ống chân', 2, '[]', 14, 1),
(11, '2023-07-02 15:41:58.294341', '3', 'Gãy xương ống chân', 1, '[{\"added\": {}}]', 14, 1),
(12, '2023-07-02 15:43:40.282525', '4', 'U não', 1, '[{\"added\": {}}]', 14, 1),
(13, '2023-07-02 17:05:20.512263', '5', 'test1', 1, '[{\"added\": {}}]', 14, 1),
(14, '2023-07-02 17:11:06.863867', '6', 'nhu asds', 1, '[{\"added\": {}}]', 14, 1),
(15, '2023-07-02 17:15:36.987461', '7', 'asdsd', 1, '[{\"added\": {}}]', 14, 1),
(16, '2023-07-03 10:23:28.670612', '3', 'admin1', 1, '[{\"added\": {}}]', 4, 1),
(17, '2023-07-03 10:24:57.272465', '3', 'admin1', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\", \"user_permissions\", \"last_login\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'myadmin', 'comment'),
(13, 'myadmin', 'diseaseprogression'),
(12, 'myadmin', 'diseases'),
(7, 'myadmin', 'doctor'),
(11, 'myadmin', 'historypatient'),
(10, 'myadmin', 'medicalappointmentschedule'),
(9, 'myadmin', 'patient'),
(8, 'myadmin', 'receptionist'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-28 10:44:42.016286'),
(2, 'auth', '0001_initial', '2023-06-28 10:44:42.195332'),
(3, 'admin', '0001_initial', '2023-06-28 10:44:42.806519'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-28 10:44:42.939563'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-28 10:44:42.956566'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-28 10:44:43.085855'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-28 10:44:43.194064'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-28 10:44:43.256594'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-28 10:44:43.267596'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-28 10:44:43.342557'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-28 10:44:43.346554'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-28 10:44:43.361558'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-28 10:44:43.449083'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-28 10:44:43.524092'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-28 10:44:43.561604'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-28 10:44:43.579605'),
(17, 'myadmin', '0001_initial', '2023-06-28 10:44:43.846180'),
(18, 'myadmin', '0002_auto_20230628_1744', '2023-06-28 10:44:44.555457'),
(19, 'sessions', '0001_initial', '2023-06-28 10:44:44.592464');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('66l1vtjx1kvnzx1wo38cczzwh6ov5muk', 'ZTZlNzIzMTk2MTIwODhmNzhlNDNjZGMyMGEyMzhiODJmOWI0NmZmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWI1NDVlNDhkY2E0MWM3NGMwZTFkYWQ4ZWNjMDA3NTU5NmNmNWE4In0=', '2023-07-17 10:20:27.705353'),
('p9iucqng9rj37xe3q8gx0u59wi79n2py', 'ZTZlNzIzMTk2MTIwODhmNzhlNDNjZGMyMGEyMzhiODJmOWI0NmZmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWI1NDVlNDhkY2E0MWM3NGMwZTFkYWQ4ZWNjMDA3NTU5NmNmNWE4In0=', '2023-07-12 10:46:13.207541'),
('sol68zdra8bixq4m1t1la105ntc9rily', 'ZTZlNzIzMTk2MTIwODhmNzhlNDNjZGMyMGEyMzhiODJmOWI0NmZmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOWI1NDVlNDhkY2E0MWM3NGMwZTFkYWQ4ZWNjMDA3NTU5NmNmNWE4In0=', '2023-08-03 00:47:22.514327');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_comment`
--

CREATE TABLE `myadmin_comment` (
  `id` int NOT NULL,
  `NameOfDisease` varchar(255) NOT NULL,
  `MRIImages` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ResultByAI` longtext NOT NULL,
  `Date` datetime(6) NOT NULL,
  `ResultByDoctor` longtext NOT NULL,
  `DoctorID_id` int NOT NULL,
  `PatientID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `myadmin_comment`
--

INSERT INTO `myadmin_comment` (`id`, `NameOfDisease`, `MRIImages`, `ResultByAI`, `Date`, `ResultByDoctor`, `DoctorID_id`, `PatientID_id`) VALUES
(1, 'Gãy xương ống chân', 'image.jpg', 'Blala', '2023-06-14 06:12:04.000000', 'Gãy đâu ra :)))', 1, 1),
(2, 'U não', '56-562038_kaito-kid-chibi.jpg', 'sssssssssssss', '2023-07-11 18:00:00.000000', 'áddddddddddas', 1, 1),
(3, 'Gãy xương ống chân', '925715.png', 'sjfsbf', '2023-07-03 00:00:00.000000', 'aksdbcbs', 1, 1),
(4, 'U não', '650814.jpg', 'U não', '2023-07-25 18:00:00.000000', 'U não vùng thùy chán', 2, 1),
(5, 'test1', 'uploads/1079551.png', 'asdsdad', '2023-06-07 18:00:00.000000', 'test', 1, 1),
(6, 'nhu asds', 'uploads/hinh-nen-conan-edogawa-dep-59.jpg', 'asdasdsad', '2023-07-10 06:00:00.000000', 'lmlkmlm;,;lmn', 1, 1),
(7, 'asdsd', NULL, '54631213', '2023-07-11 06:00:00.000000', 'bhbkj', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_diseaseprogression`
--

CREATE TABLE `myadmin_diseaseprogression` (
  `id` int NOT NULL,
  `CurrentStatus` varchar(255) NOT NULL,
  `MedicationDosage` varchar(255) NOT NULL,
  `DiseaseDevelopment` varchar(255) NOT NULL,
  `PatientID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_diseases`
--

CREATE TABLE `myadmin_diseases` (
  `id` int NOT NULL,
  `NameDiseases` varchar(255) NOT NULL,
  `DoctorID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_doctor`
--

CREATE TABLE `myadmin_doctor` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `NameLogin` varchar(255) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Faculty` varchar(255) NOT NULL,
  `Image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `myadmin_doctor`
--

INSERT INTO `myadmin_doctor` (`id`, `name`, `NameLogin`, `Password`, `Faculty`, `Image`) VALUES
(1, 'Hùng', 'tranbahung', '123', 'Khoa chấn thương', '348382368_204687862456450_7305862485491703971_n.jpg'),
(2, 'Vương Thừa Vũ', 'vuongvu', '123', 'Khoa tim', '1011910.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_historypatient`
--

CREATE TABLE `myadmin_historypatient` (
  `id` int NOT NULL,
  `Symptoms` varchar(255) NOT NULL,
  `PreExamResults` varchar(255) NOT NULL,
  `PreExamDate` datetime(6) NOT NULL,
  `PatientID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_medicalappointmentschedule`
--

CREATE TABLE `myadmin_medicalappointmentschedule` (
  `id` int NOT NULL,
  `Time` datetime(6) NOT NULL,
  `Address` longtext NOT NULL,
  `Note` longtext NOT NULL,
  `ClinicForPatients` varchar(255) NOT NULL,
  `DoctorID_id` int NOT NULL,
  `ReceptionistID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_patient`
--

CREATE TABLE `myadmin_patient` (
  `id` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `DateOfBirth` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ExamDate` datetime(6) NOT NULL,
  `DoctorID_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `myadmin_patient`
--

INSERT INTO `myadmin_patient` (`id`, `Name`, `DateOfBirth`, `Image`, `ExamDate`, `DoctorID_id`) VALUES
(1, 'Đào Mẫu Sơn', '2022-01-04', '1011170.png', '2023-06-13 10:51:45.000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myadmin_receptionist`
--

CREATE TABLE `myadmin_receptionist` (
  `id` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `NameLogin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `myadmin_comment`
--
ALTER TABLE `myadmin_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_comment_DoctorID_id_79b3b6d0_fk_myadmin_doctor_id` (`DoctorID_id`),
  ADD KEY `myadmin_comment_PatientID_id_d8de9159_fk_myadmin_patient_id` (`PatientID_id`);

--
-- Chỉ mục cho bảng `myadmin_diseaseprogression`
--
ALTER TABLE `myadmin_diseaseprogression`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_diseaseprogr_PatientID_id_d04577c3_fk_myadmin_p` (`PatientID_id`);

--
-- Chỉ mục cho bảng `myadmin_diseases`
--
ALTER TABLE `myadmin_diseases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_diseases_DoctorID_id_481917d2_fk_myadmin_doctor_id` (`DoctorID_id`);

--
-- Chỉ mục cho bảng `myadmin_doctor`
--
ALTER TABLE `myadmin_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `myadmin_historypatient`
--
ALTER TABLE `myadmin_historypatient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_historypatie_PatientID_id_91afb222_fk_myadmin_p` (`PatientID_id`);

--
-- Chỉ mục cho bảng `myadmin_medicalappointmentschedule`
--
ALTER TABLE `myadmin_medicalappointmentschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_medicalappoi_DoctorID_id_ec4b4936_fk_myadmin_d` (`DoctorID_id`),
  ADD KEY `myadmin_medicalappoi_ReceptionistID_id_b4874eb8_fk_myadmin_r` (`ReceptionistID_id`);

--
-- Chỉ mục cho bảng `myadmin_patient`
--
ALTER TABLE `myadmin_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_patient_DoctorID_id_7aae7bd9_fk_myadmin_doctor_id` (`DoctorID_id`);

--
-- Chỉ mục cho bảng `myadmin_receptionist`
--
ALTER TABLE `myadmin_receptionist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `myadmin_comment`
--
ALTER TABLE `myadmin_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `myadmin_diseaseprogression`
--
ALTER TABLE `myadmin_diseaseprogression`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `myadmin_diseases`
--
ALTER TABLE `myadmin_diseases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `myadmin_doctor`
--
ALTER TABLE `myadmin_doctor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `myadmin_historypatient`
--
ALTER TABLE `myadmin_historypatient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `myadmin_medicalappointmentschedule`
--
ALTER TABLE `myadmin_medicalappointmentschedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `myadmin_patient`
--
ALTER TABLE `myadmin_patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `myadmin_receptionist`
--
ALTER TABLE `myadmin_receptionist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_comment`
--
ALTER TABLE `myadmin_comment`
  ADD CONSTRAINT `myadmin_comment_DoctorID_id_79b3b6d0_fk_myadmin_doctor_id` FOREIGN KEY (`DoctorID_id`) REFERENCES `myadmin_doctor` (`id`),
  ADD CONSTRAINT `myadmin_comment_PatientID_id_d8de9159_fk_myadmin_patient_id` FOREIGN KEY (`PatientID_id`) REFERENCES `myadmin_patient` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_diseaseprogression`
--
ALTER TABLE `myadmin_diseaseprogression`
  ADD CONSTRAINT `myadmin_diseaseprogr_PatientID_id_d04577c3_fk_myadmin_p` FOREIGN KEY (`PatientID_id`) REFERENCES `myadmin_patient` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_diseases`
--
ALTER TABLE `myadmin_diseases`
  ADD CONSTRAINT `myadmin_diseases_DoctorID_id_481917d2_fk_myadmin_doctor_id` FOREIGN KEY (`DoctorID_id`) REFERENCES `myadmin_doctor` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_historypatient`
--
ALTER TABLE `myadmin_historypatient`
  ADD CONSTRAINT `myadmin_historypatie_PatientID_id_91afb222_fk_myadmin_p` FOREIGN KEY (`PatientID_id`) REFERENCES `myadmin_patient` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_medicalappointmentschedule`
--
ALTER TABLE `myadmin_medicalappointmentschedule`
  ADD CONSTRAINT `myadmin_medicalappoi_DoctorID_id_ec4b4936_fk_myadmin_d` FOREIGN KEY (`DoctorID_id`) REFERENCES `myadmin_doctor` (`id`),
  ADD CONSTRAINT `myadmin_medicalappoi_ReceptionistID_id_b4874eb8_fk_myadmin_r` FOREIGN KEY (`ReceptionistID_id`) REFERENCES `myadmin_receptionist` (`id`);

--
-- Các ràng buộc cho bảng `myadmin_patient`
--
ALTER TABLE `myadmin_patient`
  ADD CONSTRAINT `myadmin_patient_DoctorID_id_7aae7bd9_fk_myadmin_doctor_id` FOREIGN KEY (`DoctorID_id`) REFERENCES `myadmin_doctor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
