# ************************************************************
# Sequel Pro SQL dump
# Version 5426
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21-log)
# Database: meedu
# Generation Time: 2019-03-13 14:35:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ad_from
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ad_from`;

CREATE TABLE `ad_from` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ad_from_number
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ad_from_number`;

CREATE TABLE `ad_from_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `day` date NOT NULL,
  `num` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table addons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addons`;

CREATE TABLE `addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'sign标识符',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `current_version_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prev_version_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建主链接',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1安装中,5安装失败,9成功,3升级中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table addons_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addons_logs`;

CREATE TABLE `addons_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addons_id` int(11) NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table addons_version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addons_version`;

CREATE TABLE `addons_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addons_id` int(11) NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table administrator_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator_menus`;

CREATE TABLE `administrator_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1' COMMENT '升序',
  `permission_id` int(11) NOT NULL COMMENT '权限',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `administrator_menus` WRITE;
/*!40000 ALTER TABLE `administrator_menus` DISABLE KEYS */;

INSERT INTO `administrator_menus` (`id`, `parent_id`, `order`, `permission_id`, `name`, `url`, `created_at`, `updated_at`)
VALUES
	(1,0,0,0,'主面板','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(2,1,0,0,'主面板','/backend/dashboard','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(3,0,1,0,'运营','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(4,3,0,47,'公告','/backend/announcement','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(5,3,1,53,'VIP会员','/backend/role','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(6,3,2,59,'邮件群发','/backend/subscription_email','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(7,3,3,85,'友情链接','/backend/link','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(8,3,4,91,'推广链接','/backend/adfrom','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(9,0,2,0,'财务','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(10,9,0,42,'订单列表','/backend/orders','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(11,0,3,0,'会员','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(12,11,0,43,'会员','/backend/member','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(13,0,4,0,'视频','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(14,13,0,30,'课程','/backend/course','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(15,13,1,36,'视频','/backend/video','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(16,0,5,0,'电子书','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(17,16,0,73,'电子书','/backend/book','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(18,0,6,0,'FAQ','','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(19,18,0,61,'FAQ分类','/backend/faq/category','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(20,18,1,67,'FAQ文章','/backend/faq/article','2019-03-13 20:40:45','2019-03-13 20:40:45'),
	(21,0,7,0,'系统','','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(22,21,0,28,'全站配置','/backend/setting','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(23,21,1,22,'管理员','/backend/administrator','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(24,21,2,14,'角色','/backend/administrator_role','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(25,21,3,8,'权限','/backend/administrator_permission','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(26,21,4,1,'后台菜单','/backend/administrator_menu','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(27,21,5,98,'首页导航','/backend/nav','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(28,0,8,0,'应用','','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(29,28,0,104,'多模板','/backend/template/index','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(30,28,1,107,'插件','/backend/addons/index','2019-03-13 20:40:46','2019-03-13 20:40:46'),
	(31,28,2,112,'云插件','/backend/addons/remote/index','2019-03-13 20:40:46','2019-03-13 20:40:46');

/*!40000 ALTER TABLE `administrator_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table administrator_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator_permissions`;

CREATE TABLE `administrator_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP动作',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `administrator_permissions` WRITE;
/*!40000 ALTER TABLE `administrator_permissions` DISABLE KEYS */;

