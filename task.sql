-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2021 at 10:08 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add teacher_login_informa', 7, 'add_teacher_login_informa'),
(26, 'Can change teacher_login_informa', 7, 'change_teacher_login_informa'),
(27, 'Can delete teacher_login_informa', 7, 'delete_teacher_login_informa'),
(28, 'Can view teacher_login_informa', 7, 'view_teacher_login_informa'),
(29, 'Can add student_courses_with_ teacher_name', 8, 'add_student_courses_with_teacher_name'),
(30, 'Can change student_courses_with_ teacher_name', 8, 'change_student_courses_with_teacher_name'),
(31, 'Can delete student_courses_with_ teacher_name', 8, 'delete_student_courses_with_teacher_name'),
(32, 'Can view student_courses_with_ teacher_name', 8, 'view_student_courses_with_teacher_name'),
(33, 'Can add student_login_informatn', 9, 'add_student_login_informatn'),
(34, 'Can change student_login_informatn', 9, 'change_student_login_informatn'),
(35, 'Can delete student_login_informatn', 9, 'delete_student_login_informatn'),
(36, 'Can view student_login_informatn', 9, 'view_student_login_informatn'),
(37, 'Can add grade_ student', 10, 'add_grade_student'),
(38, 'Can change grade_ student', 10, 'change_grade_student'),
(39, 'Can delete grade_ student', 10, 'delete_grade_student'),
(40, 'Can view grade_ student', 10, 'view_grade_student'),
(41, 'Can add student_ submit_ assignment_pro', 11, 'add_student_submit_assignment_pro'),
(42, 'Can change student_ submit_ assignment_pro', 11, 'change_student_submit_assignment_pro'),
(43, 'Can delete student_ submit_ assignment_pro', 11, 'delete_student_submit_assignment_pro'),
(44, 'Can view student_ submit_ assignment_pro', 11, 'view_student_submit_assignment_pro'),
(45, 'Can add assignment_ comments', 12, 'add_assignment_comments'),
(46, 'Can change assignment_ comments', 12, 'change_assignment_comments'),
(47, 'Can delete assignment_ comments', 12, 'delete_assignment_comments'),
(48, 'Can view assignment_ comments', 12, 'view_assignment_comments'),
(49, 'Can add teacher_ assignment_upload_ file', 13, 'add_teacher_assignment_upload_file'),
(50, 'Can change teacher_ assignment_upload_ file', 13, 'change_teacher_assignment_upload_file'),
(51, 'Can delete teacher_ assignment_upload_ file', 13, 'delete_teacher_assignment_upload_file'),
(52, 'Can view teacher_ assignment_upload_ file', 13, 'view_teacher_assignment_upload_file');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$flmMPQfULxQkc9dMWeDB8W$n7BKhid62ChNvrYf3vWu02B55seYkwe3r8XhumpDbHI=', '2021-07-12 11:32:32.666435', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-05-08 08:48:42.338994');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-08 08:51:17.159075', '1', 'bca3', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-05-08 08:52:02.411641', '1', 'Bachelor of Computer Application', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-05-08 08:52:11.652077', '1', 'nobeldavis@bca', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-05-08 08:52:58.563508', '1', 'nobeldavis@bca', 2, '[]', 9, 1),
(5, '2021-05-08 09:03:43.862282', '1', 'asdf', 1, '[{\"added\": {}}]', 13, 1),
(6, '2021-05-08 09:43:04.352809', '1', 'BCA 3rd Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(7, '2021-05-09 07:18:29.001320', '17', '23452354....  by Nobel Davis', 3, '', 12, 1),
(8, '2021-05-09 07:18:29.013901', '16', 'd....  by Nobel Davis', 3, '', 12, 1),
(9, '2021-05-09 07:18:29.016558', '15', 'dddddd....  by Nobel Davis', 3, '', 12, 1),
(10, '2021-05-09 07:18:29.020468', '14', 'sdfgsdfgdsfg....  by Nobel Davis', 3, '', 12, 1),
(11, '2021-05-09 07:18:29.023820', '13', 'sdfgsdfgdsfg....  by Nobel Davis', 3, '', 12, 1),
(12, '2021-05-09 07:18:29.027109', '12', 's....  by Nobel Davis', 3, '', 12, 1),
(13, '2021-05-09 07:18:29.028706', '11', 's....  by Nobel Davis', 3, '', 12, 1),
(14, '2021-05-09 07:18:29.029790', '10', 'd....  by Nobel Davis', 3, '', 12, 1),
(15, '2021-05-09 07:18:29.030840', '9', 'd....  by Nobel Davis', 3, '', 12, 1),
(16, '2021-05-09 07:18:29.032545', '8', 'd....  by Nobel Davis', 3, '', 12, 1),
(17, '2021-05-09 07:18:29.033855', '7', 'd....  by Nobel Davis', 3, '', 12, 1),
(18, '2021-05-09 07:18:29.035518', '6', 'd....  by Nobel Davis', 3, '', 12, 1),
(19, '2021-05-09 07:18:29.036594', '5', 'd....  by Nobel Davis', 3, '', 12, 1),
(20, '2021-05-09 07:18:29.037753', '4', 's....  by Nobel Davis', 3, '', 12, 1),
(21, '2021-05-09 07:18:29.038737', '3', 'd....  by Nobel Davis', 3, '', 12, 1),
(22, '2021-05-09 07:18:29.039730', '2', 'dfsdfsdf....  by Nobel Davis', 3, '', 12, 1),
(23, '2021-05-09 07:18:29.040702', '1', 'hello....  by Nobel Davis', 3, '', 12, 1),
(24, '2021-05-09 07:18:37.284406', '2', 'nobeldavis@bca', 3, '', 10, 1),
(25, '2021-05-09 07:18:37.323408', '1', 'nobeldavis@bca', 3, '', 10, 1),
(26, '2021-05-09 07:18:44.026385', '2', 'Student_Submit_Assignment_pro object (2)', 3, '', 11, 1),
(27, '2021-05-09 07:18:44.068473', '1', 'Student_Submit_Assignment_pro object (1)', 3, '', 11, 1),
(28, '2021-05-13 09:22:19.726291', '3', 'hhhh', 1, '[{\"added\": {}}]', 13, 1),
(29, '2021-07-09 07:45:10.496597', '2', 'BCA 2nd Year', 1, '[{\"added\": {}}]', 8, 1),
(30, '2021-07-09 07:46:45.795775', '1', 'BCA 1 Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(31, '2021-07-09 07:59:21.969400', '6', 'Student_Submit_Assignment_pro object (6)', 3, '', 11, 1),
(32, '2021-07-09 07:59:21.987004', '5', 'Student_Submit_Assignment_pro object (5)', 3, '', 11, 1),
(33, '2021-07-09 07:59:21.996999', '4', 'Student_Submit_Assignment_pro object (4)', 3, '', 11, 1),
(34, '2021-07-09 07:59:22.007729', '3', 'Student_Submit_Assignment_pro object (3)', 3, '', 11, 1),
(35, '2021-07-09 07:59:28.849389', '2', 'BCA 2nd Year', 3, '', 8, 1),
(36, '2021-07-09 07:59:28.857658', '1', 'BCA 1 Year', 3, '', 8, 1),
(37, '2021-07-09 07:59:38.150473', '5', 'bold2', 3, '', 13, 1),
(38, '2021-07-09 07:59:38.156195', '4', 'bold', 3, '', 13, 1),
(39, '2021-07-09 07:59:45.568577', '1', 'bca3', 3, '', 7, 1),
(40, '2021-07-09 08:00:26.386002', '2', 'mareena', 1, '[{\"added\": {}}]', 7, 1),
(41, '2021-07-09 08:00:37.492171', '3', 'jom', 1, '[{\"added\": {}}]', 7, 1),
(42, '2021-07-09 08:01:10.101128', '3', 'jom', 3, '', 7, 1),
(43, '2021-07-09 08:01:10.117035', '2', 'mareena', 3, '', 7, 1),
(44, '2021-07-09 08:01:37.346424', '4', 'bca3', 1, '[{\"added\": {}}]', 7, 1),
(45, '2021-07-09 08:01:40.269798', '3', 'BCA 3rd Year', 1, '[{\"added\": {}}]', 8, 1),
(46, '2021-07-09 08:02:41.907803', '5', 'bca2', 1, '[{\"added\": {}}]', 7, 1),
(47, '2021-07-09 08:02:44.625886', '4', 'BCA 2nd Year', 1, '[{\"added\": {}}]', 8, 1),
(48, '2021-07-09 08:03:16.881202', '2', 'nobeldavis@bca', 1, '[{\"added\": {}}]', 9, 1),
(49, '2021-07-09 08:04:08.395281', '4', 'BCA 2018-21 2nd Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(50, '2021-07-09 08:04:30.028547', '3', 'BCA 32018-21 rd Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(51, '2021-07-09 08:04:39.536266', '3', 'BCA 32018-21 3rd Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(52, '2021-07-09 08:04:47.384115', '3', 'BCA 2018-21 3rd Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(53, '2021-07-09 08:05:09.741679', '2', 'nobeldavis@bca', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 9, 1),
(54, '2021-07-09 08:05:37.252593', '2', 'nobeldavis@bca', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 9, 1),
(55, '2021-07-09 08:09:32.485616', '2', 'nobeldavis@bca', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 9, 1),
(56, '2021-07-09 08:10:37.724034', '2', 'nobeldavis@bca', 2, '[]', 9, 1),
(57, '2021-07-09 08:10:58.723103', '3', 'BCA 2018-21 4thj Year', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(58, '2021-07-09 08:11:30.435726', '4', 'BCA 2018-21 2nd Year', 3, '', 8, 1),
(59, '2021-07-09 08:11:30.451031', '3', 'BCA 2018-21 4thj Year', 3, '', 8, 1),
(60, '2021-07-09 08:12:01.771670', '5', 'BCA 2018-21 2nd Year', 1, '[{\"added\": {}}]', 8, 1),
(61, '2021-07-09 08:12:13.212455', '3', 'nobeldavis@bca', 1, '[{\"added\": {}}]', 9, 1),
(62, '2021-07-09 08:13:05.964459', '6', 'BCA 2018-21 3rd Year', 1, '[{\"added\": {}}]', 8, 1),
(63, '2021-07-09 08:13:23.261934', '6', 'BCA 2018-21 3rd Year', 3, '', 8, 1),
(64, '2021-07-09 08:13:35.820211', '5', 'BCA 2018-21 3rd Year', 2, '[{\"changed\": {\"fields\": [\"Course\", \"Teacher ID\"]}}]', 8, 1),
(65, '2021-07-09 08:19:54.401767', '5', 'BCA 2018-21', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 8, 1),
(66, '2021-07-09 08:26:42.620882', '5', 'BCA 2018-21', 2, '[{\"changed\": {\"fields\": [\"Teacher ID\"]}}]', 8, 1),
(67, '2021-07-09 08:27:18.794721', '6', 'bcom', 1, '[{\"added\": {}}]', 7, 1),
(68, '2021-07-09 08:27:20.149321', '7', 'BCom', 1, '[{\"added\": {}}]', 8, 1),
(69, '2021-07-09 08:27:49.772541', '4', 'sayana@bcom', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'schoolapp', 'assignment_comments'),
(10, 'schoolapp', 'grade_student'),
(8, 'schoolapp', 'student_courses_with_teacher_name'),
(9, 'schoolapp', 'student_login_informatn'),
(11, 'schoolapp', 'student_submit_assignment_pro'),
(13, 'schoolapp', 'teacher_assignment_upload_file'),
(7, 'schoolapp', 'teacher_login_informa'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-06 07:44:37.774878'),
(2, 'auth', '0001_initial', '2021-05-06 07:44:37.995725'),
(3, 'admin', '0001_initial', '2021-05-06 07:44:38.050252'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-06 07:44:38.063088'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-06 07:44:38.074073'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-06 07:44:38.108180'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-06 07:44:38.132739'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-06 07:44:38.146185'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-06 07:44:38.155812'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-06 07:44:38.178832'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-06 07:44:38.181130'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-06 07:44:38.192278'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-06 07:44:38.205624'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-06 07:44:38.218086'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-06 07:44:38.231783'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-06 07:44:38.243355'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-06 07:44:38.258098'),
(18, 'schoolapp', '0001_initial', '2021-05-06 07:44:38.334123'),
(19, 'schoolapp', '0002_teacher_login_infor', '2021-05-06 07:44:38.341694'),
(20, 'schoolapp', '0003_delete_teacher_login_infor', '2021-05-06 07:44:38.345465'),
(21, 'schoolapp', '0004_student_course_with_teacher_name', '2021-05-06 07:44:38.354905'),
(22, 'schoolapp', '0005_student_login_informa', '2021-05-06 07:44:38.381253'),
(23, 'schoolapp', '0006_auto_20201206_1046', '2021-05-06 07:44:38.409462'),
(24, 'schoolapp', '0007_teacher_login_informa', '2021-05-06 07:44:38.419808'),
(25, 'schoolapp', '0008_delete_teacher_login_information', '2021-05-06 07:44:38.424751'),
(26, 'schoolapp', '0009_student_courses_with_teacher_name', '2021-05-06 07:44:38.449296'),
(27, 'schoolapp', '0010_auto_20201207_0918', '2021-05-06 07:44:38.482156'),
(28, 'schoolapp', '0011_auto_20201207_0921', '2021-05-06 07:44:38.514646'),
(29, 'schoolapp', '0012_student_login_informatn', '2021-05-06 07:44:38.538693'),
(30, 'schoolapp', '0013_auto_20201207_0930', '2021-05-06 07:44:38.577075'),
(31, 'schoolapp', '0014_upload_file', '2021-05-06 07:44:38.595497'),
(32, 'schoolapp', '0015_auto_20201207_1826', '2021-05-06 07:44:38.616197'),
(33, 'schoolapp', '0016_auto_20201207_1828', '2021-05-06 07:44:38.626189'),
(34, 'schoolapp', '0017_auto_20201207_1847', '2021-05-06 07:44:38.658078'),
(35, 'schoolapp', '0018_auto_20201207_1848', '2021-05-06 07:44:38.669948'),
(36, 'schoolapp', '0019_auto_20201207_1951', '2021-05-06 07:44:38.682497'),
(37, 'schoolapp', '0020_auto_20201207_1952', '2021-05-06 07:44:38.716361'),
(38, 'schoolapp', '0021_auto_20201207_2057', '2021-05-06 07:44:38.769664'),
(39, 'schoolapp', '0022_auto_20201207_2058', '2021-05-06 07:44:38.782569'),
(40, 'schoolapp', '0023_auto_20201207_2222', '2021-05-06 07:44:38.851505'),
(41, 'schoolapp', '0024_auto_20201207_2223', '2021-05-06 07:44:38.869755'),
(42, 'schoolapp', '0025_auto_20201207_2253', '2021-05-06 07:44:38.907981'),
(43, 'schoolapp', '0026_auto_20201207_2258', '2021-05-06 07:44:38.995817'),
(44, 'schoolapp', '0027_auto_20201207_2301', '2021-05-06 07:44:39.064557'),
(45, 'schoolapp', '0028_auto_20201207_2305', '2021-05-06 07:44:39.108679'),
(46, 'schoolapp', '0029_auto_20201207_2310', '2021-05-06 07:44:39.134935'),
(47, 'schoolapp', '0030_auto_20201207_2347', '2021-05-06 07:44:39.152351'),
(48, 'schoolapp', '0031_auto_20201207_2350', '2021-05-06 07:44:39.175798'),
(49, 'schoolapp', '0032_auto_20201208_0030', '2021-05-06 07:44:39.194044'),
(50, 'schoolapp', '0033_auto_20201208_1005', '2021-05-06 07:44:39.219922'),
(51, 'schoolapp', '0034_auto_20201208_1029', '2021-05-06 07:44:39.233100'),
(52, 'schoolapp', '0035_auto_20201208_1048', '2021-05-06 07:44:39.259611'),
(53, 'schoolapp', '0036_auto_20201208_1111', '2021-05-06 07:44:39.280661'),
(54, 'schoolapp', '0037_auto_20201208_1119', '2021-05-06 07:44:39.299733'),
(55, 'schoolapp', '0038_auto_20201208_1209', '2021-05-06 07:44:39.334091'),
(56, 'schoolapp', '0039_auto_20201208_1504', '2021-05-06 07:44:39.361498'),
(57, 'schoolapp', '0040_auto_20201208_1530', '2021-05-06 07:44:39.428456'),
(58, 'schoolapp', '0041_auto_20201208_1536', '2021-05-06 07:44:39.470082'),
(59, 'schoolapp', '0042_auto_20201208_1644', '2021-05-06 07:44:39.483155'),
(60, 'schoolapp', '0043_auto_20201208_1645', '2021-05-06 07:44:39.512656'),
(61, 'schoolapp', '0044_auto_20201208_1649', '2021-05-06 07:44:39.520344'),
(62, 'schoolapp', '0045_auto_20201208_1650', '2021-05-06 07:44:39.536908'),
(63, 'schoolapp', '0046_auto_20201208_1651', '2021-05-06 07:44:39.545929'),
(64, 'schoolapp', '0047_auto_20201208_1654', '2021-05-06 07:44:39.577102'),
(65, 'schoolapp', '0048_auto_20201208_1656', '2021-05-06 07:44:39.587130'),
(66, 'schoolapp', '0049_auto_20201208_2244', '2021-05-06 07:44:39.607577'),
(67, 'schoolapp', '0050_auto_20201208_2245', '2021-05-06 07:44:39.618072'),
(68, 'schoolapp', '0051_auto_20210405_2044', '2021-05-06 07:44:39.649265'),
(69, 'sessions', '0001_initial', '2021-05-06 07:44:39.663524');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('98ensuu8st8t90j0ih1kxmlr2s77na5e', 'e30:1lh7yh:In1qc0uIx0-MIqzMUe70ryBg2lAe3-VQBA01gpv9ro0', '2021-05-27 09:49:59.447348'),
('fk8r20wtzzmb4272sgw3z7rq7msa8z52', '.eJyrVgpJTUzOSC2Kz0xRslJKSk40UtKBi-Ul5qYCRZ2cHRWM8lIUKlMTi5BkCxKLi4GyhkbGSrUATzIWtg:1m3HCE:Z9wczK3qRCnrVbA2T-mLSSK_ZfM-PtRD62OH_JqAskg', '2021-07-27 12:07:30.124600'),
('lsbdufnyheqnvwqlyjd3lkp3c6zg9zdn', 'eyJTdHVfaWQiOiJub2JlbGRhdmlzQGJjYSIsIlN0dV9uYW1lIjoiTm9iZWwgRGF2aXMifQ:1m1pYR:l6pmTLMTJgkT3T4gqjlD2I6Na_VngvWmZGJuajLBFmQ', '2021-07-23 12:24:27.761320');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_assignment_comments`
--

CREATE TABLE `schoolapp_assignment_comments` (
  `serial_no` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `user` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `postID` varchar(255) NOT NULL,
  `time_comment` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_assignment_comments`
--

INSERT INTO `schoolapp_assignment_comments` (`serial_no`, `comment`, `user`, `post`, `postID`, `time_comment`, `parent_id`) VALUES
(18, 'What should be font size?', 'Nobel Davis', 'nnnn', '10', '2021-07-09 13:20:05.873580', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_grade_student`
--

CREATE TABLE `schoolapp_grade_student` (
  `id` int(11) NOT NULL,
  `Student_ID` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `Assignment_name` varchar(200) NOT NULL,
  `Grade` varchar(200) NOT NULL,
  `Out_Of_Grade` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_courses_with_teacher_name`
--

CREATE TABLE `schoolapp_student_courses_with_teacher_name` (
  `id` int(11) NOT NULL,
  `course` varchar(200) NOT NULL,
  `Teacher_ID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_student_courses_with_teacher_name`
--

INSERT INTO `schoolapp_student_courses_with_teacher_name` (`id`, `course`, `Teacher_ID_id`) VALUES
(5, 'BCA 2018-21', 5),
(7, 'BCom', 6);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_login_informatn`
--

CREATE TABLE `schoolapp_student_login_informatn` (
  `id` int(11) NOT NULL,
  `Student_ID` varchar(50) NOT NULL,
  `Student_Name` varchar(255) NOT NULL,
  `Student_pass` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_student_login_informatn`
--

INSERT INTO `schoolapp_student_login_informatn` (`id`, `Student_ID`, `Student_Name`, `Student_pass`, `course_id`) VALUES
(3, 'nobeldavis@bca', 'Nobel Davis', '123', 5),
(4, 'sayana@bcom', 'Sayana', '123', 7);

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_student_submit_assignment_pro`
--

CREATE TABLE `schoolapp_student_submit_assignment_pro` (
  `id` int(11) NOT NULL,
  `attachment` varchar(1000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `Student_ID` varchar(1000) NOT NULL,
  `Assignment_name` varchar(1000) NOT NULL,
  `date_now` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_student_submit_assignment_pro`
--

INSERT INTO `schoolapp_student_submit_assignment_pro` (`id`, `attachment`, `course`, `Student_ID`, `Assignment_name`, `date_now`) VALUES
(10, '/media/1.1_sJTUtlD.png', 'BCA 2018-21', 'nobeldavis@bca', 'AN', '2021-07-12 11:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_teacher_assignment_upload_file`
--

CREATE TABLE `schoolapp_teacher_assignment_upload_file` (
  `id` int(11) NOT NULL,
  `Assignment_name` varchar(500) NOT NULL,
  `course` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `title` varchar(500) NOT NULL,
  `Details` longtext NOT NULL,
  `Out_Of_Grade` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolapp_teacher_login_informa`
--

CREATE TABLE `schoolapp_teacher_login_informa` (
  `id` int(11) NOT NULL,
  `Teacher_ID` varchar(50) NOT NULL,
  `Teacher_Name` varchar(255) NOT NULL,
  `Teacher_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schoolapp_teacher_login_informa`
--

INSERT INTO `schoolapp_teacher_login_informa` (`id`, `Teacher_ID`, `Teacher_Name`, `Teacher_pass`) VALUES
(4, 'bca3', 'BCA 3rd Year', '123'),
(5, 'bca2', 'BCA 2nd year', '123'),
(6, 'bcom', 'bcom', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `schoolapp_assignment_comments`
--
ALTER TABLE `schoolapp_assignment_comments`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `schoolapp_assignment_parent_id_03cb9498_fk_schoolapp` (`parent_id`);

--
-- Indexes for table `schoolapp_grade_student`
--
ALTER TABLE `schoolapp_grade_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_student_co_Teacher_ID_id_5e41227d_fk_schoolapp` (`Teacher_ID_id`);

--
-- Indexes for table `schoolapp_student_login_informatn`
--
ALTER TABLE `schoolapp_student_login_informatn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schoolapp_student_lo_course_id_e793bea6_fk_schoolapp` (`course_id`);

--
-- Indexes for table `schoolapp_student_submit_assignment_pro`
--
ALTER TABLE `schoolapp_student_submit_assignment_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_teacher_assignment_upload_file`
--
ALTER TABLE `schoolapp_teacher_assignment_upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolapp_teacher_login_informa`
--
ALTER TABLE `schoolapp_teacher_login_informa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `schoolapp_assignment_comments`
--
ALTER TABLE `schoolapp_assignment_comments`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schoolapp_grade_student`
--
ALTER TABLE `schoolapp_grade_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schoolapp_student_login_informatn`
--
ALTER TABLE `schoolapp_student_login_informatn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schoolapp_student_submit_assignment_pro`
--
ALTER TABLE `schoolapp_student_submit_assignment_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schoolapp_teacher_assignment_upload_file`
--
ALTER TABLE `schoolapp_teacher_assignment_upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `schoolapp_teacher_login_informa`
--
ALTER TABLE `schoolapp_teacher_login_informa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `schoolapp_assignment_comments`
--
ALTER TABLE `schoolapp_assignment_comments`
  ADD CONSTRAINT `schoolapp_assignment_parent_id_03cb9498_fk_schoolapp` FOREIGN KEY (`parent_id`) REFERENCES `schoolapp_assignment_comments` (`serial_no`);

--
-- Constraints for table `schoolapp_student_courses_with_teacher_name`
--
ALTER TABLE `schoolapp_student_courses_with_teacher_name`
  ADD CONSTRAINT `schoolapp_student_co_Teacher_ID_id_5e41227d_fk_schoolapp` FOREIGN KEY (`Teacher_ID_id`) REFERENCES `schoolapp_teacher_login_informa` (`id`);

--
-- Constraints for table `schoolapp_student_login_informatn`
--
ALTER TABLE `schoolapp_student_login_informatn`
  ADD CONSTRAINT `schoolapp_student_lo_course_id_e793bea6_fk_schoolapp` FOREIGN KEY (`course_id`) REFERENCES `schoolapp_student_courses_with_teacher_name` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
