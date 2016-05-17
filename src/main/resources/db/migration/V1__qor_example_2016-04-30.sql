# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.30)
# Database: qor_example
# Generation Time: 2016-04-30 09:39:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_addresses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table asset_managers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_managers`;

CREATE TABLE `asset_managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_managers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_categories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table categories_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories_draft`;

CREATE TABLE `categories_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_categories_draft_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collections`;

CREATE TABLE `collections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_collections_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table collections_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collections_draft`;

CREATE TABLE `collections_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_collections_draft_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table color_variation_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `color_variation_images`;

CREATE TABLE `color_variation_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `color_variation_id` int(10) unsigned DEFAULT NULL,
  `image` varchar(4096) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_color_variation_images_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table color_variations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `color_variations`;

CREATE TABLE `color_variations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `color_id` int(10) unsigned DEFAULT NULL,
  `color_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_color_variations_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table colors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `colors`;

CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_colors_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table colors_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `colors_draft`;

CREATE TABLE `colors_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_colors_draft_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `size_variation_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_rate` int(10) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `payment_amount` double DEFAULT NULL,
  `abandoned_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `discount_value` int(10) unsigned DEFAULT NULL,
  `tracking_number` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `shipping_address_id` int(10) unsigned DEFAULT NULL,
  `billing_address_id` int(10) unsigned DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_orders_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table product_collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_collections`;

CREATE TABLE `product_collections` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `collection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `collection_language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`,`product_language_code`,`collection_id`,`collection_language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table product_collections_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_collections_draft`;

CREATE TABLE `product_collections_draft` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `collection_id` int(10) unsigned NOT NULL DEFAULT '0',
  `collection_language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`,`product_language_code`,`collection_id`,`collection_language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_with_slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `made_country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_products_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table products_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products_draft`;

CREATE TABLE `products_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_with_slug` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `made_country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_products_draft_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table publish_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `publish_events`;

CREATE TABLE `publish_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `argument` longtext COLLATE utf8_bin,
  `publish_status` tinyint(1) DEFAULT NULL,
  `published_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_publish_events_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table qor_activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qor_activities`;

CREATE TABLE `qor_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `note` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resource_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creator_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qor_activities_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table qor_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qor_jobs`;

CREATE TABLE `qor_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT 'new',
  `progress` int(10) unsigned DEFAULT NULL,
  `progress_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `log` longtext COLLATE utf8_bin,
  `results_table` longtext COLLATE utf8_bin,
  `created_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `idx_qor_jobs_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table qor_widget_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qor_widget_settings`;

CREATE TABLE `qor_widget_settings` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `scope` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `template` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` longtext COLLATE utf8_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`name`,`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `qor_widget_settings` WRITE;
/*!40000 ALTER TABLE `qor_widget_settings` DISABLE KEYS */;

INSERT INTO `qor_widget_settings` (`name`, `scope`, `template`, `kind`, `value`, `created_at`, `updated_at`)
VALUES
	(X'4665617475726550726F6475637473',X'64656661756C74',X'',X'50726F6475637473','','2016-04-29 00:30:54','2016-04-29 00:30:54'),
	(X'546F7042616E6E6572',X'64656661756C74',X'',X'42616E6E6572','','2016-04-29 00:30:54','2016-04-29 00:30:54');