INSERT INTO `administrator_permissions` (`id`, `display_name`, `slug`, `description`, `method`, `url`, `created_at`, `updated_at`)
VALUES
	(1,'后台菜单界面','backend.administrator_menu.index','','GET','/backend/administrator_menu','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(2,'后台菜单创建界面','backend.administrator_menu.create','','GET','/backend/administrator_menu/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(3,'是否可以创建新后台菜单','backend.administrator_menu.create','','POST','/backend/administrator_menu/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(4,'后台菜单编辑界面','backend.administrator_menu.edit','','GET','/backend/administrator_menu/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(5,'是否可以保存编辑后的后台菜单','backend.administrator_menu.edit','','PUT','/backend/administrator_menu/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(6,'删除后台菜单','backend.administrator_menu.destroy','','GET','/backend/administrator_menu/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(7,'后台菜单批量修改','backend.administrator_menu.save_change','','GET','/backend/administrator_menu/change/save','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(8,'管理员权限界面','backend.administrator_permission.index','','GET','/backend/administrator_permission','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(9,'管理员权限创建界面','backend.administrator_permission.create','','GET','/backend/administrator_permission/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(10,'是否可以创建新管理员权限','backend.administrator_permission.create','','POST','/backend/administrator_permission/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(11,'管理员权限编辑界面','backend.administrator_permission.edit','','GET','/backend/administrator_permission/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(12,'是否可以保存编辑后的管理员权限','backend.administrator_permission.edit','','PUT','/backend/administrator_permission/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(13,'删除管理员权限','backend.administrator_permission.destroy','','GET','/backend/administrator_permission/\\d+/destroy','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(14,'管理员角色界面','backend.administrator_role.index','','GET','/backend/administrator_role','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(15,'管理员角色创建界面','backend.administrator_role.create','','GET','/backend/administrator_role/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(16,'是否可以创建新管理员角色','backend.administrator_role.create','','POST','/backend/administrator_role/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(17,'管理员角色编辑界面','backend.administrator_role.edit','','GET','/backend/administrator_role/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(18,'是否可以保存编辑后的管理员角色','backend.administrator_role.edit','','PUT','/backend/administrator_role/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(19,'删除管理员角色','backend.administrator_role.destroy','','GET','/backend/administrator_role/\\d+/destroy','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(20,'管理员角色授权页面','backend.administrator_role.permission','','GET','/backend/administrator_role/\\d+/permission','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(21,'管理员角色授权保存','backend.administrator_role.permission','','POST','/backend/administrator_role/\\d+/permission','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(22,'管理员界面','backend.administrator.index','','GET','/backend/administrator','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(23,'管理员创建界面','backend.administrator.create','','GET','/backend/administrator/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(24,'是否可以创建新管理员','backend.administrator.create','','POST','/backend/administrator/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(25,'管理员编辑界面','backend.administrator.edit','','GET','/backend/administrator/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(26,'是否可以保存编辑后的管理员','backend.administrator.edit','','PUT','/backend/administrator/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(27,'删除管理员','backend.administrator.destroy','','GET','/backend/administrator/\\d+/destroy','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(28,'全站配置','backend.setting.index','','GET','/backend/setting','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(29,'全站配置保存','backend.setting.index','','POST','/backend/setting','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(30,'课程列表界面','backend.course.index','','GET','/backend/course','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(31,'课程创建界面','backend.course.create','','GET','/backend/course/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(32,'是否可以创建新课程','backend.course.create','','POST','/backend/course/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(33,'课程编辑界面','backend.course.edit','','GET','/backend/course/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(34,'是否可以保存编辑后的课程','backend.course.edit','','PUT','/backend/course/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(35,'删除课程','backend.course.destroy','','GET','/backend/course/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(36,'视频列表界面','backend.video.index','','GET','/backend/video','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(37,'视频创建界面','backend.video.create','','GET','/backend/video/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(38,'是否可以创建新视频','backend.video.create','','POST','/backend/video/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(39,'视频编辑界面','backend.video.edit','','GET','/backend/video/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(40,'是否可以保存编辑后的视频','backend.video.edit','','PUT','/backend/video/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(41,'删除视频','backend.video.destroy','','GET','/backend/video/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(42,'订单列表','backend.orders','','GET','/backend/orders','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(43,'会员列表','backend.member.index','','GET','/backend/member','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(44,'会员详情','backend.member.show','','GET','/backend/member/\\d+/show','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(45,'添加会员页面','backend.member.create','','GET','/backend/member/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(46,'添加会员','backend.member.create','','POST','/backend/member/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(47,'公告列表界面','backend.announcement.index','','GET','/backend/announcement','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(48,'公告创建界面','backend.announcement.create','','GET','/backend/announcement/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(49,'是否可以创建新公告','backend.announcement.create','','POST','/backend/announcement/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(50,'公告编辑界面','backend.announcement.edit','','GET','/backend/announcement/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(51,'是否可以保存编辑后的公告','backend.announcement.edit','','PUT','/backend/announcement/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(52,'删除公告','backend.announcement.destroy','','GET','/backend/announcement/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(53,'VIP列表界面','backend.role.index','','GET','/backend/role','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(54,'VIP创建界面','backend.role.create','','GET','/backend/role/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(55,'是否可以创建新VIP','backend.role.create','','POST','/backend/role/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(56,'VIP编辑界面','backend.role.edit','','GET','/backend/role/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(57,'是否可以保存编辑后的VIP','backend.role.edit','','PUT','/backend/role/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(58,'删除VIP','backend.role.destroy','','GET','/backend/role/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(59,'邮件群发界面','backend.subscription.email','','GET','/backend/subscription_email','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(60,'邮件群发任务的提交','backend.subscription.email','','POST','/backend/subscription_email','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(61,'FAQ分类列表界面','backend.faq.category.index','','GET','/backend/faq/category','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(62,'FAQ分类创建界面','backend.faq.category.create','','GET','/backend/faq/category/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(63,'是否可以创建新FAQ分类','backend.faq.category.create','','POST','/backend/faq/category/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(64,'FAQ分类编辑界面','backend.faq.category.edit','','GET','/backend/faq/category/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(65,'是否可以保存编辑后的FAQ分类','backend.faq.category.edit','','PUT','/backend/faq/category/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(66,'删除FAQ分类','backend.faq.category.destroy','','GET','/backend/faq/category/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(67,'FAQ文章列表界面','backend.faq.article.index','','GET','/backend/faq/article','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(68,'FAQ文章创建界面','backend.faq.article.create','','GET','/backend/faq/article/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(69,'是否可以创建新FAQ文章','backend.faq.article.create','','POST','/backend/faq/article/create','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(70,'FAQ文章编辑界面','backend.faq.article.edit','','GET','/backend/faq/article/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(71,'是否可以保存编辑后的FAQ文章','backend.faq.article.edit','','PUT','/backend/faq/article/\\d+/edit','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(72,'删除FAQ文章','backend.faq.article.destroy','','GET','/backend/faq/article/\\d+/delete','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(73,'电子书列表','backend.book.index','','GET','/backend/book','2019-03-13 20:40:08','2019-03-13 20:40:08'),
	(74,'电子书创建界面','backend.book.create','','GET','/backend/book/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(75,'是否可以创建新电子书','backend.book.create','','POST','/backend/book/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(76,'电子书编辑界面','backend.book.edit','','GET','/backend/book/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(77,'是否可以保存编辑后的电子书','backend.book.edit','','PUT','/backend/book/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(78,'删除电子书','backend.book.destroy','','GET','/backend/book/\\d+/delete','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(79,'电子书章节列表','backend.book.chapter.index','','GET','/backend/book/\\d+/chapter','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(80,'电子书章节创建界面','backend.book.chapter.create','','GET','/backend/book/\\d+/chapter/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(81,'是否可以创建新电子书章节','backend.book.chapter.create','','POST','/backend/book/\\d+/chapter/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(82,'电子书章节编辑界面','backend.book.chapter.edit','','GET','/backend/book/\\d+/chapter/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(83,'是否可以保存编辑后的电子书章节','backend.book.chapter.edit','','PUT','/backend/book/\\d+/chapter/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(84,'删除电子书章节','backend.book.chapter.destroy','','GET','/backend/book/\\d+/chapter/\\d+/delete','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(85,'友情链接列表','backend.link.index','','GET','/backend/link','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(86,'创建友情链接界面','backend.link.create','','GET','/backend/link/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(87,'创建友情链接','backend.link.create','','POST','/backend/link/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(88,'编辑友情链接界面','backend.link.edit','','GET','/backend/link/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(89,'保存友情链接的变动','backend.link.edit','','PUT','/backend/link/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(90,'删除友情链接','backend.link.destroy','','GET','/backend/link/\\d+/delete','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(91,'推广链接首页','backend.adfrom.index','','GET','/backend/adfrom','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(92,'创建推广链接界面','backend.adfrom.create','','GET','/backend/adfrom/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(93,'创建推广链接','backend.adfrom.create','','POST','/backend/adfrom/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(94,'编辑推广链接界面','backend.adfrom.edit','','GET','/backend/adfrom/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(95,'保存推广链接的变动','backend.adfrom.edit','','PUT','/backend/adfrom/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(96,'删除推广链接','backend.adfrom.destroy','','GET','/backend/adfrom/\\d+/delete','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(97,'查看推广链接推广效果','backend.adfrom.number','','GET','/backend/adfrom/\\d+/number','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(98,'首页导航首页','backend.nav.index','','GET','/backend/nav','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(99,'创建首页导航界面','backend.nav.create','','GET','/backend/nav/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(100,'创建首页导航','backend.nav.create','','POST','/backend/nav/create','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(101,'编辑首页导航界面','backend.nav.edit','','GET','/backend/nav/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(102,'保存首页导航的变动','backend.nav.edit','','PUT','/backend/nav/\\d+/edit','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(103,'删除首页导航','backend.nav.destroy','','GET','/backend/nav/\\d+/delete','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(104,'模板列表','backend.template.index','','GET','/backend/template/index','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(105,'本地安装模板','bbackend.template.install.local','','GET','/backend/template/\\w+/\\w+/install/local','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(106,'设置站点模板','backend.template.set.default','','GET','/backend/template/\\d+/set/default','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(107,'插件','backend.addons.index','','GET','/backend/addons/index','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(108,'插件日志','backend.addons.logs','','GET','/backend/addons/\\d+/logs','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(109,'插件版本','backend.addons.versions','','GET','/backend/addons/\\d+/versions','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(110,'切换插件版本','backend.addons.version.switch','','GET','/backend/addons/\\d+/version/\\d+/switch','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(111,'安装插件依赖','backend.addons.dependencies.install','','GET','/backend/addons/\\d+/dependencies/install','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(112,'云插件','backend.addons.remote.index','','GET','/backend/addons/remote/index','2019-03-13 20:40:09','2019-03-13 20:40:09'),
	(113,'云插件安装','backend.addons.remote.install','','GET','/backend/addons/remote/\\w+/\\w+/install','2019-03-13 20:40:09','2019-03-13 20:40:09');

/*!40000 ALTER TABLE `administrator_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table administrator_role_permission_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator_role_permission_relation`;

CREATE TABLE `administrator_role_permission_relation` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  KEY `administrator_role_permission_relation_role_id_index` (`role_id`),
  KEY `administrator_role_permission_relation_permission_id_index` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table administrator_role_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator_role_relation`;

CREATE TABLE `administrator_role_relation` (
  `administrator_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `administrator_role_relation_administrator_id_index` (`administrator_id`),
  KEY `administrator_role_relation_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `administrator_role_relation` WRITE;
/*!40000 ALTER TABLE `administrator_role_relation` DISABLE KEYS */;

INSERT INTO `administrator_role_relation` (`administrator_id`, `role_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `administrator_role_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table administrator_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator_roles`;

CREATE TABLE `administrator_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `administrator_roles` WRITE;
/*!40000 ALTER TABLE `administrator_roles` DISABLE KEYS */;

INSERT INTO `administrator_roles` (`id`, `display_name`, `slug`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'超级管理员','administrator','创世角色','2019-03-13 20:40:08','2019-03-13 20:40:08');

/*!40000 ALTER TABLE `administrator_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table administrators
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrators`;

CREATE TABLE `administrators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_date` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `administrators_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;

INSERT INTO `administrators` (`id`, `name`, `email`, `password`, `last_login_ip`, `last_login_date`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'超级管理员','mike@baidu.com','$2y$10$XILSbbk8IF4MJS0XKJTLQ.O64M8aZQAhW5c9KHbH0XoqDIkdvo4sm','127.0.0.1','2019-03-13 21:13:24',NULL,'2019-03-13 20:40:37','2019-03-13 21:13:24');

/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table announcements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `announcements`;

CREATE TABLE `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `announcement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;

INSERT INTO `announcements` (`id`, `admin_id`, `announcement`, `created_at`, `updated_at`)
VALUES
	(1,1,'<p>测试公告</p>','2019-03-13 20:56:06','2019-03-13 20:56:06');

/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book_catalogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book_catalogs`;

CREATE TABLE `book_catalogs` (
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table book_chapters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book_chapters`;

CREATE TABLE `book_chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '章节名',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '封面',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简短介绍',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详细介绍',
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `user_id`, `title`, `slug`, `thumb`, `view_num`, `charge`, `short_description`, `description`, `seo_keywords`, `seo_description`, `published_at`, `is_show`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,'PHP电子书','PHP-dian-zi-shu','http://localhost:9006/storage/images/R8fnYgCZTHRSP10J3mWU4OwanfCihkq9W4zLnA78.jpeg',0,100,'PHP电子书','<p>111</p>','11','22','2019-03-13 12:00:00',1,'2019-03-13 20:45:29','2019-03-13 20:45:29',NULL),
	(2,0,'21121','21121','http://ss.home/storage/images/eKWVdZOeQIKVZRiFKxtgqSK9BcRDS6pOHBpUBxgx.jpeg',0,111,'212121','<p>21212</p>','222','333','2019-03-13 12:00:00',1,'2019-03-13 21:23:08','2019-03-13 21:23:08',NULL);

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table course_chapter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course_chapter`;

CREATE TABLE `course_chapter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table course_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course_comments`;

CREATE TABLE `course_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费',
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简短介绍',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '课程介绍',
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `user_id`, `title`, `slug`, `thumb`, `charge`, `short_description`, `description`, `seo_keywords`, `seo_description`, `published_at`, `is_show`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,'测试课程','ce-shi-ke-cheng','http://localhost:9006/storage/images/Y2IKyhuucxppbISNtpfgLVfjRGWfG56XX419vOiF.jpeg',111,'1212','<p>111</p>','22','33','2019-03-13 12:00:00',1,'2019-03-13 20:58:42','2019-03-13 20:58:42',NULL);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table email_subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `email_subscriptions`;

CREATE TABLE `email_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table faq_articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faq_articles`;

CREATE TABLE `faq_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '编辑人',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table faq_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faq_categories`;

CREATE TABLE `faq_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '升序',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '分类名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `links`;

CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(5,'2016_06_01_000004_create_oauth_clients_table',1),
	(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(7,'2018_06_10_092935_create_book_table',1),
	(8,'2018_06_10_093350_create_course_table',1),
	(9,'2018_06_10_093941_create_video_table',1),
	(10,'2018_06_11_121540_create_book_chapter_table',1),
	(11,'2018_06_11_122309_create_book_catalogs_table',1),
	(12,'2018_06_11_140429_create_administrators_table',1),
	(13,'2018_06_11_140557_create_administrator_roles_table',1),
	(14,'2018_06_11_140702_create_administrator_role_relation_tbale',1),
	(15,'2018_06_11_140936_create_administrator_permissions_table',1),
	(16,'2018_06_11_141132_create_administrator_role_permission_relation_table',1),
	(17,'2018_06_24_055643_add_charge_column_for_videos_table',1),
	(18,'2018_08_24_111310_create_sms_records_table',1),
	(19,'2018_08_25_122014_create_course_comments_table',1),
	(20,'2018_08_25_122026_create_video_comments_table',1),
	(21,'2018_08_28_194051_create_user_course_table',1),
	(22,'2018_08_28_201555_create_roles_table',1),
	(23,'2018_08_28_201633_add_role_id_column_for_users_table',1),
	(24,'2018_08_28_202328_create_user_join_role_records_table',1),
	(25,'2018_08_29_202834_create_notifications_table',1),
	(26,'2018_08_29_203905_create_jobs_table',1),
	(27,'2018_08_30_200622_add_charge_column_for_user_course_table',1),
	(28,'2018_08_30_202222_create_user_video_table',1),
	(29,'2018_09_01_161246_create_recharge_payments_table',1),
	(30,'2018_09_03_202544_create_orders_table',1),
	(31,'2018_09_16_110336_create_email_subscriptions_table',1),
	(32,'2018_09_16_113005_create_announcements_table',1),
	(33,'2018_09_22_235037_create_faq_categories_table',1),
	(34,'2018_09_22_235056_create_faq_articles_table',1),
	(35,'2018_10_07_101347_add_aliyun_video_id_column_for_videos',1),
	(36,'2018_10_23_101556_create_administrator_menus_table',1),
	(37,'2018_10_26_102622_create_order_goods_table',1),
	(38,'2018_10_26_102656_adjust_orders_table',1),
	(39,'2018_10_31_101718_create_user_book_table',1),
	(40,'2018_11_22_194642_create_ad_froms_table',1),
	(41,'2018_11_22_194828_create_ad_from_number_table',1),
	(42,'2018_11_24_205824_create_links_table',1),
	(43,'2018_12_06_082850_create_course_chapter_table',1),
	(44,'2018_12_06_192345_add_sort_column_for_course_chapter_table',1),
	(45,'2018_12_06_192755_add_chapter_id_for_videos_table',1),
	(46,'2018_12_12_214600_create_navs_table',1),
	(47,'2018_12_12_221538_create_socialite_table',1),
	(48,'2018_12_22_112124_add_duration_column_for_videos_table',1),
	(49,'2018_12_25_222045_add_is_show_column_for_roles_table',1),
	(50,'2018_12_25_223434_create_templates_table',1),
	(51,'2018_12_26_214631_create_addons_table',1),
	(52,'2018_12_26_214647_create_addons_version_table',1),
	(53,'2018_12_26_215843_create_addons_logs_table',1),
	(54,'2019_01_13_123943_add_main_url_column_for_addons_table',1),
	(55,'2019_01_13_125336_add_status_column_for_addons_table',1),
	(56,'2019_02_10_225039_add_sign_column_for_addons_table',1),
	(57,'2019_02_19_200047_add_payment_column_for_orders_table',1),
	(58,'2019_02_23_130633_create_failed_jobs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table navs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `navs`;

CREATE TABLE `navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接名',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'MeEdu Personal Access Client','hzxSOqURAFIKKdSOVw0Q07lM7PMsbe1K4SlEITcd','http://localhost',1,0,0,'2019-03-13 20:41:53','2019-03-13 20:41:53'),
	(2,NULL,'MeEdu Password Grant Client','MCbJE0YMUZSNquS564RlOi8fd1bd8xkmUwITwRQC','http://localhost',0,1,0,'2019-03-13 20:41:53','2019-03-13 20:41:53');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2019-03-13 20:41:53','2019-03-13 20:41:53');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table order_goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_goods`;

CREATE TABLE `order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品类型标识符',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `charge` int(11) NOT NULL COMMENT '商品价格',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_goods_order_id_unique` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `order_goods` WRITE;
/*!40000 ALTER TABLE `order_goods` DISABLE KEYS */;

INSERT INTO `order_goods` (`id`, `user_id`, `order_id`, `goods_id`, `goods_type`, `num`, `charge`, `created_at`, `updated_at`)
VALUES
	(1,1,'1',1,'COURSE',1,111,'2019-03-13 21:01:46','2019-03-13 21:01:46');

/*!40000 ALTER TABLE `order_goods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未处理,9已处理',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单编号',
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付网关',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `charge`, `status`, `created_at`, `updated_at`, `deleted_at`, `order_id`, `payment`, `payment_method`)
VALUES
	(1,1,111,1,'2019-03-13 21:01:46','2019-03-13 21:01:46',NULL,'210146980000000001','','');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recharge_payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recharge_payments`;

CREATE TABLE `recharge_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `pay_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未支付,9已支付',
  `third_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方平台ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '价格，单位：元',
  `expire_days` int(11) NOT NULL DEFAULT '0' COMMENT '有效期，单位：天',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重，升序',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '详细描述，一行一个',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不显示,1显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sms_records
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms_records`;

CREATE TABLE `sms_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `send_data` text COLLATE utf8mb4_unicode_ci COMMENT '发送数据',
  `response_data` text COLLATE utf8mb4_unicode_ci COMMENT '响应数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table socialite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `socialite`;

CREATE TABLE `socialite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(2222) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `real_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;

INSERT INTO `templates` (`id`, `name`, `current_version`, `path`, `real_path`, `author`, `thumb`, `created_at`, `updated_at`)
VALUES
	(1,'default','0.1','/Code/study/meedu/resources/views','/Code/study/meedu/resources/views','XiaoTeng','','2019-03-13 17:42:05','2019-03-13 17:42:05');

/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_book`;

CREATE TABLE `user_book` (
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_course`;

CREATE TABLE `user_course` (
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_join_role_records
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_join_role_records`;

CREATE TABLE `user_join_role_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_video
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_video`;

CREATE TABLE `user_video` (
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '收费',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nick_name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit1` int(11) NOT NULL DEFAULT '0',
  `credit2` int(11) NOT NULL DEFAULT '0',
  `credit3` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL COMMENT '1:active,-1:unactive',
  `is_lock` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '1:lock,-1:unlock',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `role_expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `avatar`, `nick_name`, `mobile`, `password`, `credit1`, `credit2`, `credit3`, `is_active`, `is_lock`, `remember_token`, `created_at`, `updated_at`, `role_id`, `role_expired_at`)
VALUES
	(1,'http://localhost:9006/storage/images/gEx3TNrt63BgQnv5cYEbaregoKn8TXgTSmoIryCu.jpeg','mike','15333333333','$2y$10$ypM0w8oulIMSoDfQPuZmQediO77mt96jm8BI8Pg3rWN/IZjuZFJxC',0,0,0,1,-1,NULL,'2019-03-13 20:57:24','2019-03-13 20:57:24',0,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table video_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `video_comments`;

CREATE TABLE `video_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table videos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'slug',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '播放地址',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '观看次数',
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简短介绍',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详细介绍',
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `published_at` timestamp NULL DEFAULT NULL COMMENT '上线时间',
  `is_show` tinyint(4) NOT NULL COMMENT '1显示,-1隐藏',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aliyun_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `chapter_id` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '时长，单位：秒',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;

INSERT INTO `videos` (`id`, `user_id`, `course_id`, `title`, `slug`, `url`, `charge`, `view_num`, `short_description`, `description`, `seo_keywords`, `seo_description`, `published_at`, `is_show`, `deleted_at`, `created_at`, `updated_at`, `aliyun_video_id`, `chapter_id`, `duration`)
VALUES
	(1,0,1,'1111111111','1111111111','https://www.bilibili.com/video/av10274152/',290,1,'121','<p>嗯……请尽量不要评论以下文字“PHP是世界上最好的语言”=_=<br></p>','1212','21212','2019-03-13 20:59:00',1,NULL,'2019-03-13 21:01:22','2019-03-13 21:01:40','',0,100);

/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
