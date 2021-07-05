-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://wordpresslesson.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://wordpresslesson.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','TEA BREAK','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','おいしいお茶とお菓子のショップ','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','r12m097@yahoo.cp.jp','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','6','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','Y年n月j日','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";i:1;s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','9.5','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:5:{i:0;s:91:\"/Users/yasumitsu/Local Sites/wordpresslesson/app/public/wp-content/themes/mytheme/style.css\";i:2;s:91:\"/Users/yasumitsu/Local Sites/wordpresslesson/app/public/wp-content/themes/mytheme/index.php\";i:3;s:98:\"/Users/yasumitsu/Local Sites/wordpresslesson/app/public/wp-content/plugins/gutenberg/gutenberg.php\";i:4;s:95:\"/Users/yasumitsu/Local Sites/wordpresslesson/app/public/wp-content/themes/mytheme/functions.php\";i:5;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','mytheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','mytheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','0','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"CATEGORIES\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1640847230','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:12:\"RECENT POSTS\";s:6:\"number\";i:8;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:8:\"ARCHIVES\";s:5:\"count\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:14:\"recent-posts-3\";i:1;s:12:\"categories-3\";i:2;s:10:\"archives-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1625482432;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625511232;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625540836;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"67a23b5262f56e030eab46a20e266de7\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:55;}}}}i:1625554432;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625554467;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625986432;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','EUdr#g[&tX0~Ut 0SMK2idK_,/KM(%:*ialhbq7~SD*D7BLCWy%NSUGACT!Cp`e7','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','AJ*#2^n+*yFV.rV!NQm}Z&hHfvVU^VL-0fr/BOcV%FekWu/}E0j$_|s^mN_IGfP6','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:2:{s:22:\"R8vgUzVwFSovy0kxYUgOb1\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BvMZFP1z52lvDqINfi.rXgalQmVVWU1\";s:10:\"created_at\";i:1625382577;}s:22:\"bPdEAGLhC1c9GSbJbtq05f\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BsLjpOkeCPCDNJmak94pFakM30iYbY.\";s:10:\"created_at\";i:1625475597;}}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625297258;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:34:\"SSL 認証に失敗しました。\";}s:17:\"bad_response_code\";a:1:{i:0;s:21:\"Internal Server Error\";}}','yes');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (132,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (133,'new_admin_email','r12m097@yahoo.cp.jp','yes');
INSERT INTO `wp_options` VALUES (138,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (154,'recently_activated','a:1:{s:23:\"gutenberg/gutenberg.php\";i:1625383264;}','yes');
INSERT INTO `wp_options` VALUES (157,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (158,'theme_mods_mytheme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:45;}','yes');
INSERT INTO `wp_options` VALUES (159,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (174,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.7.2.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625468033;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (176,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625479171;s:7:\"checked\";a:4:{s:7:\"mytheme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (196,'_transient_health-check-site-status-result','{\"good\":\"14\",\"recommended\":\"4\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (197,'recovery_mode_email_last_sent','1625475597','yes');
INSERT INTO `wp_options` VALUES (206,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (207,'gutenberg_version_migration','9.8.0','yes');
INSERT INTO `wp_options` VALUES (210,'_transient_timeout_oembed_91e930b3276ed213da137915e9019ac5','1625469595','no');
INSERT INTO `wp_options` VALUES (211,'_transient_oembed_91e930b3276ed213da137915e9019ac5','O:8:\"stdClass\":21:{s:4:\"type\";s:5:\"video\";s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:5:\"Vimeo\";s:12:\"provider_url\";s:18:\"https://vimeo.com/\";s:5:\"title\";s:12:\"The Mountain\";s:11:\"author_name\";s:15:\"TSO Photography\";s:10:\"author_url\";s:24:\"https://vimeo.com/terjes\";s:7:\"is_plus\";s:1:\"0\";s:12:\"account_type\";s:5:\"basic\";s:4:\"html\";s:214:\"<iframe title=\"The Mountain\" src=\"https://player.vimeo.com/video/22439234?dnt=1&amp;app_id=122963\" width=\"600\" height=\"338\" frameborder=\"0\" allow=\"autoplay; fullscreen; picture-in-picture\" allowfullscreen></iframe>\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:8:\"duration\";i:189;s:11:\"description\";s:1978:\"Follow on:\nhttps://facebook.com/TSOphotography for more photos, videos and updates. \n\nThis was filmed between 4th and 11th April 2011. I had the pleasure of visiting El Teide.\nSpain´s highest mountain  @(3718m) is one of the best places in the world to photograph the stars and is also the location of Teide Observatories, considered to be one of the world´s best observatories. \n\nThe goal was to capture the beautiful Milky Way galaxy along with one of the most amazing mountains I know El Teide. I have to say this was one of the most exhausting trips I have done. There was a lot of hiking at high altitudes and probably less than 10 hours of sleep in total for the whole week. Having been here 10-11 times before I had a long list of must-see locations I wanted to capture for this movie, but I am still not 100% used to carrying around so much gear required for time-lapse movies.\n \nA large sandstorm hit the Sahara Desert on the 9th April (http://bit.ly/g3tsDW) and at approx 3am in the night the sandstorm hit me, making  it nearly impossible to see the sky with my own eyes.\n\nInterestingly enough my camera was set for a 5 hour sequence of the milky way during this time and I was sure my whole scene was ruined. To my surprise, my camera had managed to capture the sandstorm which was backlit by Grand Canary Island making it look like golden clouds. The Milky Way was shining through the clouds, making the stars sparkle in an interesting way. So if you ever wondered how the Milky Way would look through a Sahara sandstorm, look at 00:32.\n\nAvailable in Digital Cinema 4k.\n\nFollow Facebook: http://www.facebook.com/TSOPhotography\nFollow Twitter:\nhttp://twitter.com/TSOPhotography\nFollow Google+:\nhttps://plus.google.com/107543460658107759808\n\nPress/licensing/projects contact: tsophotography@gmail.com\n\n\nMusic by my friend: Ludovico Einaudi - \"Nuvole bianche\" with permission. \nPlease support the artist here:\nhttp://itunes.apple.com/us/album/una-mattina/id217799399\";s:13:\"thumbnail_url\";s:46:\"https://i.vimeocdn.com/video/145027281_295x166\";s:15:\"thumbnail_width\";i:295;s:16:\"thumbnail_height\";i:166;s:30:\"thumbnail_url_with_play_button\";s:164:\"https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F145027281_295x166&src1=http%3A%2F%2Ff.vimeocdn.com%2Fp%2Fimages%2Fcrawler_play.png\";s:11:\"upload_date\";s:19:\"2011-04-15 08:35:35\";s:8:\"video_id\";i:22439234;s:3:\"uri\";s:16:\"/videos/22439234\";}','no');
INSERT INTO `wp_options` VALUES (219,'_transient_timeout_oembed_7333c995a7091824c09d597678747007','1625473507','no');
INSERT INTO `wp_options` VALUES (220,'_transient_oembed_7333c995a7091824c09d597678747007','O:8:\"stdClass\":13:{s:5:\"title\";s:3:\"Tea\";s:11:\"author_name\";s:15:\"エビスコム\";s:10:\"author_url\";s:34:\"https://www.youtube.com/c/Ebisucom\";s:4:\"type\";s:5:\"video\";s:6:\"height\";i:338;s:5:\"width\";i:600;s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:7:\"YouTube\";s:12:\"provider_url\";s:24:\"https://www.youtube.com/\";s:16:\"thumbnail_height\";i:360;s:15:\"thumbnail_width\";i:480;s:13:\"thumbnail_url\";s:48:\"https://i.ytimg.com/vi/D8ASQ7lMSMQ/hqdefault.jpg\";s:4:\"html\";s:246:\"<iframe title=\"Tea\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/D8ASQ7lMSMQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\";}','no');
INSERT INTO `wp_options` VALUES (238,'_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f','1625494797','no');
INSERT INTO `wp_options` VALUES (239,'_transient_dash_v2_45827e8e892dd0b85803a110fad8690f','<div class=\"rss-widget\"><p><strong>RSS エラー:</strong> WP HTTP Error: 有効な URL ではありません。</p></div><div class=\"rss-widget\"><p><strong>RSS エラー:</strong> WP HTTP Error: 有効な URL ではありません。</p></div>','no');
INSERT INTO `wp_options` VALUES (244,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625468033;s:7:\"checked\";a:3:{s:23:\"gutenberg/gutenberg.php\";s:6:\"10.9.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:3:\"2.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"gutenberg\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"10.9.1\";s:7:\"updated\";s:19:\"2021-06-25 05:25:57\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/gutenberg/10.9.1/ja.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"0.7\";s:7:\"updated\";s:19:\"2020-03-18 07:30:30\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.7/ja.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:6:\"10.9.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/gutenberg.10.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-multibyte-patch\";s:4:\"slug\";s:18:\"wp-multibyte-patch\";s:6:\"plugin\";s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-multibyte-patch/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-multibyte-patch.2.9.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:62:\"https://s.w.org/plugins/geopattern-icon/wp-multibyte-patch.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (245,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (272,'_site_transient_timeout_theme_roots','1625479342','no');
INSERT INTO `wp_options` VALUES (273,'_site_transient_theme_roots','a:4:{s:7:\"mytheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_trash_meta_time','1625296025');
INSERT INTO `wp_postmeta` VALUES (9,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (10,7,'_edit_lock','1625477402:1');
INSERT INTO `wp_postmeta` VALUES (11,8,'_edit_lock','1625303322:1');
INSERT INTO `wp_postmeta` VALUES (12,9,'_edit_lock','1625303330:1');
INSERT INTO `wp_postmeta` VALUES (15,11,'_edit_lock','1625305585:1');
INSERT INTO `wp_postmeta` VALUES (16,12,'_edit_lock','1625305598:1');
INSERT INTO `wp_postmeta` VALUES (17,13,'_edit_lock','1625305612:1');
INSERT INTO `wp_postmeta` VALUES (18,14,'_edit_lock','1625305714:1');
INSERT INTO `wp_postmeta` VALUES (21,19,'_wp_attached_file','2021/07/screenshot.jpg');
INSERT INTO `wp_postmeta` VALUES (22,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:22:\"2021/07/screenshot.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"screenshot-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"screenshot-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"screenshot-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (27,22,'_wp_attached_file','2021/07/tea-2.jpg');
INSERT INTO `wp_postmeta` VALUES (28,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2021/07/tea-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tea-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"tea-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tea-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"tea-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"tea-2-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (29,23,'_wp_attached_file','2021/07/tea2.jpg');
INSERT INTO `wp_postmeta` VALUES (30,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2021/07/tea2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"tea2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"tea2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tea2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"tea2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"tea2-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,24,'_wp_attached_file','2021/07/tea1.jpg');
INSERT INTO `wp_postmeta` VALUES (32,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2021/07/tea1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"tea1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"tea1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"tea1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"tea1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"tea1-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,26,'_wp_attached_file','2021/07/tea.jpg');
INSERT INTO `wp_postmeta` VALUES (34,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2021/07/tea.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"tea-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"tea-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"tea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"tea-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"tea-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (35,29,'_edit_lock','1625383053:1');
INSERT INTO `wp_postmeta` VALUES (36,7,'_oembed_f1e28581481c30951926a074c513ad7d','<iframe title=\"Tea\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/D8ASQ7lMSMQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES (37,7,'_oembed_time_f1e28581481c30951926a074c513ad7d','1625387126');
INSERT INTO `wp_postmeta` VALUES (38,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (42,41,'_wp_attached_file','2021/07/tea-1.jpg');
INSERT INTO `wp_postmeta` VALUES (43,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2021/07/tea-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tea-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"tea-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tea-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"tea-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"tea-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (47,44,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (48,44,'_wp_trash_meta_time','1625390628');
INSERT INTO `wp_postmeta` VALUES (49,47,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (50,47,'_wp_trash_meta_time','1625390638');
INSERT INTO `wp_postmeta` VALUES (51,49,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (52,49,'_wp_trash_meta_time','1625390667');
INSERT INTO `wp_postmeta` VALUES (53,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (54,51,'_wp_trash_meta_time','1625390935');
INSERT INTO `wp_postmeta` VALUES (57,56,'_thumbnail_id','116');
INSERT INTO `wp_postmeta` VALUES (58,95,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (59,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (60,95,'_wp_old_slug','%e6%9e%9c%e5%ae%9f%e3%81%9f%e3%81%a3%e3%81%b7%e3%82%8a%e3%81%ae%e3%82%a2%e3%82%a4%e3%82%b9%e3%82%af%e3%83%aa%e3%83%bc%e3%83%a0');
INSERT INTO `wp_postmeta` VALUES (61,95,'_thumbnail_id','96');
INSERT INTO `wp_postmeta` VALUES (62,98,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (63,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (64,98,'_thumbnail_id','99');
INSERT INTO `wp_postmeta` VALUES (65,102,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (66,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (67,102,'_thumbnail_id','103');
INSERT INTO `wp_postmeta` VALUES (68,106,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (69,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (70,106,'_thumbnail_id','107');
INSERT INTO `wp_postmeta` VALUES (71,109,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (72,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (73,109,'_thumbnail_id','110');
INSERT INTO `wp_postmeta` VALUES (74,112,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (75,112,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (76,112,'_thumbnail_id','113');
INSERT INTO `wp_postmeta` VALUES (77,115,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (78,115,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (79,115,'_wp_old_slug','%e4%bd%bf%e3%81%84%e3%82%84%e3%81%99%e3%81%84%e3%83%87%e3%82%b6%e3%82%a4%e3%83%b3');
INSERT INTO `wp_postmeta` VALUES (80,115,'_thumbnail_id','117');
INSERT INTO `wp_postmeta` VALUES (81,77,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (82,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (83,77,'_thumbnail_id','387');
INSERT INTO `wp_postmeta` VALUES (84,80,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (85,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (86,80,'_wp_old_slug','%e3%82%ab%e3%83%a9%e3%83%95%e3%83%ab%e3%81%aa%e3%83%86%e3%83%bc%e3%83%96%e3%83%ab%e3%82%a6%e3%82%a8%e3%82%a2');
INSERT INTO `wp_postmeta` VALUES (87,80,'_thumbnail_id','81');
INSERT INTO `wp_postmeta` VALUES (88,83,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (89,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (90,83,'_wp_old_slug','%e6%a4%8d%e7%89%a9%e3%81%8c%e6%8c%81%e3%81%a4%e3%83%91%e3%83%af%e3%83%bc%e3%82%92%e6%b4%bb%e7%94%a8%e3%81%99%e3%82%8b');
INSERT INTO `wp_postmeta` VALUES (91,83,'_thumbnail_id','84');
INSERT INTO `wp_postmeta` VALUES (92,86,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (93,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (94,86,'_wp_old_slug','%e6%89%8b%e5%9c%9f%e7%94%a3%e3%81%ab%e5%96%9c%e3%81%b0%e3%82%8c%e3%82%8b%e3%81%8a%e8%8f%93%e5%ad%90');
INSERT INTO `wp_postmeta` VALUES (95,86,'_thumbnail_id','87');
INSERT INTO `wp_postmeta` VALUES (96,89,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (97,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (98,89,'_wp_old_slug','%e3%81%8a%e8%8c%b6%e3%81%a8%e3%83%81%e3%83%a7%e3%82%b3%e3%83%ac%e3%83%bc%e3%83%88%e3%81%ae%e7%b5%84%e3%81%bf%e5%90%88%e3%82%8f%e3%81%9b');
INSERT INTO `wp_postmeta` VALUES (99,89,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (100,92,'_wp_old_date','2019-08-10');
INSERT INTO `wp_postmeta` VALUES (101,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (102,92,'_wp_old_slug','%e3%83%86%e3%82%a3%e3%83%bc%e3%83%90%e3%83%83%e3%82%b0%e3%81%ae%e6%a5%bd%e3%81%97%e3%81%bf%e6%96%b9');
INSERT INTO `wp_postmeta` VALUES (103,92,'_thumbnail_id','93');
INSERT INTO `wp_postmeta` VALUES (104,116,'_wp_attached_file','2019/08/tea.jpg');
INSERT INTO `wp_postmeta` VALUES (105,116,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/08/tea.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"tea-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"tea-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"tea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"tea-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"tea-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (106,81,'_wp_attached_file','2019/08/tableware.jpg');
INSERT INTO `wp_postmeta` VALUES (107,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2019/08/tableware.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tableware-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tableware-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tableware-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tableware-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"tableware-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (108,84,'_wp_attached_file','2019/08/green.jpg');
INSERT INTO `wp_postmeta` VALUES (109,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/08/green.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"green-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"green-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"green-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"green-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"green-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (110,87,'_wp_attached_file','2019/08/macaron.jpg');
INSERT INTO `wp_postmeta` VALUES (111,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2019/08/macaron.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"macaron-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"macaron-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"macaron-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"macaron-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (112,90,'_wp_attached_file','2019/08/choco.jpg');
INSERT INTO `wp_postmeta` VALUES (113,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/08/choco.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"choco-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"choco-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"choco-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"choco-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"choco-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (114,93,'_wp_attached_file','2019/08/teabag.jpg');
INSERT INTO `wp_postmeta` VALUES (115,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2019/08/teabag.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"teabag-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"teabag-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"teabag-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"teabag-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"teabag-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (116,96,'_wp_attached_file','2019/08/berry.jpg');
INSERT INTO `wp_postmeta` VALUES (117,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/08/berry.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"berry-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"berry-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"berry-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"berry-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"berry-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (118,99,'_wp_attached_file','2019/08/present.jpg');
INSERT INTO `wp_postmeta` VALUES (119,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:19:\"2019/08/present.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"present-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"present-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"present-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"present-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"present-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (120,103,'_wp_attached_file','2019/08/plant.jpg');
INSERT INTO `wp_postmeta` VALUES (121,103,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/08/plant.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"plant-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"plant-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"plant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"plant-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"plant-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (122,107,'_wp_attached_file','2019/08/yellow.jpg');
INSERT INTO `wp_postmeta` VALUES (123,107,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2019/08/yellow.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"yellow-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"yellow-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"yellow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"yellow-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"yellow-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (124,110,'_wp_attached_file','2019/08/townscape.jpg');
INSERT INTO `wp_postmeta` VALUES (125,110,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2019/08/townscape.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"townscape-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"townscape-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"townscape-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"townscape-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"townscape-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (126,113,'_wp_attached_file','2019/08/assort.jpg');
INSERT INTO `wp_postmeta` VALUES (127,113,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:18:\"2019/08/assort.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"assort-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"assort-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"assort-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"assort-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"assort-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (128,117,'_wp_attached_file','2019/08/cup.jpg');
INSERT INTO `wp_postmeta` VALUES (129,117,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/08/cup.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cup-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"cup-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cup-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cup-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"cup-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (130,387,'_wp_attached_file','2019/08/jam.jpg');
INSERT INTO `wp_postmeta` VALUES (131,387,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/08/jam.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"jam-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"jam-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"jam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"jam-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"jam-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (132,56,'_edit_lock','1625456933:1');
INSERT INTO `wp_postmeta` VALUES (133,77,'_edit_lock','1625469792:1');
INSERT INTO `wp_postmeta` VALUES (134,389,'_edit_lock','1625454548:1');
INSERT INTO `wp_postmeta` VALUES (135,392,'_wp_attached_file','2019/08/tea-1.jpg');
INSERT INTO `wp_postmeta` VALUES (136,392,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:17:\"2019/08/tea-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tea-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"tea-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tea-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"tea-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"tea-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (139,7,'_thumbnail_id','26');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (2,1,'2021-07-03 06:53:51','2021-07-03 06:53:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpresslesson.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-07-03 16:37:05','2021-07-03 07:07:05','',0,'http://wordpresslesson.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-07-03 06:53:51','2021-07-03 06:53:51','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wordpresslesson.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-07-03 06:53:51','2021-07-03 06:53:51','',0,'http://wordpresslesson.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-07-03 06:54:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-07-03 06:54:27','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-07-03 16:37:05','2021-07-03 07:07:05','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpresslesson.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-07-03 16:37:05','2021-07-03 07:07:05','',2,'http://wordpresslesson.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-07-03 19:09:00','2021-07-03 09:39:00','<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-1024x576.jpg\" alt=\"\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','publish','open','open','','space','','','2021-07-05 17:13:38','2021-07-05 07:43:38','',0,'http://wordpresslesson.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-07-03 18:40:30','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 18:40:30','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-07-03 18:41:09','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 18:41:09','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-07-03 19:09:16','2021-07-03 09:39:16','<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-03 19:09:16','2021-07-03 09:39:16','',7,'http://wordpresslesson.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-07-03 19:18:31','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 19:18:31','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=11',0,'post','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-07-03 19:18:59','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 19:18:59','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=12',0,'post','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-07-03 19:19:07','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 19:19:07','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=13',0,'post','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-07-03 19:20:46','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-03 19:20:46','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=14',0,'post','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-07-03 19:42:57','2021-07-03 10:12:57','<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-03 19:42:57','2021-07-03 10:12:57','',7,'http://wordpresslesson.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-07-03 20:10:05','2021-07-03 10:40:05','','screenshot','','inherit','open','closed','','screenshot','','','2021-07-03 20:10:05','2021-07-03 10:40:05','',7,'http://wordpresslesson.local/wp-content/uploads/2021/07/screenshot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-07-04 15:38:14','2021-07-04 06:08:14','','tea-2','','inherit','open','closed','','tea-2','','','2021-07-04 15:38:14','2021-07-04 06:08:14','',7,'http://wordpresslesson.local/wp-content/uploads/2021/07/tea-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-07-04 15:38:22','2021-07-04 06:08:22','','tea2','','inherit','open','closed','','tea2','','','2021-07-04 15:38:22','2021-07-04 06:08:22','',7,'http://wordpresslesson.local/wp-content/uploads/2021/07/tea2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-07-04 15:38:50','2021-07-04 06:08:50','','tea1','','inherit','open','closed','','tea1','','','2021-07-04 15:38:50','2021-07-04 06:08:50','',7,'http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-07-04 15:42:51','2021-07-04 06:12:51','<!-- wp:image {\"id\":21,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-1-1024x576.jpg\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 15:42:51','2021-07-04 06:12:51','',7,'http://wordpresslesson.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-07-04 15:55:19','2021-07-04 06:25:19','','tea','','inherit','open','closed','','tea','','','2021-07-04 15:55:19','2021-07-04 06:25:19','',7,'http://wordpresslesson.local/wp-content/uploads/2021/07/tea.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-07-04 16:11:25','2021-07-04 06:41:25','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-gallery alignleft columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 16:11:25','2021-07-04 06:41:25','',7,'http://wordpresslesson.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-07-04 16:30:26','2021-07-04 07:00:26','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-gallery alignleft columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 16:30:26','2021-07-04 07:00:26','',7,'http://wordpresslesson.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-07-04 16:49:53','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-04 16:49:53','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=29',0,'post','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-07-04 17:10:34','2021-07-04 07:40:34','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 17:10:34','2021-07-04 07:40:34','',7,'http://wordpresslesson.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-07-04 17:27:33','2021-07-04 07:57:33','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<figure class=\"wp-block-table aligncenter\"><table><tbody><tr><td>花茶A</td><td>千日紅</td></tr><tr><td>花茶B</td><td>ジャスミン</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 17:27:33','2021-07-04 07:57:33','',7,'http://wordpresslesson.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-07-04 17:39:58','2021-07-04 08:09:58','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:categories {\"align\":\"center\"} /-->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<figure class=\"wp-block-table aligncenter\"><table><tbody><tr><td>花茶A</td><td>千日紅</td></tr><tr><td>花茶B</td><td>ジャスミン</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 17:39:58','2021-07-04 08:09:58','',7,'http://wordpresslesson.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-07-04 17:57:49','2021-07-04 08:27:49','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/D8ASQ7lMSMQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/D8ASQ7lMSMQ\n</div></figure>\n<!-- /wp:embed -->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories {\"align\":\"center\"} /-->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<figure class=\"wp-block-table aligncenter\"><table><tbody><tr><td>花茶A</td><td>千日紅</td></tr><tr><td>花茶B</td><td>ジャスミン</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:categories /-->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 17:57:49','2021-07-04 08:27:49','',7,'http://wordpresslesson.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-07-04 17:59:01','2021-07-04 08:29:01','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/D8ASQ7lMSMQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/D8ASQ7lMSMQ\n</div></figure>\n<!-- /wp:embed -->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories {\"align\":\"center\"} /-->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<figure class=\"wp-block-table aligncenter\"><table><tbody><tr><td>花茶A</td><td>千日紅</td></tr><tr><td>花茶B</td><td>ジャスミン</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 17:59:01','2021-07-04 08:29:01','',7,'http://wordpresslesson.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-07-04 18:10:38','2021-07-04 08:40:38','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[24,23],\"columns\":2,\"linkTo\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1-1024x512.jpg\" alt=\"\" data-id=\"24\" data-full-url=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea1.jpg\" data-link=\"http://wordpresslesson.local/space/tea1/\" class=\"wp-image-24\"/><figcaption class=\"blocks-gallery-item__caption\">花茶A</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea2-1024x576.jpg\" alt=\"\" data-id=\"23\" data-link=\"http://wordpresslesson.local/space/tea2/\" class=\"wp-image-23\"/><figcaption class=\"blocks-gallery-item__caption\">花茶B</figcaption></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:embed {\"url\":\"https://youtu.be/D8ASQ7lMSMQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/D8ASQ7lMSMQ\n</div></figure>\n<!-- /wp:embed -->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories {\"align\":\"center\"} /-->\n\n<!-- wp:table {\"align\":\"center\"} -->\n<figure class=\"wp-block-table aligncenter\"><table><tbody><tr><td>花茶A</td><td>千日紅</td></tr><tr><td>花茶B</td><td>ジャスミン</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>知らない本との出会い</p><cite>茶房カフェ</cite></blockquote></figure>\n<!-- /wp:pullquote -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 18:10:38','2021-07-04 08:40:38','',7,'http://wordpresslesson.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-07-04 18:11:52','2021-07-04 08:41:52','<!-- wp:image {\"align\":\"right\",\"id\":26,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-medium\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-300x169.jpg\" alt=\"\" class=\"wp-image-26\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /-->\n\n<!-- wp:categories {\"align\":\"center\"} /-->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 18:11:52','2021-07-04 08:41:52','',7,'http://wordpresslesson.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-07-04 18:17:24','2021-07-04 08:47:24','<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-1024x576.jpg\" alt=\"\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-amber\"} -->\n<p class=\"has-luminous-vivid-amber-background-color has-background\">最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 18:17:24','2021-07-04 08:47:24','',7,'http://wordpresslesson.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-07-04 18:23:03','2021-07-04 08:53:03','<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2021/07/tea-1024x576.jpg\" alt=\"\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くとおいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>最近では、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいかもしれません。</p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','inherit','closed','closed','','7-revision-v1','','','2021-07-04 18:23:03','2021-07-04 08:53:03','',7,'http://wordpresslesson.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-07-04 18:27:53','2021-07-04 08:57:53','','tea-1','','inherit','open','closed','','tea-1','','','2021-07-04 18:27:53','2021-07-04 08:57:53','',0,'http://wordpresslesson.local/wp-content/uploads/2021/07/tea-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-07-04 18:53:48','2021-07-04 09:23:48','{\n    \"custom_css[mytheme]\": {\n        \"value\": \"boder-color: deeppink;\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-04 09:23:48\"\n    }\n}','','','trash','closed','closed','','543fa7a4-8231-4e0e-b682-d1ff73193668','','','2021-07-04 18:53:48','2021-07-04 09:23:48','',0,'http://wordpresslesson.local/543fa7a4-8231-4e0e-b682-d1ff73193668/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-07-04 18:53:48','2021-07-04 09:23:48','','mytheme','','publish','closed','closed','','mytheme','','','2021-07-04 18:58:55','2021-07-04 09:28:55','',0,'http://wordpresslesson.local/mytheme/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-07-04 18:53:48','2021-07-04 09:23:48','boder-color: deeppink;','mytheme','','inherit','closed','closed','','45-revision-v1','','','2021-07-04 18:53:48','2021-07-04 09:23:48','',45,'http://wordpresslesson.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-07-04 18:53:58','2021-07-04 09:23:58','{\n    \"custom_css[mytheme]\": {\n        \"value\": \"border-color: deeppink;\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-04 09:23:58\"\n    }\n}','','','trash','closed','closed','','b3db14d3-dc80-4e4f-9123-e49ad1a01736','','','2021-07-04 18:53:58','2021-07-04 09:23:58','',0,'http://wordpresslesson.local/b3db14d3-dc80-4e4f-9123-e49ad1a01736/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-07-04 18:53:58','2021-07-04 09:23:58','border-color: deeppink;','mytheme','','inherit','closed','closed','','45-revision-v1','','','2021-07-04 18:53:58','2021-07-04 09:23:58','',45,'http://wordpresslesson.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-07-04 18:54:27','2021-07-04 09:24:27','{\n    \"custom_css[mytheme]\": {\n        \"value\": \"h2 {\\n\\tborder-color: deeppink;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-04 09:24:27\"\n    }\n}','','','trash','closed','closed','','c4d2a9a3-d356-4001-902e-d99f118fdd3c','','','2021-07-04 18:54:27','2021-07-04 09:24:27','',0,'http://wordpresslesson.local/c4d2a9a3-d356-4001-902e-d99f118fdd3c/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-07-04 18:54:27','2021-07-04 09:24:27','h2 {\n	border-color: deeppink;\n}\n','mytheme','','inherit','closed','closed','','45-revision-v1','','','2021-07-04 18:54:27','2021-07-04 09:24:27','',45,'http://wordpresslesson.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-07-04 18:58:55','2021-07-04 09:28:55','{\n    \"custom_css[mytheme]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-04 09:28:55\"\n    }\n}','','','trash','closed','closed','','64ada325-2723-48cf-91dd-840cbd3a3fbe','','','2021-07-04 18:58:55','2021-07-04 09:28:55','',0,'http://wordpresslesson.local/64ada325-2723-48cf-91dd-840cbd3a3fbe/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-07-04 18:58:55','2021-07-04 09:28:55','','mytheme','','inherit','closed','closed','','45-revision-v1','','','2021-07-04 18:58:55','2021-07-04 09:28:55','',45,'http://wordpresslesson.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2019-08-08 15:15:19','2019-08-08 06:15:19','<!-- wp:image {\"id\":27} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/tea.jpg\" alt=\"\" class=\"wp-image-27\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>カフェに行くと、 おいしいお茶とお菓子を片手に本を読みながら、のんびりと過ごしています。個人的なお気に入りは季節のハーブティーです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>のんびりできる空間</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ひとりでのんびりできる空間はじっくりと読書したいときにもぴったりです。読みたい本がないときには、いろいろな本が置いてあるカフェに行きます。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>最近は、タブレットでたくさんの蔵書が自由に読めるようになっていることもあるので、今まで触れることのなかったジャンルの本にも出会う機会が増えてきました。カフェに行って知らない本に出会ってみる、というのもいいのかもしれません。 </p>\n<!-- /wp:paragraph -->','おいしいお茶を楽しめる読書空間','','publish','open','open','','space-2','','','2019-08-08 15:15:19','2019-08-08 06:15:19','',0,'https://www.www.www/?p=23',0,'post','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2019-08-01 16:07:46','2019-08-01 07:07:46','<!-- wp:image {\"id\":387,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/jam.jpg\" alt=\"\" class=\"wp-image-387\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>今月のおすすめジャムは杏（あんず）です。「アプリコットジャム」と呼ばれることの方が多いかもしれません。甘ずっぱい杏の味や香りが楽しめます。クッキーなどの焼き菓子やシフォンケーキ、とろけるアイスクリームとの相性もバッチリです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>そういえば、杏仁豆腐の「杏仁」は杏の種子から作られるのだそうです。杏仁豆腐と杏ジャムの組み合わせもおすすめです。</p>\n<!-- /wp:paragraph -->','今月のジャムは杏（あんず）です','','publish','open','open','','apricot','','','2019-08-01 16:07:46','2019-08-01 07:07:46','',0,'https://www.www.www/?p=77',0,'post','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2019-07-27 21:16:27','2019-07-27 12:16:27','<!-- wp:image {\"id\":81} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/tableware.jpg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>テーブルを彩ってくれるテーブルウェアは「白色」が基本。そんな中に、カラフルなテーブルウェアを取り入れてみると、ちょっと毎日が楽しくなります。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ちょっと大胆な柄物は、絵柄が好みな作家やメーカーさんのものを揃えてみるといいかもしれません。長く使っていると、お気に入りの一品になってきます。</p>\n<!-- /wp:paragraph -->','カラフルなテーブルウエア','','publish','open','open','','tableware','','','2019-07-27 21:16:27','2019-07-27 12:16:27','',0,'https://www.www.www/?p=80',0,'post','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2019-08-10 21:16:59','2019-08-10 12:16:59','','tableware','','inherit','open','closed','','tableware-2','','','2019-08-10 21:16:59','2019-08-10 12:16:59','',80,'http://wordpresslesson.local/wp-content/uploads/2019/08/tableware.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2019-07-25 21:42:32','2019-07-25 12:42:32','<!-- wp:image {\"id\":84} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/green.jpg\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>緑の植物が身近にあると、なんとなく癒やされる気がしてきます。自然に触れることでストレスが軽減されるという研究結果もあるみたいです。</p>\n<!-- /wp:paragraph -->','植物が持つパワーを活用する','','publish','open','open','','power','','','2019-07-25 21:42:32','2019-07-25 12:42:32','',0,'https://www.www.www/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2019-08-10 21:42:43','2019-08-10 12:42:43','','green','','inherit','open','closed','','green','','','2019-08-10 21:42:43','2019-08-10 12:42:43','',83,'http://wordpresslesson.local/wp-content/uploads/2019/08/green.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2019-07-20 22:10:20','2019-07-20 13:10:20','<!-- wp:image {\"id\":87} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/macaron.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>手土産にして喜んでもらえるお菓子ってどんなものでしょう？　定番のものからちょっと変わったものまで… ぱっと目を引くのであればカラフルなお菓子もいいかもしれません。</p>\n<!-- /wp:paragraph -->','手土産に喜ばれるお菓子','','publish','open','open','','sweets','','','2019-07-20 22:10:20','2019-07-20 13:10:20','',0,'https://www.www.www/?p=86',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2019-08-10 22:10:37','2019-08-10 13:10:37','','macaron','','inherit','open','closed','','macaron','','','2019-08-10 22:10:37','2019-08-10 13:10:37','',86,'http://wordpresslesson.local/wp-content/uploads/2019/08/macaron.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2019-07-18 22:12:08','2019-07-18 13:12:08','<!-- wp:image {\"id\":90} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/choco.jpg\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>チョコレートと言えばお菓子の定番。やっぱり欠かすことはできません。小さくても、おいしいチョコレートが１粒あれば、それだけで幸せになれちゃいます。</p>\n<!-- /wp:paragraph -->','お茶とチョコレートの組み合わせ','','publish','open','open','','choco','','','2019-07-18 22:12:08','2019-07-18 13:12:08','',0,'https://www.www.www/?p=89',0,'post','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2019-08-10 22:12:35','2019-08-10 13:12:35','','choco','','inherit','open','closed','','choco-2','','','2019-08-10 22:12:35','2019-08-10 13:12:35','',89,'http://wordpresslesson.local/wp-content/uploads/2019/08/choco.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2019-07-15 22:14:26','2019-07-15 13:14:26','<!-- wp:image {\"id\":93} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/teabag.jpg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>手軽にお茶をいれることができるティーバッグ。何種類ものお茶を少しずつ楽しみたいときにもうってつけです。</p>\n<!-- /wp:paragraph -->','ティーバッグの楽しみ方','','publish','open','open','','teabag','','','2019-07-15 22:14:26','2019-07-15 13:14:26','',0,'https://www.www.www/?p=92',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2019-08-10 22:16:46','2019-08-10 13:16:46','','teabag','','inherit','open','closed','','teabag-2','','','2019-08-10 22:16:46','2019-08-10 13:16:46','',92,'http://wordpresslesson.local/wp-content/uploads/2019/08/teabag.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2019-07-07 22:18:37','2019-07-07 13:18:37','<!-- wp:image {\"id\":96} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/berry.jpg\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>そのまま食べても、デザートにしてもおいしいのがフルーツ。そんなフルーツの果実たっぷりのアイスクリームは、一度食べたらやめられなくなります。</p>\n<!-- /wp:paragraph -->','果実たっぷりのアイスクリーム','','publish','open','open','','ice-cream','','','2019-07-07 22:18:37','2019-07-07 13:18:37','',0,'https://www.www.www/?p=95',0,'post','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2019-08-10 22:18:52','2019-08-10 13:18:52','','berry','','inherit','open','closed','','berry','','','2019-08-10 22:18:52','2019-08-10 13:18:52','',95,'http://wordpresslesson.local/wp-content/uploads/2019/08/berry.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2019-06-25 22:21:47','2019-06-25 13:21:47','<!-- wp:image {\"id\":99} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/present.jpg\" alt=\"\" class=\"wp-image-99\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>手作りのオリジナルプレゼントを作るとき、いつも迷うのがラッピングです。かわいくする？ かっこよくする？ それともここは渋く攻める…？ などなど。</p>\n<!-- /wp:paragraph -->','贈り物のラッピング','','publish','open','open','','present','','','2019-06-25 22:21:47','2019-06-25 13:21:47','',0,'https://www.www.www/?p=98',0,'post','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2019-08-10 22:21:34','2019-08-10 13:21:34','','present','','inherit','open','closed','','present-2','','','2019-08-10 22:21:34','2019-08-10 13:21:34','',98,'http://wordpresslesson.local/wp-content/uploads/2019/08/present.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (102,1,'2019-06-18 22:26:54','2019-06-18 13:26:54','<!-- wp:image {\"id\":103} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/plant.jpg\" alt=\"\" class=\"wp-image-103\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>店内にはいろいろなインテリアがあります。テーブル、椅子、ライト、観葉植物 etc... 天井が高いので、仰ぎ見ないと気づかないものもあるかもしれません。</p>\n<!-- /wp:paragraph -->','店内のインテリア','','publish','open','open','','interior','','','2019-06-18 22:26:54','2019-06-18 13:26:54','',0,'https://www.www.www/?p=102',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2019-08-10 22:26:26','2019-08-10 13:26:26','','plant','','inherit','open','closed','','plant','','','2019-08-10 22:26:26','2019-08-10 13:26:26','',102,'http://wordpresslesson.local/wp-content/uploads/2019/08/plant.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (106,1,'2019-06-08 22:33:15','2019-06-08 13:33:15','<!-- wp:image {\"id\":107} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/yellow.jpg\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>昨日に続いて、今日も街の彩りです。毎年のことですが、大通りの並木道はすっかり黄色に染まってきました。</p>\n<!-- /wp:paragraph -->','街の彩り','','publish','open','open','','color','','','2019-06-08 22:33:15','2019-06-08 13:33:15','',0,'https://www.www.www/?p=106',0,'post','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2019-08-10 22:30:40','2019-08-10 13:30:40','','yellow','','inherit','open','closed','','yellow','','','2019-08-10 22:30:40','2019-08-10 13:30:40','',106,'http://wordpresslesson.local/wp-content/uploads/2019/08/yellow.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (109,1,'2019-06-07 22:35:44','2019-06-07 13:35:44','<!-- wp:image {\"id\":110} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/townscape.jpg\" alt=\"\" class=\"wp-image-110\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>街を散歩していたら、チョコレート色の風景に出会いました。「チョコレート色だ！」と思うと、なんだか美味しそうな景色に見えてきちゃいます。</p>\n<!-- /wp:paragraph -->','チョコレート色の風景','','publish','open','open','','choco-color','','','2019-06-07 22:35:44','2019-06-07 13:35:44','',0,'https://www.www.www/?p=109',0,'post','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2019-08-10 22:34:16','2019-08-10 13:34:16','','townscape','','inherit','open','closed','','townscape','','','2019-08-10 22:34:16','2019-08-10 13:34:16','',109,'http://wordpresslesson.local/wp-content/uploads/2019/08/townscape.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (112,1,'2019-06-02 22:40:14','2019-06-02 13:40:14','<!-- wp:image {\"id\":113} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/assort.jpg\" alt=\"\" class=\"wp-image-113\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>たくさんの選択肢の中から好きに選び取ることができるのを「よりどりみどり」と言います。とても幸せなことなのですが、決めきれない性格をしていると、どれを選ぶべきか迷いに迷って困ってしまうこともあります。</p>\n<!-- /wp:paragraph -->','よりどりみどり','','publish','open','open','','assort','','','2019-06-02 22:40:14','2019-06-02 13:40:14','',0,'https://www.www.www/?p=112',0,'post','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2019-08-10 22:36:38','2019-08-10 13:36:38','','assort','','inherit','open','closed','','assort-2','','','2019-08-10 22:36:38','2019-08-10 13:36:38','',112,'http://wordpresslesson.local/wp-content/uploads/2019/08/assort.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (115,1,'2019-05-30 22:43:47','2019-05-30 13:43:47','<!-- wp:image {\"id\":116} -->\n<figure class=\"wp-block-image\"><img src=\"http://wordpresslesson.local/wp-content/uploads/2019/08/cup.jpg\" alt=\"\" class=\"wp-image-116\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>どこのお家でもキッチンスペースには限りがあります。無限に何でも置いておけるわけではありません。おしゃれなカップもたくさんありますが、使い勝手や収納まで考えてデザインされたものは日常生活でとても重宝します。</p>\n<!-- /wp:paragraph -->','使いやすいデザイン','','publish','open','open','','design','','','2019-05-30 22:43:47','2019-05-30 13:43:47','',0,'https://www.www.www/?p=115',0,'post','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2019-08-08 15:47:51','2019-08-08 06:47:51','','tea','','inherit','open','closed','','tea-3','','','2019-08-08 15:47:51','2019-08-08 06:47:51','',56,'http://wordpresslesson.local/wp-content/uploads/2019/08/tea.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (117,1,'2019-08-10 22:41:48','2019-08-10 13:41:48','','cup','','inherit','open','closed','','cup','','','2019-08-10 22:41:48','2019-08-10 13:41:48','',115,'http://wordpresslesson.local/wp-content/uploads/2019/08/cup.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (387,1,'2019-08-05 17:33:09','2019-08-05 08:33:09','','jam','','inherit','open','closed','','jam','','','2019-08-05 17:33:09','2019-08-05 08:33:09','',77,'http://wordpresslesson.local/wp-content/uploads/2019/08/jam.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (389,1,'2021-07-05 12:41:31','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2021-07-05 12:41:31','0000-00-00 00:00:00','',0,'http://wordpresslesson.local/?p=389',0,'post','',0);
INSERT INTO `wp_posts` VALUES (392,1,'2021-07-05 16:20:35','2021-07-05 06:50:35','','tea','','inherit','open','closed','','tea-4','','','2021-07-05 16:20:35','2021-07-05 06:50:35','',77,'http://wordpresslesson.local/wp-content/uploads/2019/08/tea-1.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,3,0);
INSERT INTO `wp_term_relationships` VALUES (56,1,0);
INSERT INTO `wp_term_relationships` VALUES (56,3,0);
INSERT INTO `wp_term_relationships` VALUES (77,2,0);
INSERT INTO `wp_term_relationships` VALUES (77,3,0);
INSERT INTO `wp_term_relationships` VALUES (80,4,0);
INSERT INTO `wp_term_relationships` VALUES (83,3,0);
INSERT INTO `wp_term_relationships` VALUES (86,1,0);
INSERT INTO `wp_term_relationships` VALUES (86,2,0);
INSERT INTO `wp_term_relationships` VALUES (89,1,0);
INSERT INTO `wp_term_relationships` VALUES (89,2,0);
INSERT INTO `wp_term_relationships` VALUES (92,1,0);
INSERT INTO `wp_term_relationships` VALUES (92,3,0);
INSERT INTO `wp_term_relationships` VALUES (95,2,0);
INSERT INTO `wp_term_relationships` VALUES (95,4,0);
INSERT INTO `wp_term_relationships` VALUES (98,2,0);
INSERT INTO `wp_term_relationships` VALUES (98,3,0);
INSERT INTO `wp_term_relationships` VALUES (102,3,0);
INSERT INTO `wp_term_relationships` VALUES (102,4,0);
INSERT INTO `wp_term_relationships` VALUES (106,4,0);
INSERT INTO `wp_term_relationships` VALUES (109,2,0);
INSERT INTO `wp_term_relationships` VALUES (109,4,0);
INSERT INTO `wp_term_relationships` VALUES (112,2,0);
INSERT INTO `wp_term_relationships` VALUES (115,1,0);
INSERT INTO `wp_term_relationships` VALUES (115,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'お茶','tea',0);
INSERT INTO `wp_terms` VALUES (2,'お菓子','sweets',0);
INSERT INTO `wp_terms` VALUES (3,'ショップ','shop',0);
INSERT INTO `wp_terms` VALUES (4,'リラクゼーション','relax',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','MONI');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','ケーキ、チョコレート、プリン、寒天、飴などなど、おいしいお茶とお菓子を追い求める日々を過ごしています。');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"f2b5568649580287668ba0c6f592302e9c260c99e38bfc3a4d409e3fb5435c86\";a:4:{s:10:\"expiration\";i:1626504867;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\";s:5:\"login\";i:1625295267;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1625468123');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'aaa','$P$B/LYD4JaEaxLXUJ89nsZU2AcVt3ybm.','aaa','r12m097@yahoo.cp.jp','http://wordpresslesson.local','2021-07-03 06:53:51','',0,'MONI');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-05 19:36:28