/*!40000 ALTER TABLE `qor_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table seo_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seo_settings`;

CREATE TABLE `seo_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `default_page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `product_page` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_seo_settings_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` int(10) unsigned DEFAULT NULL,
  `gift_wrapping_fee` int(10) unsigned DEFAULT NULL,
  `cod_fee` int(10) unsigned DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_settings_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table size_variations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `size_variations`;

CREATE TABLE `size_variations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `color_variation_id` int(10) unsigned DEFAULT NULL,
  `size_id` int(10) unsigned DEFAULT NULL,
  `available_quantity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_size_variations_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table sizes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sizes`;

CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_sizes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table sizes_draft
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sizes_draft`;

CREATE TABLE `sizes_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_sizes_draft_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table state_change_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `state_change_logs`;

CREATE TABLE `state_change_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `refer_table` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `refer_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `note` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_state_change_logs_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table stores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_stores_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `locale` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `key` longtext COLLATE utf8_bin,
  `value` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;

INSERT INTO `translations` (`locale`, `key`, `value`)
VALUES
	(X'656E2D5553',X'716F725F7769646765742E666F726D2E65646974',X'4564697420576964676574'),
	(X'656E2D5553',X'4C6174657374204F7264657273',X'4C6174657374204F7264657273'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E55736572',X'55736572'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E5061796D656E7420416D6F756E74',X'5061796D656E7420416D6F756E74'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E53686970706564204174',X'53686970706564204174'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E43616E63656C6C6564204174',X'43616E63656C6C6564204174'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E5374617465',X'5374617465'),
	(X'656E2D5553',X'6F72646572732E617474726962757465732E5368697070696E672041646472657373',X'5368697070696E672041646472657373'),
	(X'656E2D5553',X'5265706F727473',X'5265706F727473'),
	(X'656E2D5553',X'557064617465205265706F7274',X'557064617465205265706F7274'),
	(X'656E2D5553',X'596573746572646179',X'596573746572646179'),
	(X'656E2D5553',X'54686973205765656B',X'54686973205765656B'),
	(X'656E2D5553',X'4C617374205765656B',X'4C617374205765656B'),
	(X'656E2D5553',X'50616964204F726465727320436F756E74',X'50616964204F726465727320436F756E74'),
	(X'656E2D5553',X'5265676973746572656420557365727320436F756E74',X'5265676973746572656420557365727320436F756E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6C61796F75742E7469746C65',X'41646D696E'),
	(X'656E2D5553',X'516F722044454D4F',X'516F722044454D4F'),
	(X'656E2D5553',X'716F725F61646D696E2E6C61796F75742E736B69705F746F5F636F6E74656E74',X'536B697020746F20636F6E74656E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6C61796F75742E6C6F676765645F696E5F6173',X'4C6F6767656420696E206173207B7B2E446973706C61794E616D657D7D'),
	(X'656E2D5553',X'716F725F61646D696E2E6C61796F75742E6C6F676F',X'3C6120687265663D227B7B2E5072656669787D7D223E3C7370616E20636C6173733D2276697375616C6C7968696464656E223E514F523C2F7370616E3E3C2F613E3C6120687265663D222F22207461726765743D225F626C616E6B223E566965772053697465203C6920636C6173733D226D6174657269616C2D69636F6E73206D642D31342220617269612D68696464656E3D2274727565223E6F70656E5F696E5F6E65773C2F693E3C2F613E'),
	(X'656E2D5553',X'716F725F61646D696E2E7365617263685F63656E7465722E68696E74',X'536561726368E280A6'),
	(X'656E2D5553',X'716F725F61646D696E2E7365617263685F63656E7465722E7469746C65',X'5365617263682043656E746572'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E44617368626F617264',X'44617368626F617264'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E50726F64756374204D616E6167656D656E74',X'50726F64756374204D616E6167656D656E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E50726F6475637473',X'50726F6475637473'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E436F6C6F7273',X'436F6C6F7273'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53697A6573',X'53697A6573'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E43617465676F72696573',X'43617465676F72696573'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E436F6C6C656374696F6E73',X'436F6C6C656374696F6E73'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E4F72646572204D616E6167656D656E74',X'4F72646572204D616E6167656D656E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E4F7264657273',X'4F7264657273'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E4162616E646F6E6564204F7264657273',X'4162616E646F6E6564204F7264657273'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53746F7265204D616E6167656D656E74',X'53746F7265204D616E6167656D656E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53746F726573',X'53746F726573'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53697465204D616E6167656D656E74',X'53697465204D616E6167656D656E74'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E5472616E736C6174696F6E73',X'5472616E736C6174696F6E73'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53454F2053657474696E67',X'53454F2053657474696E67'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E53657474696E67',X'53657474696E67'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E5573657273',X'5573657273'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E5075626C697368',X'5075626C697368'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E576F726B657273',X'576F726B657273'),
	(X'656E2D5553',X'716F725F61646D696E2E6D656E75732E57696467657473',X'57696467657473'),
	(X'656E2D5553',X'716F725F61646D696E2E6C61796F75742E706F77657265645F6279',X'506F7765726564206279203C6120687265663D22687474703A2F2F676574716F722E636F6D22207461726765743D225F626C616E6B223E514F523C2F613E');

/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
