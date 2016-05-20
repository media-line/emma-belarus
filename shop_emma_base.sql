-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Хост: tyr.local
-- Время создания: Май 19 2016 г., 15:15
-- Версия сервера: 5.6.22-72.0
-- Версия PHP: 5.4.42

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop_emma_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_assets`
--

CREATE TABLE IF NOT EXISTS `k35f2_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_assets`
--

INSERT INTO `k35f2_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 139, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 42, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 43, 44, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 45, 46, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 47, 48, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 49, 50, 1, 'com_login', 'com_login', '{}'),
(13, 1, 51, 52, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 53, 54, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 55, 56, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 57, 58, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 59, 60, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 61, 94, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 95, 98, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 99, 100, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 101, 102, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 103, 104, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 105, 106, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 107, 110, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 111, 114, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 115, 116, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 96, 97, 2, 'com_newsfeeds.category.5', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 112, 113, 2, 'com_weblinks.category.6', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 108, 109, 1, 'com_users.category.7', 'Без категории', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 117, 118, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 119, 120, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 121, 122, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 123, 124, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 125, 126, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 127, 128, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 62, 63, 2, 'com_modules.module.1', 'Главное меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(40, 18, 64, 65, 2, 'com_modules.module.2', 'Вход', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 66, 67, 2, 'com_modules.module.3', 'Популярные статьи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 68, 69, 2, 'com_modules.module.4', 'Недавно добавленные статьи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 70, 71, 2, 'com_modules.module.8', 'Панель инструментов', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 72, 73, 2, 'com_modules.module.9', 'Быстрые иконки', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 74, 75, 2, 'com_modules.module.10', 'Зарегистрированные пользователи', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 76, 77, 2, 'com_modules.module.12', 'Меню администратора', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 78, 79, 2, 'com_modules.module.13', 'Подменю администратора', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 80, 81, 2, 'com_modules.module.14', 'Статус пользователя', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 82, 83, 2, 'com_modules.module.15', 'Заголовок', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 84, 85, 2, 'com_modules.module.16', 'Авторизация', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 86, 87, 2, 'com_modules.module.17', 'Хлебные крошки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 88, 89, 2, 'com_modules.module.79', 'Мультиязычность', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 90, 91, 2, 'com_modules.module.86', 'Версия Joomla', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 129, 130, 1, 'com_jsecure', 'jsecure', '{}'),
(55, 1, 131, 132, 1, 'com_jce', 'jce', '{}'),
(56, 1, 133, 134, 1, 'com_xmap', 'com_xmap', '{}'),
(57, 1, 135, 138, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(58, 18, 92, 93, 2, 'com_modules.module.87', 'Слайдер', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 57, 136, 137, 2, 'com_djimageslider.category.8', 'Без категории', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 8, 22, 23, 2, 'com_content.category.9', 'Главная', '{}'),
(61, 8, 24, 25, 2, 'com_content.category.10', 'Календарь', '{}'),
(62, 8, 26, 27, 2, 'com_content.category.11', 'Регистрация', '{}'),
(63, 8, 28, 29, 2, 'com_content.category.12', 'Результаты', '{}'),
(64, 8, 30, 31, 2, 'com_content.category.13', 'Правила', '{}'),
(65, 8, 32, 33, 2, 'com_content.category.14', 'Студии', '{}'),
(66, 8, 34, 35, 2, 'com_content.category.15', 'Судьи', '{}'),
(67, 8, 36, 37, 2, 'com_content.category.16', 'Фотогалерея', '{}'),
(68, 8, 38, 39, 2, 'com_content.category.17', 'Форум', '{}'),
(69, 8, 40, 41, 2, 'com_content.category.18', 'Контакты', '{}'),
(70, 27, 19, 20, 3, 'com_content.article.1', 'Календарь', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_associations`
--

CREATE TABLE IF NOT EXISTS `k35f2_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_banners`
--

CREATE TABLE IF NOT EXISTS `k35f2_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_banner_clients`
--

CREATE TABLE IF NOT EXISTS `k35f2_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `k35f2_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_categories`
--

CREATE TABLE IF NOT EXISTS `k35f2_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_categories`
--

INSERT INTO `k35f2_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 35, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Без категории', 'uncategorised', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 59, 1, 13, 14, 1, 'uncategorised', 'com_djimageslider', 'Без категории', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 179, '2014-03-09 20:37:14', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 60, 1, 15, 16, 1, 'glavnaya', 'com_content', 'Главная', 'glavnaya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 12:33:07', 0, '2016-03-23 12:33:07', 0, '*', 1),
(10, 61, 1, 17, 18, 1, 'kalendar', 'com_content', 'Календарь', 'kalendar', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:53:41', 627, '2016-03-23 20:53:47', 0, '*', 1),
(11, 62, 1, 19, 20, 1, 'registratsiya', 'com_content', 'Регистрация', 'registratsiya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:02', 0, '2016-03-23 20:54:02', 0, '*', 1),
(12, 63, 1, 21, 22, 1, 'rezultaty', 'com_content', 'Результаты', 'rezultaty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:12', 0, '2016-03-23 20:54:12', 0, '*', 1),
(13, 64, 1, 23, 24, 1, 'pravila', 'com_content', 'Правила', 'pravila', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:21', 0, '2016-03-23 20:54:21', 0, '*', 1),
(14, 65, 1, 25, 26, 1, 'studii', 'com_content', 'Студии', 'studii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:35', 0, '2016-03-23 20:54:35', 0, '*', 1),
(15, 66, 1, 27, 28, 1, 'sudi', 'com_content', 'Судьи', 'sudi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:43', 0, '2016-03-23 20:54:43', 0, '*', 1),
(16, 67, 1, 29, 30, 1, 'fotogalereya', 'com_content', 'Фотогалерея', 'fotogalereya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:54:56', 0, '2016-03-23 20:54:56', 0, '*', 1),
(17, 68, 1, 31, 32, 1, 'forum', 'com_content', 'Форум', 'forum', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:55:02', 0, '2016-03-23 20:55:02', 0, '*', 1),
(18, 69, 1, 33, 34, 1, 'kontakty', 'com_content', 'Контакты', 'kontakty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 627, '2016-03-23 20:55:13', 0, '2016-03-23 20:55:13', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_contact_details`
--

CREATE TABLE IF NOT EXISTS `k35f2_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_content`
--

CREATE TABLE IF NOT EXISTS `k35f2_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_content`
--

INSERT INTO `k35f2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 70, 'Календарь', 'kalendar', '<h2><strong>Календарь предстоящих соревнований по Автозвуку и тюнингу по версии ЕММА, Беларусь.</strong></h2>\r\n<p>&nbsp;</p>\r\n<table style="height: 131px; width: 748px; border: 1px; bordercolor: black;">\r\n<tbody>\r\n<tr>\r\n<td><strong>Дата</strong></td>\r\n<td><strong>Город</strong></td>\r\n<td><strong>&nbsp;Событие</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Май 2016г.</td>\r\n<td>Гомель</td>\r\n<td>&nbsp;Открытие чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n<tr>\r\n<td>Июнь 2016г.</td>\r\n<td>Бобруйск</td>\r\n<td>&nbsp;Официальный этап чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n<tr>\r\n<td>Июль, 23, 2016г.</td>\r\n<td>Гродно</td>\r\n<td>&nbsp;Официальный этап чемпионата РБ по автозвуку и тюнингу. Sunday 2016.</td>\r\n</tr>\r\n<tr>\r\n<td>Август 2016г.</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;Официальный этап чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n<tr>\r\n<td>Сентябрь 2016г.</td>\r\n<td>Гомель</td>\r\n<td>&nbsp;Финал чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>Точные места и схемы проездов будут указаны в новостях, после начала регистрации на соревнования.</p>', '', 1, 2, '2016-03-24 11:53:50', 627, '', '2016-03-24 11:53:50', 0, 627, '2016-03-24 13:21:44', '2016-03-24 11:53:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 147, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `k35f2_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `k35f2_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_content_rating`
--

CREATE TABLE IF NOT EXISTS `k35f2_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_content_types`
--

CREATE TABLE IF NOT EXISTS `k35f2_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_content_types`
--

INSERT INTO `k35f2_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `k35f2_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_djimageslider`
--

CREATE TABLE IF NOT EXISTS `k35f2_djimageslider` (
  `id` int(10) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_extensions`
--

CREATE TABLE IF NOT EXISTS `k35f2_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10019 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_extensions`
--

INSERT INTO `k35f2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"e32f14c67021df966176d1dfdcb53e1e"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"2","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `k35f2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(602, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (site) for Joomla! 3.2","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(603, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (administrator) for Joomla! 3.2","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'RSMetro', 'template', 'rsmetro', '', 0, 1, 1, 0, '{"name":"RSMetro","type":"template","creationDate":"16 November 2012","author":"gdv","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"info@redsoft.ru","authorUrl":"http:\\/\\/www.redsoft.ru","version":"1.0.0","description":"template RSMetro","group":""}', '{"logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Segoe UI"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'red_isis', 'template', 'red_isis', '', 1, 1, 1, 0, '{"name":"red_isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_RED_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"#13294A","headerColor":"#184A7D","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'System - jSecure Authentication', 'plugin', 'jsecure', 'system', 0, 1, 1, 0, '{"name":"System - jSecure Authentication","type":"plugin","creationDate":"2008-08-28","author":"Ajay Lulia","copyright":"This module is released under the GNU\\/GPL License","authorEmail":"ajay.lulia@joomlaserviceprovider.com","authorUrl":"www.joomlaserviceprovider.com","version":"2.1.10","description":"jSecure Authentication secures the admin login page. Set the parameters for this plugin in the jSecure Authentication component admin screen. Click on: Components -> jSecure Authentication","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'jsecure', 'component', 'com_jsecure', '', 1, 1, 0, 0, '{"name":"jsecure","type":"component","creationDate":"2008-08-28","author":"Ajay Lulia","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"ajay.lulia@joomlaserviceprovider.com","authorUrl":"www.joomlaserviceprovider.com","version":"2.1.10","description":"jSecure Authentication has been successfully installed.","group":""}', '{"version":"2.1.10"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.4.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'com_xmap', 'component', 'com_xmap', '', 1, 1, 0, 0, '{"name":"com_xmap","type":"component","creationDate":"2011-04-10","author":"Guillermo Vargas","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"guille@vargas.co.cr","authorUrl":"http:\\/\\/www.jooxmap.com","version":"2.3.4","description":"Xmap - Sitemap Generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Xmap - Content Plugin', 'plugin', 'com_content', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Content Plugin","type":"plugin","creationDate":"01\\/26\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.4","description":"XMAP_CONTENT_PLUGIN_DESCRIPTION","group":""}', '{"expand_categories":"1","expand_featured":"1","include_archived":"2","show_unauth":"0","add_pagebreaks":"1","max_art":"0","max_art_age":"0","add_images":"1","cat_priority":"-1","cat_changefreq":"-1","art_priority":"-1","art_changefreq":"-1","keywords":"metakey"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Xmap - Kunena Plugin', 'plugin', 'com_kunena', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Kunena Plugin","type":"plugin","creationDate":"September 2007","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"3.0.0","description":"Xmap Plugin for Kunena component","group":""}', '{"include_topics":"1","max_topics":"","max_age":"","cat_priority":"-1","cat_changefreq":"-1","topic_priority":"-1","topic_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Xmap - SobiPro Plugin', 'plugin', 'com_sobipro', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - SobiPro Plugin","type":"plugin","creationDate":"07\\/15\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"Xmap Plugin for SobiPro component","group":""}', '{"include_entries":"1","max_entries":"","max_age":"","entries_order":"a.ordering","entries_orderdir":"DESC","cat_priority":"-1","cat_changefreq":"weekly","entry_priority":"-1","entry_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Xmap - Mosets Tree Plugin', 'plugin', 'com_mtree', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Mosets Tree Plugin","type":"plugin","creationDate":"07\\/20\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"XMAP_MTREE_PLUGIN_DESCRIPTION","group":""}', '{"cats_order":"cat_name","cats_orderdir":"ASC","include_links":"1","links_order":"ordering","entries_orderdir":"ASC","max_links":"","max_age":"","cat_priority":"0.5","cat_changefreq":"weekly","link_priority":"0.5","link_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Xmap - Virtuemart Plugin', 'plugin', 'com_virtuemart', 'xmap', 0, 0, 1, 0, '{"name":"Xmap - Virtuemart Plugin","type":"plugin","creationDate":"January 2012","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.3","description":"XMAP_VM_PLUGIN_DESCRIPTION","group":""}', '{"include_products":"1","cat_priority":"-1","cat_changefreq":"-1","prod_priority":"-1","prod_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Xmap - WebLinks Plugin', 'plugin', 'com_weblinks', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - WebLinks Plugin","type":"plugin","creationDate":"Apr 2004","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.1","description":"XMAP_WL_PLUGIN_DESCRIPTION","group":""}', '{"include_links":"1","max_links":"","cat_priority":"-1","cat_changefreq":"-1","link_priority":"-1","link_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'XMAP_PLUGIN_K2', 'plugin', 'com_k2', 'xmap', 0, 0, 1, 0, '{"name":"XMAP_PLUGIN_K2","type":"plugin","creationDate":"November 2011","author":"Mohammad Hasani Eghtedar","copyright":"GNU GPL","authorEmail":"m.h.eghtedar@gmail.com","authorUrl":"https:\\/\\/github.com\\/mhehm\\/Xmap","version":"1.3","description":"XMAP_PLUGIN_K2_DESC","group":""}', '{"subcategories":"no","showk2items":"always","suppressdups":"no","priority":"0.5","changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Xmap Package', 'package', 'pkg_xmap', '', 0, 1, 1, 0, '{"name":"Xmap Package","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.3.3","description":"The Site Map generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"March 2013","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"DJ-ImageSlider Module","group":""}', '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","image_width":"240","image_height":"180","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Expo","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.2.2","description":"\\n\\t\\t<style> #right-text {font-family:Arial, Helvetica, sans-serif;\\tfont-size:11px;\\t} #right-text a:link, #right-text a:visited {color:#4991c1;font-weight:bold; font-size: 13px;} #right-text a:hover {text-decoration:underline;}\\t#right-text h2 {color:#fa9539;text-transform:uppercase;\\tfont-size:16px;\\tpadding:0;\\tmargin:2px 0;}\\t#right-text p {padding:0;margin:4px 0;}\\t#left-logo {float:left;width:270px;height:120px;display:block;} #left-logo img {margin: 40px 20px;} #right-text {float:left;width:400px;}<\\/style>\\n\\t\\n\\t\\t<div id=\\"left-logo\\">\\n\\t\\t\\t<a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\"><img src=\\"http:\\/\\/new.dj-extensions.com\\/templates\\/dj-extensions\\/images\\/logo.png\\" alt=\\"DJ-Extensions.com\\" \\/><\\/a>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<div id=\\"right-text\\">\\n\\t\\t\\t<h2>Thank you for installing DJ-ImageSlider!<\\/h2>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display image slides with title and short description linked to any menu item, article or custom url address.<\\/p>\\n\\t\\t\\t<p>If you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and search our <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/forum\\">Support Forum<\\/a><br \\/><br \\/>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t<\\/div>\\n\\t\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_filters`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_finder_taxonomy`
--

INSERT INTO `k35f2_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_terms`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_finder_terms_common`
--

INSERT INTO `k35f2_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_finder_types`
--

CREATE TABLE IF NOT EXISTS `k35f2_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_jsecurelog`
--

CREATE TABLE IF NOT EXISTS `k35f2_jsecurelog` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(16) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `change_variable` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_languages`
--

CREATE TABLE IF NOT EXISTS `k35f2_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_languages`
--

INSERT INTO `k35f2_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'ru-RU', 'Russian', 'Russian', 'ru', 'ru', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_menu`
--

CREATE TABLE IF NOT EXISTS `k35f2_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_menu`
--

INSERT INTO `k35f2_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 81, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(102, 'main', 'COM_JSECURE_AUTHENTICATION', 'com-jsecure-authentication', '', 'com-jsecure-authentication', 'index.php?option=com_jsecure', 'component', 0, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jsecure/images/jSecure_icon_16x16.png', 0, '', 49, 58, 0, '', 1),
(103, 'main', 'BASIC_CONFIGURATION', 'basic-configuration', '', 'com-jsecure-authentication/basic-configuration', 'index.php?option=com_jsecure&task=basic', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 50, 51, 0, '', 1),
(104, 'main', 'ADVANCED_CONFIGURATION', 'advanced-configuration', '', 'com-jsecure-authentication/advanced-configuration', 'index.php?option=com_jsecure&task=advanced', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 52, 53, 0, '', 1),
(105, 'main', 'VIEW_LOG', 'view-log', '', 'com-jsecure-authentication/view-log', 'index.php?option=com_jsecure&task=log', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 54, 55, 0, '', 1),
(106, 'main', 'HELP', 'help', '', 'com-jsecure-authentication/help', 'index.php?option=com_jsecure&task=help', 'component', 0, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 56, 57, 0, '', 1),
(107, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 59, 68, 0, '', 1),
(108, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 60, 61, 0, '', 1),
(109, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 62, 63, 0, '', 1),
(110, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 64, 65, 0, '', 1),
(111, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 66, 67, 0, '', 1),
(112, 'main', 'COM_XMAP_TITLE', 'com-xmap-title', '', 'com-xmap-title', 'index.php?option=com_xmap', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_xmap/images/xmap-favicon.png', 0, '', 69, 70, 0, '', 1),
(113, 'mainmenu', 'Карта сайта', 'map', '', 'map', 'index.php?option=com_xmap&view=html&id=1', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"include_css":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(114, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '', 73, 78, 0, '', 1),
(115, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 114, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '', 74, 75, 0, '', 1),
(116, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 114, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '', 76, 77, 0, '', 1),
(117, 'mainmenu', 'Календарь', 'kalendar-menu', '', 'kalendar-menu', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 1, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_menu_types`
--

CREATE TABLE IF NOT EXISTS `k35f2_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_menu_types`
--

INSERT INTO `k35f2_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Главное меню', 'Главное меню сайта');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_messages`
--

CREATE TABLE IF NOT EXISTS `k35f2_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `k35f2_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_modules`
--

CREATE TABLE IF NOT EXISTS `k35f2_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_modules`
--

INSERT INTO `k35f2_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Главное меню', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '2016-03-24 12:18:44', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"nav-pills","class_sfx":"nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Вход', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Популярные статьи', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Недавно добавленные статьи', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Панель инструментов', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Быстрые иконки', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Зарегистрированные пользователи', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Меню администратора', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Подменю администратора', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'Статус пользователя', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Заголовок', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Авторизация', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Хлебные крошки', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 68, 'Мультиязычность', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Версия Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 58, 'Слайдер', '', '', 1, '', 0, '0000-00-00 00:00:00', '2016-03-24 12:04:52', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 0, '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","category":"8","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","image_width":"240","image_height":"180","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Expo","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_modules_menu`
--

CREATE TABLE IF NOT EXISTS `k35f2_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_modules_menu`
--

INSERT INTO `k35f2_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `k35f2_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_overrider`
--

CREATE TABLE IF NOT EXISTS `k35f2_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `k35f2_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_postinstall_messages`
--

INSERT INTO `k35f2_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_redirect_links`
--

CREATE TABLE IF NOT EXISTS `k35f2_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_schemas`
--

CREATE TABLE IF NOT EXISTS `k35f2_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_schemas`
--

INSERT INTO `k35f2_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_session`
--

CREATE TABLE IF NOT EXISTS `k35f2_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_session`
--

INSERT INTO `k35f2_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('lu8do2p1r4qrsi34nco8lkbnj5', 1, 0, '1458825598', 'joomla|s:3456:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjk7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDU4ODAyMzcxO3M6NDoibGFzdCI7aToxNDU4ODI1NTk2O3M6Mzoibm93IjtpOjE0NTg4MjU1OTg7fXM6NToidG9rZW4iO3M6MzI6IkM3ZFJKVlkzeU9GSjM5ZUl0TTQ2dWRjZkZCajdzYUltIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTQ6ImNvbV9jYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjE6e2k6MDtpOjE7fX19fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6NDoibWVudSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6NTp7czo5OiJwdWJsaXNoZWQiO3M6MToiMSI7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo2OiJmaWx0ZXIiO2E6MTp7czo5OiJwdWJsaXNoZWQiO3M6MToiMSI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyODp7czo5OiIAKgBpc1Jvb3QiO2I6MTtzOjI6ImlkIjtzOjM6IjYyNyI7czo0OiJuYW1lIjtzOjEwOiJTdXBlciBVc2VyIjtzOjg6InVzZXJuYW1lIjtzOjEwOiJlbW1hX2FkbWluIjtzOjU6ImVtYWlsIjtzOjIzOiJhLmR1YmFub3ZAYmx1ZXNtb2JpbC5ieSI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJE13bnVRZC5ZZnBlR0NjVm41Y0ZTQnUvZlhtVEt2UTB1SGFXUEk4TXhjOXhVdE1EMXNKdDEuIjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO3M6MToiMCI7czo5OiJzZW5kRW1haWwiO3M6MToiMSI7czoxMjoicmVnaXN0ZXJEYXRlIjtzOjE5OiIyMDE2LTAzLTAzIDIyOjI1OjA3IjtzOjEzOiJsYXN0dmlzaXREYXRlIjtzOjE5OiIyMDE2LTAzLTI0IDA3OjUyOjIyIjtzOjEwOiJhY3RpdmF0aW9uIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo2OiJncm91cHMiO2E6MTp7aTo4O3M6MToiOCI7fXM6NToiZ3Vlc3QiO2k6MDtzOjEzOiJsYXN0UmVzZXRUaW1lIjtzOjE5OiIwMDAwLTAwLTAwIDAwOjAwOjAwIjtzOjEwOiJyZXNldENvdW50IjtzOjE6IjAiO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjg7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjU6e2k6MDtpOjE7aToxO2k6MTtpOjI7aToyO2k6MztpOjM7aTo0O2k6Njt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO3M6Njoib3RwS2V5IjtzOjA6IiI7czo0OiJvdGVwIjtzOjA6IiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319czo0OiJfX3dmIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToidG9rZW4iO3M6MzI6IjQ4YjEzNTM3ZTE2YmJlNjNmNjM4NmFhZmMzMmYzNDkzIjt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 627, 'emma_admin'),
('t2j6qelsgtnlarfu0eaf9fpdm3', 0, 1, '1458825723', 'joomla|s:1484:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxNDc7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDU4ODI1NjU1O3M6NDoibGFzdCI7aToxNDU4ODI1NzIzO3M6Mzoibm93IjtpOjE0NTg4MjU3MjM7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI2OntzOjk6IgAqAGlzUm9vdCI7YjowO3M6MjoiaWQiO2k6MDtzOjQ6Im5hbWUiO047czo4OiJ1c2VybmFtZSI7TjtzOjU6ImVtYWlsIjtOO3M6ODoicGFzc3dvcmQiO047czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtOO3M6OToic2VuZEVtYWlsIjtpOjA7czoxMjoicmVnaXN0ZXJEYXRlIjtOO3M6MTM6Imxhc3R2aXNpdERhdGUiO047czoxMDoiYWN0aXZhdGlvbiI7TjtzOjY6InBhcmFtcyI7TjtzOjY6Imdyb3VwcyI7YToxOntpOjA7czoxOiI5Ijt9czo1OiJndWVzdCI7aToxO3M6MTM6Imxhc3RSZXNldFRpbWUiO047czoxMDoicmVzZXRDb3VudCI7TjtzOjEyOiJyZXF1aXJlUmVzZXQiO047czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo5O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTozOntpOjA7aToxO2k6MTtpOjE7aToyO2k6NTt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, ''),
('ufh9c3gb13nvpev7nramfv2n42', 0, 0, '1458825784', 'joomla|s:3080:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3ODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NTg4MjA1MDg7czo0OiJsYXN0IjtpOjE0NTg4MjU3ODQ7czozOiJub3ciO2k6MTQ1ODgyNTc4NDt9czo1OiJ0b2tlbiI7czozMjoiU1FxQTlvWmhqNGJvNGxTUFQ1UWZWQmhlVm5TYXhtY3oiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjIzOiJodHRwOi8vZW1tYS1iZWxhcnVzLmJ5LyI7fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aToxO31zOjQ6ImRhdGEiO047fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiNjI3IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6MTA6ImVtbWFfYWRtaW4iO3M6NToiZW1haWwiO3M6MjM6ImEuZHViYW5vdkBibHVlc21vYmlsLmJ5IjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkTXdudVFkLllmcGVHQ2NWbjVjRlNCdS9mWG1US3ZRMHVIYVdQSThNeGM5eFV0TUQxc0p0MS4iO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7czoxOiIwIjtzOjk6InNlbmRFbWFpbCI7czoxOiIxIjtzOjEyOiJyZWdpc3RlckRhdGUiO3M6MTk6IjIwMTYtMDMtMDMgMjI6MjU6MDciO3M6MTM6Imxhc3R2aXNpdERhdGUiO3M6MTk6IjIwMTYtMDMtMjQgMTE6MzE6MTUiO3M6MTA6ImFjdGl2YXRpb24iO3M6MToiMCI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjY6Imdyb3VwcyI7YToxOntpOjg7czoxOiI4Ijt9czo1OiJndWVzdCI7aTowO3M6MTM6Imxhc3RSZXNldFRpbWUiO3M6MTk6IjAwMDAtMDAtMDAgMDA6MDA6MDAiO3M6MTA6InJlc2V0Q291bnQiO3M6MToiMCI7czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6ODt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6NTp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo2O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7czo2OiJvdHBLZXkiO3M6MDoiIjtzOjQ6Im90ZXAiO3M6MDoiIjt9czoxMDoiY29tX21haWx0byI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW5rcyI7YToxOntzOjQwOiI2ZGNkMGM4MTBjMmQ0ZDk0NWU2ZDQzNmVjYWExNDM5NmVlNmNkMjk0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6MjM6Imh0dHA6Ly9lbW1hLWJlbGFydXMuYnkvIjtzOjY6ImV4cGlyeSI7aToxNDU4ODIwNTkzO319fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319czo0OiJfX3dmIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToidG9rZW4iO3M6MzI6ImRhYjZjZTM0MWE4NWM4OWIzYmIzOWI0YjUwZTY0ZWU4Ijt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 627, 'emma_admin');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_tags`
--

CREATE TABLE IF NOT EXISTS `k35f2_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_tags`
--

INSERT INTO `k35f2_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_template_styles`
--

CREATE TABLE IF NOT EXISTS `k35f2_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_template_styles`
--

INSERT INTO `k35f2_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#b32e2e","templateBackgroundColor":"#dae0d7","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '0', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'rsmetro', 0, '0', 'RSMetro - Default', '{"logoFile":"images\\/logo.png","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Segoe UI"}'),
(10, 'red_isis', 1, '1', 'red_isis - Default', '{"templateColor":"#13294A","headerColor":"#184A7D","sidebarColor":"#0088CC","logoFile":"","admin_menus":"1","displayHeader":"1","statusFixed":"1","stickyToolbar":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_ucm_base`
--

CREATE TABLE IF NOT EXISTS `k35f2_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_ucm_content`
--

CREATE TABLE IF NOT EXISTS `k35f2_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_ucm_history`
--

CREATE TABLE IF NOT EXISTS `k35f2_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_ucm_history`
--

INSERT INTO `k35f2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 9, 6, '', '2016-03-23 12:33:07', 627, 587, '04ff5919af6af131745f0f3f55c33bbb480c9d93', '{"id":9,"asset_id":60,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","alias":"glavnaya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 12:33:07","modified_user_id":null,"modified_time":"2016-03-23 12:33:07","hits":"0","language":"*","version":null}', 0),
(2, 10, 6, '', '2016-03-23 20:53:41', 627, 600, '73ac60cbbc6d977619d61edf2551fa5e8301af1f', '{"id":10,"asset_id":61,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c","alias":"kalendar","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:53:41","modified_user_id":null,"modified_time":"2016-03-23 20:53:41","hits":"0","language":"*","version":null}', 0),
(3, 11, 6, '', '2016-03-23 20:54:02', 627, 617, '194a8db51acebed90a477bc0683681c9b0f4592b', '{"id":11,"asset_id":62,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f","alias":"registratsiya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:02","modified_user_id":null,"modified_time":"2016-03-23 20:54:02","hits":"0","language":"*","version":null}', 0),
(4, 12, 6, '', '2016-03-23 20:54:12', 627, 607, '38f27321a6afdab1d14da44d5879f05d1cd96d52', '{"id":12,"asset_id":63,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b","alias":"rezultaty","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:12","modified_user_id":null,"modified_time":"2016-03-23 20:54:12","hits":"0","language":"*","version":null}', 0),
(5, 13, 6, '', '2016-03-23 20:54:21', 627, 587, 'c93c59c5c9e8ce45d533586b0fda155f7a2f0e04', '{"id":13,"asset_id":64,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","alias":"pravila","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:21","modified_user_id":null,"modified_time":"2016-03-23 20:54:21","hits":"0","language":"*","version":null}', 0),
(6, 14, 6, '', '2016-03-23 20:54:35', 627, 580, 'fd8065d24343ee492ff3234bc69d279998fd6899', '{"id":14,"asset_id":65,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"\\u0421\\u0442\\u0443\\u0434\\u0438\\u0438","alias":"studii","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:35","modified_user_id":null,"modified_time":"2016-03-23 20:54:35","hits":"0","language":"*","version":null}', 0),
(7, 15, 6, '', '2016-03-23 20:54:43', 627, 572, '009c047b6c47359434685452cb78f790a97a9c85', '{"id":15,"asset_id":66,"parent_id":"1","lft":"27","rgt":28,"level":1,"path":null,"extension":"com_content","title":"\\u0421\\u0443\\u0434\\u044c\\u0438","alias":"sudi","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:43","modified_user_id":null,"modified_time":"2016-03-23 20:54:43","hits":"0","language":"*","version":null}', 0),
(8, 16, 6, '', '2016-03-23 20:54:56', 627, 616, '26b46c3765d972ccafc9158ea0fcde95494cb167', '{"id":16,"asset_id":67,"parent_id":"1","lft":"29","rgt":30,"level":1,"path":null,"extension":"com_content","title":"\\u0424\\u043e\\u0442\\u043e\\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f","alias":"fotogalereya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:54:56","modified_user_id":null,"modified_time":"2016-03-23 20:54:56","hits":"0","language":"*","version":null}', 0),
(9, 17, 6, '', '2016-03-23 20:55:02', 627, 573, 'defade2ee11c59e1cdcb0004061182f81f0778e5', '{"id":17,"asset_id":68,"parent_id":"1","lft":"31","rgt":32,"level":1,"path":null,"extension":"com_content","title":"\\u0424\\u043e\\u0440\\u0443\\u043c","alias":"forum","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:55:02","modified_user_id":null,"modified_time":"2016-03-23 20:55:02","hits":"0","language":"*","version":null}', 0),
(10, 18, 6, '', '2016-03-23 20:55:13', 627, 594, '2d6472bcb6f914bb39c179ab0a98e39355ed5285', '{"id":18,"asset_id":69,"parent_id":"1","lft":"33","rgt":34,"level":1,"path":null,"extension":"com_content","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"627","created_time":"2016-03-23 20:55:13","modified_user_id":null,"modified_time":"2016-03-23 20:55:13","hits":"0","language":"*","version":null}', 0),
(11, 1, 1, '', '2016-03-24 11:53:50', 627, 5095, '0bc7e2ee951d1250b66eedb74d9c2ee684f3c98e', '{"id":1,"asset_id":70,"title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c","alias":"kalendar","introtext":"<h2><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c.<\\/strong><\\/h2>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; bordercolor: black;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td><strong>&nbsp;\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u0430\\u0439 2016\\u0433.<\\/td>\\r\\n<td>\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td>&nbsp;\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0418\\u044e\\u043d\\u044c 2016\\u0433.<\\/td>\\r\\n<td>\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td>&nbsp;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0418\\u044e\\u043b\\u044c, 23, 2016\\u0433.<\\/td>\\r\\n<td>\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td>&nbsp;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442 2016\\u0433.<\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<td>&nbsp;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c 2016\\u0433.<\\/td>\\r\\n<td>\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td>&nbsp;\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 11:53:50","created_by":"627","created_by_alias":"","modified":"2016-03-24 11:53:50","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-24 11:53:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_updates`
--

CREATE TABLE IF NOT EXISTS `k35f2_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Дамп данных таблицы `k35f2_updates`
--

INSERT INTO `k35f2_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.5.0', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_update_sites`
--

CREATE TABLE IF NOT EXISTS `k35f2_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Дамп данных таблицы `k35f2_update_sites`
--

INSERT INTO `k35f2_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1458806292, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1458806292, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `k35f2_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `k35f2_update_sites_extensions`
--

INSERT INTO `k35f2_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_usergroups`
--

CREATE TABLE IF NOT EXISTS `k35f2_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_usergroups`
--

INSERT INTO `k35f2_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_users`
--

CREATE TABLE IF NOT EXISTS `k35f2_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords'
) ENGINE=InnoDB AUTO_INCREMENT=628 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_users`
--

INSERT INTO `k35f2_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(627, 'Super User', 'emma_admin', 'a.dubanov@bluesmobil.by', '$2y$10$MwnuQd.YfpeGCcVn5cFSBu/fXmTKvQ0uHaWPI8Mxc9xUtMD1sJt1.', 0, 1, '2016-03-03 22:25:07', '2016-03-24 11:55:25', '0', '', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_user_keys`
--

CREATE TABLE IF NOT EXISTS `k35f2_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_user_notes`
--

CREATE TABLE IF NOT EXISTS `k35f2_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_user_profiles`
--

CREATE TABLE IF NOT EXISTS `k35f2_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `k35f2_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_user_usergroup_map`
--

INSERT INTO `k35f2_user_usergroup_map` (`user_id`, `group_id`) VALUES
(627, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_viewlevels`
--

CREATE TABLE IF NOT EXISTS `k35f2_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_viewlevels`
--

INSERT INTO `k35f2_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_weblinks`
--

CREATE TABLE IF NOT EXISTS `k35f2_weblinks` (
  `id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `k35f2_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_wf_profiles`
--

INSERT INTO `k35f2_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,lists,formatselect,styleselect,link,unlink,anchor,article;fullscreen,preview,visualblocks,source,removeformat,cleanup,clipboard,table,imgmanager', 'lists,link,anchor,article,fullscreen,preview,visualblocks,source,cleanup,clipboard,table,imgmanager,browser,contextmenu,inlinepopups,media', 1, 1, 0, '0000-00-00 00:00:00', '{"editor":{"statusbar_location":"none"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_xmap_items`
--

CREATE TABLE IF NOT EXISTS `k35f2_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `k35f2_xmap_sitemap`
--

CREATE TABLE IF NOT EXISTS `k35f2_xmap_sitemap` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `introtext` text,
  `metadesc` text,
  `metakey` text,
  `attribs` text,
  `selections` text,
  `excluded_items` text,
  `is_default` int(1) DEFAULT '0',
  `state` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `k35f2_xmap_sitemap`
--

INSERT INTO `k35f2_xmap_sitemap` (`id`, `title`, `alias`, `introtext`, `metadesc`, `metakey`, `attribs`, `selections`, `excluded_items`, `is_default`, `state`, `access`, `created`, `count_xml`, `count_html`, `views_xml`, `views_html`, `lastvisit_xml`, `lastvisit_html`) VALUES
(1, 'Карта сайта', 'map', '', NULL, NULL, '{"showintro":"1","show_menutitle":"0","classname":"","columns":"","exlinks":"img_blue.gif","compress_xml":"1","beautify_xml":"1","include_link":"1","news_publication_name":""}', '{"mainmenu":{"priority":"0.5","changefreq":"weekly","ordering":0}}', NULL, 1, 1, 1, '2014-03-09 18:34:55', 0, 3, 0, 1, 0, 1458821046);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_assets`
--

CREATE TABLE IF NOT EXISTS `x6si2_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_assets`
--

INSERT INTO `x6si2_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 125, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 54, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 55, 56, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 57, 58, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 59, 60, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 61, 62, 1, 'com_login', 'com_login', '{}'),
(13, 1, 63, 64, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 65, 66, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 67, 68, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 69, 70, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 71, 72, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 73, 92, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 93, 96, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 97, 98, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 99, 100, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 101, 102, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 103, 104, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 105, 108, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"6":1}}'),
(26, 1, 109, 110, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 33, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 94, 95, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 106, 107, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 111, 112, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(35, 27, 19, 20, 3, 'com_content.article.2', 'About Us', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 8, 34, 39, 2, 'com_content.category.8', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 36, 35, 36, 3, 'com_content.article.3', 'Начало сезона 2016 соревнований по автозвуку и тюнингу ЕММА', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 27, 21, 22, 3, 'com_content.article.6', 'Об организации ЕММА', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 1, 113, 114, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(42, 1, 115, 116, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 117, 118, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(44, 1, 119, 120, 1, 'com_ajax', 'com_ajax', '{}'),
(47, 1, 121, 122, 1, 'com_postinstall', 'com_postinstall', '{}'),
(48, 18, 74, 75, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 18, 76, 77, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 18, 78, 79, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 80, 81, 2, 'com_modules.module.89', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 82, 83, 2, 'com_modules.module.88', 'Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 18, 84, 85, 2, 'com_modules.module.90', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 18, 86, 87, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(55, 27, 23, 24, 3, 'com_content.article.7', 'Календарь предстоящих соревнований', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 25, 26, 3, 'com_content.article.8', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 27, 28, 3, 'com_content.article.9', 'Форма регистрации на соревнования', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 8, 40, 41, 2, 'com_content.category.9', 'Регистрация', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(59, 8, 42, 43, 2, 'com_content.category.10', 'Календарь', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 8, 44, 45, 2, 'com_content.category.11', 'Контакты', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 8, 46, 47, 2, 'com_content.category.12', 'Фотогалерея', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(62, 8, 48, 49, 2, 'com_content.category.13', 'Форум', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(63, 8, 50, 51, 2, 'com_content.category.14', 'Студии', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(64, 8, 52, 53, 2, 'com_content.category.15', 'Судьи', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(65, 27, 29, 30, 3, 'com_content.article.10', 'Результаты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 18, 88, 89, 2, 'com_modules.module.92', 'simpleForm2', '{}'),
(67, 18, 90, 91, 2, 'com_modules.module.93', 'Баннеры', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(68, 1, 123, 124, 1, 'com_foxcontact', 'COM_FOXCONTACT', '{}'),
(69, 27, 31, 32, 3, 'com_content.article.11', 'Правила соревнований', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 36, 37, 38, 3, 'com_content.article.12', 'Открыта регистрация на официальный этап "I открытого национального чемпионата РБ по автозвуку и тюни', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_associations`
--

CREATE TABLE IF NOT EXISTS `x6si2_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_banners`
--

CREATE TABLE IF NOT EXISTS `x6si2_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_banner_clients`
--

CREATE TABLE IF NOT EXISTS `x6si2_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `x6si2_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_categories`
--

CREATE TABLE IF NOT EXISTS `x6si2_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_categories`
--

INSERT INTO `x6si2_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 27, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 147, '2016-03-24 17:43:37', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 147, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 36, 1, 11, 12, 1, 'news', 'com_content', 'News', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2011-01-01 00:00:01', 147, '2016-04-18 21:36:07', 0, '*', 1),
(9, 58, 1, 13, 14, 1, 'registratsiya', 'com_content', 'Регистрация', 'registratsiya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:35:41', 0, '2016-03-27 10:35:41', 0, '*', 1),
(10, 59, 1, 15, 16, 1, 'kalendar', 'com_content', 'Календарь', 'kalendar', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:35:54', 0, '2016-03-27 10:35:54', 0, '*', 1),
(11, 60, 1, 17, 18, 1, 'kontakty', 'com_content', 'Контакты', 'kontakty', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:36:00', 0, '2016-03-27 10:36:00', 0, '*', 1),
(12, 61, 1, 19, 20, 1, 'fotogalereya', 'com_content', 'Фотогалерея', 'fotogalereya', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:36:07', 0, '2016-03-27 10:36:07', 0, '*', 1),
(13, 62, 1, 21, 22, 1, 'forum', 'com_content', 'Форум', 'forum', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:36:18', 0, '2016-03-27 10:36:18', 0, '*', 1),
(14, 63, 1, 23, 24, 1, 'studii', 'com_content', 'Студии', 'studii', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:36:53', 0, '2016-03-27 10:36:53', 0, '*', 1),
(15, 64, 1, 25, 26, 1, 'sudi', 'com_content', 'Судьи', 'sudi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 147, '2016-03-27 10:36:59', 0, '2016-03-27 10:36:59', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_contact_details`
--

CREATE TABLE IF NOT EXISTS `x6si2_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_contact_details`
--

INSERT INTO `x6si2_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Вячеслав Надточей', 'your-name', 'Должность', 'Адрес', 'Город', '', '', '', 'Телефон', '', '', '', '', 0, 0, 147, '2016-03-27 09:54:18', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 147, 'Joomla', '2016-03-24 19:13:29', 147, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 55),
(2, 'Дюбанов Алексей', 'dyubanov-aleksej', 'Должность', '', 'Город', '', '', '', 'Телефон', '', '', '', '', 0, 0, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2016-03-24 19:14:33', 147, '', '2016-03-24 19:14:33', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_content`
--

CREATE TABLE IF NOT EXISTS `x6si2_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_content`
--

INSERT INTO `x6si2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(2, 35, 'About Us', 'about-us', '<p>Put more information on this page.</p>', '', 1, 2, '2011-01-01 00:00:01', 147, 'Joomla', '0000-00-00 00:00:00', 0, 147, '2016-04-26 13:09:06', '2012-01-04 03:06:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Начало сезона 2016 соревнований по автозвуку и тюнингу ЕММА', 'article-1-title', '<p style="text-align: justify;">Вот вот уже совсем немного времени осталось до объявления точных дат и мест проведения соревнований по автозвуку и тюнингу в Беларуси по версии ЕММА. Открытие сезона пройдет в Гомеле ближе к концу мая.</p>\r\n<p style="text-align: justify;">Желающие уже сейчас могут подавать предварительные заявки за на участие в меню "регистрация".</p>\r\n<p style="text-align: justify;">Так как соревнования в формате ЕММА проходят в Беларуси впервые, приносим извинения за некую несвоевременность поступления информации, со временем все встанет на свои места ;)</p>\r\n<p style="text-align: justify;">Организатором мероприятий выступает группа компаний <a title="Блюзмобиль" href="http://bluesmobil.by/" target="_blank">"Блюзмобиль"</a> при поддержке официальных спонсоров соревнований. Все новости, касающиеся соревнований будут освещены как здесь, так и на официальной сайте компании <a title="Новости компании Блюзмобиль" href="http://bluesmobil.by/news.html" target="_blank">"Блюзмобиль"</a><span style="font-size: 12.16px; line-height: 15.808px;"> </span><span style="font-size: 12.16px; line-height: 1.3em;">и ее группах в социальных сетях <a title="Группа Блюзмобиль ВК" href="https://vk.com/club4665988" target="_blank">вконтакте</a> и <a title="Группа Блюзмобиль в facebook" href="https://www.facebook.com/groups/819421018105071/?ref=bookmarks" target="_blank">facebook</a>.</span></p>', '', 1, 8, '2011-01-01 00:00:01', 147, 'Joomla', '2016-04-18 22:19:06', 147, 147, '2016-05-16 13:44:31', '2012-01-04 03:10:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 54, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 40, 'Об организации ЕММА', 'glavnaya-sranitsa', '<p class="MsoNormal" style="text-align: justify;"><strong>EMMA</strong> – это европейская ассоциация мобильной музыки, которая основана в 2000 году. Целью ассоциации является популяризация автозвука во всех его проявлениях и как следствие организация и проведение зрелищных соревнований по автозвуку и тюнингу.</p>\r\n<p class="MsoNormal" style="text-align: justify;">За годы своего существования <strong>ЕММА</strong> собрала вокруг себя огромное количество любителей и профессионалов в области caraudio. В настоящее время официальные представительства ассоциации <strong>ЕММА</strong> существуют более чем в 40 странах по всему миру.</p>\r\n<p style="text-align: justify;">С 2016 года наша страна официально присоединилась к этому сообществу, благодаря стараниям компании <strong><a title="Блюзмобиль" href="http://bluesmobil.by/" target="_blank">«Блюзмобиль»</a></strong>.</p>\r\n<p class="MsoNormal" style="text-align: justify;"><!-- [if !supportLineBreakNewLine]--><br /> <!--[endif]--></p>\r\n<p class="MsoNormal" style="text-align: justify;">** текст будет дополнен...</p>', '', 1, 2, '2011-01-01 00:00:01', 147, 'Joomla', '2016-04-18 22:15:25', 147, 0, '0000-00-00 00:00:00', '2012-01-04 04:27:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 18, 5, '', '', 1, 2838, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 55, 'Календарь предстоящих соревнований', 'kalendar-predstoyashchikh-sorevnovanij', '<h3><strong>Календарь предстоящих соревнований по Автозвуку и тюнингу по версии ЕММА, Беларусь в сезоне 2016.</strong></h3>\r\n<table style="height: 131px; width: 575px; border: 1px gray;" border="2">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: left;"><strong>Дата</strong></td>\r\n<td style="text-align: left;"><strong>Город</strong></td>\r\n<td style="text-align: left;"><strong> Событие</strong></td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: left;">Июнь, 18</td>\r\n<td style="text-align: left;">Гомель</td>\r\n<td style="text-align: left;"> Открытие чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: left;">Июль, 23</td>\r\n<td style="text-align: left;">Гродно</td>\r\n<td style="text-align: left;"> Официальный этап чемпионата РБ по автозвуку и тюнингу. Sunday 2016.</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: left;">Август</td>\r\n<td style="text-align: left;"> </td>\r\n<td style="text-align: left;"> Официальный этап чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: left;">Сентябрь</td>\r\n<td style="text-align: left;">Гомель</td>\r\n<td style="text-align: left;"> Финал чемпионата РБ по автозвуку и тюнингу.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Точные места и схемы проездов будут указаны в новостях, после начала регистрации на соревнования.</p>', '', 1, 2, '2016-03-24 19:00:55', 147, '', '2016-05-11 12:25:56', 147, 147, '2016-05-16 13:44:05', '2016-03-24 19:00:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 4, '', '', 1, 481, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 56, 'Контакты', 'kontakty', '<p><strong>Руководство:</strong></p>\r\n<p>Вячеслав Надточей (e-mail: <a style="font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;" href="mailto:nadtochey@bluesmobil.by">nadtochey@bluesmobil.by</a> , тел. +375296513674)</p>\r\n<p> </p>\r\n<p><strong>Главный администратор:</strong></p>\r\n<p>Алексей Дюбанов (<span style="font-size: 12.16px; line-height: 15.808px;">e-mail: </span><a style="font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;" href="mailto:a.dubanov@bluesmobil.by">a.dubanov@bluesmobil.by</a> )</p>\r\n<p> </p>\r\n<p><strong>Коллегия главных судей:</strong></p>\r\n<p>Андрей Николаевский (e-mail: <a style="font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;" href="mailto:grodno_two@bluesmobil.by">grodno_two@bluesmobil.by</a> )</p>\r\n<p><span style="font-size: 12.16px; line-height: 15.808px;">Вячеслав Надточей (e-mail: </span><a style="font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;" href="mailto:nadtochey@bluesmobil.by">nadtochey@bluesmobil.by</a><span style="font-size: 12.16px; line-height: 15.808px;"> )</span></p>', '', 1, 2, '2016-03-27 09:53:57', 147, '', '2016-04-28 07:34:01', 147, 0, '0000-00-00 00:00:00', '2016-03-27 09:53:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 138, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 57, 'Форма регистрации на соревнования', 'forma-registratsii-na-sorevnovaniya', '', '', 1, 2, '2016-03-27 10:22:33', 147, '', '2016-04-06 09:10:43', 148, 147, '2016-05-11 11:05:35', '2016-03-27 10:22:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 2, '', '', 1, 269, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 65, 'Результаты', 'rezultaty', '<p>На этой странице вы сможете следить за результатами проведенных соревнований.</p>', '', 1, 2, '2016-03-27 10:37:52', 147, '', '2016-03-27 10:38:22', 147, 0, '0000-00-00 00:00:00', '2016-03-27 10:37:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 165, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 69, 'Правила соревнований', 'pravila-sorevnovanij', '<p>Ознакомиться с правилами соревнований EMMA-Беларусь 2016 можно по <strong><a title="Правила EMMA-Беларусь 2016" href="http://emma-belarus.by/images/emma_rules/emma-belarus-rules-2016.pdf" target="_blank">ссылке</a></strong>.</p>', '', 1, 2, '2016-04-26 12:46:46', 147, '', '2016-04-26 12:46:46', 0, 0, '0000-00-00 00:00:00', '2016-04-26 12:46:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 70, 'Открыта регистрация на официальный этап "I открытого национального чемпионата РБ по автозвуку и тюнингу ЕММА-Беларусь"!', 'vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij', '<p class="MsoNormal">Вниманию участников, началась регистрация на первый этап «I открытого национального чемпионата Республики Беларусь по автозвуку и тюнингу ЕММА».</p>\r\n<p class="MsoNormal">Участники и судьи мероприятия могут пройти онлайн регистрацию в соответствующем меню сайта.</p>\r\n<p class="MsoNormal"><strong>Дата проведения:</strong> 18 июня 2016 года.</p>\r\n<p class="MsoNormal"><strong>Место проведения:</strong> г. Гомель, ВПП «Зябровка».</p>\r\n<p><strong>Координаты GPS:</strong> n52.306589, e31.160831, +52° 18'' 23.72", +31° 9'' 38.99"</p>\r\n<p><strong>ОБРАЩАЕМ ВНИМАНИЕ!</strong> Для участников, подающих заявки в денежные классы, убедительная просьба указывать полные название установленных в автомобиле компонентов для того, чтобы рассчитать их общую стоимость, согласно базе данных на официальном сайте Европейской организации ЕММА.</p>\r\n<p>Ознакомиться с базой можно по <strong><a title="База данных компонентов EMMA" href="http://www.emmanet.com/value/?cmd=USA" target="_blank">ссылке</a>.</strong></p>\r\n<p> </p>', '', 1, 8, '2016-05-16 13:47:09', 147, '', '2016-05-19 08:12:01', 147, 0, '0000-00-00 00:00:00', '2016-05-16 13:47:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `x6si2_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `x6si2_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_content_rating`
--

CREATE TABLE IF NOT EXISTS `x6si2_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_content_types`
--

CREATE TABLE IF NOT EXISTS `x6si2_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_content_types`
--

INSERT INTO `x6si2_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `x6si2_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_extensions`
--

CREATE TABLE IF NOT EXISTS `x6si2_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_extensions`
--

INSERT INTO `x6si2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"1913e48def6be7cecfe93a8b4a6d6cb9"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 0, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `x6si2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 148, '2016-04-13 10:39:41', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 148, '2016-04-06 08:54:33', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (site) for Joomla! 3.4.1","group":"","filename":"ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (administrator) for Joomla! 3.4.1","group":"","filename":"ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Russian Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.4.1.3","description":"Joomla 3.4 Russian Language Package","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Jino Spectrum Transfer', 'module', 'mod_jino_spectrum_transfer', '', 1, 1, 2, 0, '{"name":"Jino Spectrum Transfer","type":"module","creationDate":"2015","author":"Jino.ru","copyright":"","authorEmail":"info@jino.ru","authorUrl":"https:\\/\\/www.jino.ru","version":"1.1","description":"","group":"","filename":"mod_jino_spectrum_transfer"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'simpleForm2', 'module', 'mod_simpleform2', '', 0, 1, 0, 0, '{"name":"simpleForm2","type":"module","creationDate":"Jan 2010","author":"ZyX","copyright":"Copyright 2010 Micriucov Oleg (ZyX) www.allForJoomla.ru. All rights reserved!","authorEmail":"info@litecms.ru","authorUrl":"allForJoomla.ru","version":"1.0.39","description":"<img align=\\"absmiddle\\" src=''http:\\/\\/img.allforjoomla.ru\\/mod_simpleForm2_j3.png'' \\/> Simple form module","group":"","filename":"mod_simpleform2"}', '{"cache":"0","moduleclass_sfx":"","domainKey":"","sfMailReply":"","sfMailTo":"admin@yoursite.com","sfMailSubj":"--== SimpleForm2 e-mail ==--","userCheckFunc":"","userResultFunc":"","simpleCode":"<style type=\\"text\\/css\\">form.simpleForm label{display:block;}form.simpleForm label span{color:#ff0000;}form.simpleForm input.inputtext{width:215px;}form.simpleForm textarea.inputtext{width:215px;height:100px;}form.simpleForm textarea.inputtext_small{width:215px;height:50px;}<\\/style><p>{element label=\\"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\\" type=\\"text\\" class=\\"inputtext\\"    required=\\"required\\" error=\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f\\"  \\/}<\\/p><p>{element label=\\"\\u0412\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\\" type=\\"textarea\\" class=\\"inputtext\\"    required=\\"required\\" error=\\"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435\\"  \\/}<\\/p>{element type=\\"captcha\\" class=\\"inputtext\\" width=\\"220\\" height=\\"50\\" label=\\"\\u041f\\u0440\\u043e\\u0432\\u0435\\u0440\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434\\" \\/}<p>{element  type=\\"submit\\"   value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c\\"  \\/}<\\/p>","inclJquery":"1","jqueryNoConflict":"0","loadScriptsMode":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'COM_FOXCONTACT', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"name":"COM_FOXCONTACT","type":"component","creationDate":"Mar 2015","author":"Demis Palma","copyright":"Copyright (c) 2010 - 2015 Demis Palma. All rights reserved.","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.4.3","description":"COM_FOXCONTACT_DESCRIPTION","group":"","filename":"foxcontact"}', '{"use_dns":"dns_check"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Fox Contact', 'library', 'foxcontact', '', 0, 1, 1, 0, '{"name":"Fox Contact","type":"library","creationDate":"Mar 2015","author":"Demis Palma","copyright":"Copyright (c) 2010 - 2015 Demis Palma. All rights reserved.","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.4.3","description":"","group":"","filename":"foxcontact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'MOD_FOXCONTACT', 'module', 'mod_foxcontact', '', 0, 1, 0, 0, '{"name":"MOD_FOXCONTACT","type":"module","creationDate":"Mar 2015","author":"Demis Palma","copyright":"Copyright (c) 2010 - 2015 Demis Palma. All rights reserved.","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.4.3","description":"MOD_FOXCONTACT_DESCRIPTION","group":"","filename":"mod_foxcontact"}', '{"delivery_db":"1","form__width":"|auto","customhtml0display":"1","customhtml0order":"-1000","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"0","form_layout":"stacked","labels__width":"230|px","sender0display":"2","sender0order":"5","sender1display":"2","sender1order":"10","sender1isemail":"1","text0display":"1","text0order":"15","text1display":"0","text1order":"20","text2display":"0","text2order":"25","text3display":"0","text3order":"30","text4display":"0","text4order":"35","text5display":"0","text5order":"40","text6display":"0","text6order":"45","text7display":"0","text7order":"50","text8display":"0","text8order":"55","text9display":"0","text9order":"60","text__width":"100|%","dropdown0display":"1","dropdown0order":"65","dropdown1display":"0","dropdown1order":"70","dropdown2display":"0","dropdown2order":"75","dropdown__width":"100|%","calendar0display":"0","calendar0order":"77","calendar0mode":"2","calendar1display":"0","calendar1order":"78","calendar1mode":"2","textarea0display":"1","textarea0order":"80","textarea1display":"0","textarea1order":"85","textarea2display":"0","textarea2order":"90","textarea__width":"100|%","textarea__height":"180|px","checkbox0display":"1","checkbox0order":"95","checkbox1display":"0","checkbox1order":"100","checkbox2display":"0","checkbox2order":"105","checkbox3display":"0","checkbox3order":"110","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","upload_max_files":"10","upload_min_files":"0","upload_max_file_size":"MB100","email_size_limit":"MB2","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittype":"0","submiticon":"","submitimage":"","resetbutton":"0","resettype":"0","reseticon":"","resetimage":"","clientinfo0":"COM_FOXCONTACT_DEVICE","clientinfo0display":"1","clientinfo0order":"1100","clientinfo1":"COM_FOXCONTACT_OS","clientinfo1display":"1","clientinfo1order":"1101","clientinfo2":"COM_FOXCONTACT_BROWSER","clientinfo2display":"1","clientinfo2order":"1102","client_ip":"0","email_sent_action":"0","email_sent_textdisplay":"1","copy_to_submitter":"1","spam_check":"1","spam_detected_textdisplay":"1","spam_log":"1","stdcaptchadisplay":"0","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","css":"bootstrap.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_content_foxcontact', 'plugin', 'foxcontact', 'content', 0, 1, 1, 0, '{"name":"plg_content_foxcontact","type":"plugin","creationDate":"Mar 2015","author":"Demis Palma","copyright":"Copyright (c) 2010 - 2015 Demis Palma. All rights reserved.","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"3.4.3","description":"PLG_FOXCONTACT_DESCRIPTION","group":"","filename":"foxcontact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_filters`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_finder_taxonomy`
--

INSERT INTO `x6si2_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_terms`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_finder_terms_common`
--

INSERT INTO `x6si2_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_finder_types`
--

CREATE TABLE IF NOT EXISTS `x6si2_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_foxcontact_enquiries`
--

CREATE TABLE IF NOT EXISTS `x6si2_foxcontact_enquiries` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `exported` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL,
  `url` text NOT NULL,
  `fields` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_foxcontact_enquiries`
--

INSERT INTO `x6si2_foxcontact_enquiries` (`id`, `form_id`, `date`, `exported`, `ip`, `url`, `fields`) VALUES
(1, 119, '2016-04-06', 0, '93.125.72.117', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-na-trening', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433 9-10 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f"],["sender","\\u0424\\u0418\\u041e","\\u0432\\u0434\\u043b\\u0430\\u043f\\u043e\\u0434\\u043b\\u0432\\u043e\\u0430\\u043f"],["sender","\\u0412\\u0430\\u0448 e-mail","dflkgjdlkfjg@gmail.com"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u0432\\u0430\\u0434\\u043b\\u043f\\u043e\\u0432\\u0434\\u043b\\u043e\\u0430\\u043f"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","2938394850\\u0449934"],["text","E-mail","dflkgjdlkfjg@dfkgk.com"],["dropdown","\\u0412\\u0430\\u0448\\u0435 \\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"," \\u043b\\u0438\\u043d\\u0435\\u0439\\u043d\\u044b\\u0439 \\u0441\\u0443\\u0434\\u044c\\u044f"],["checkbox","\\u0418\\u043d\\u0441\\u0442\\u0430\\u043b\\u043b\\u044f\\u0446\\u0438\\u044f","\\u0414\\u0430"],["checkbox","\\u0417\\u0432\\u0443\\u043a","\\u041d\\u0435\\u0442"],["checkbox","\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430","\\u0414\\u0430"],["checkbox","\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433","\\u041d\\u0435\\u0442"],["checkbox","\\u0421\\u0443\\u0434\\u044c\\u044f-\\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440","\\u041d\\u0435\\u0442"],["textarea","\\u0412 \\u043a\\u0430\\u043a\\u043e\\u043c \\u043a\\u043b\\u0430\\u0441\\u0441\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0430 \\u0412\\u0430\\u0448\\u0430 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430, \\u0438\\u043b\\u0438 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u0430\\u043d\\u043d\\u0430\\u044f \\u0432 \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438?","\\u044b\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f34\\u043f\\u0432\\u0430"],["textarea","\\u041a\\u0430\\u043a\\u0443\\u044e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0443\\u0434\\u0438\\u0442\\u044c \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u043f\\u043e\\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u044f","34\\u043f\\u0432\\u0430\\u043f3\\u043a\\u043f\\u0430\\u0443\\u0432\\u0430\\u043f"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 49"]]'),
(2, 120, '2016-04-06', 0, '93.125.72.117', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-na-trening', '[["sender","\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f","dfgdfgdfg"],["sender","\\u0412\\u0430\\u0448 e-mail","dfgdfg@gmail.com"],["text","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430","39847594857986"],["dropdown","\\u041a\\u0430\\u043a \\u0432\\u044b \\u0443\\u0437\\u043d\\u0430\\u043b\\u0438 \\u043e \\u043d\\u0430\\u0441?","\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0430\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0443\\u0433\\u0430"],["textarea","\\u041e\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441","\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f"],["checkbox","\\u042f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d \\u0441 \\u0432\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430\\u043c\\u0438 \\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c\\u0438","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 49"]]'),
(3, 119, '2016-04-18', 0, '151.249.250.190', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-sudey', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (\\u043c\\u0430\\u0439 2016)"],["sender","\\u0424\\u0418\\u041e","vvdfvdfdffdgfdfgfdg"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","fdgdf"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","dfggdfg"],["text","E-mail","dfgfgfddfg"],["text","Skype","fdgdfgdfg"],["text","ICQ","fdggf"],["dropdown","\\u0412\\u0430\\u0448\\u0435 \\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"," \\u043b\\u0438\\u043d\\u0435\\u0439\\u043d\\u044b\\u0439 \\u0441\\u0443\\u0434\\u044c\\u044f"],["checkbox","\\u0418\\u043d\\u0441\\u0442\\u0430\\u043b\\u043b\\u044f\\u0446\\u0438\\u044f","\\u0414\\u0430"],["checkbox","\\u0417\\u0432\\u0443\\u043a","\\u0414\\u0430"],["checkbox","\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430","\\u041d\\u0435\\u0442"],["checkbox","\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433","\\u041d\\u0435\\u0442"],["checkbox","\\u0421\\u0443\\u0434\\u044c\\u044f-\\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440","\\u0414\\u0430"],["textarea","\\u0412 \\u043a\\u0430\\u043a\\u043e\\u043c \\u043a\\u043b\\u0430\\u0441\\u0441\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0430 \\u0412\\u0430\\u0448\\u0430 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430, \\u0438\\u043b\\u0438 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u0430\\u043d\\u043d\\u0430\\u044f \\u0432 \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438?","fgdfg"],["textarea","\\u041a\\u0430\\u043a\\u0443\\u044e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0443\\u0434\\u0438\\u0442\\u044c \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u043f\\u043e\\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u044f","dfgfd"]]'),
(4, 121, '2016-05-13', 0, '93.171.161.176', 'http://www.emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","ESPL"," E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W \\u0431\\u0435\\u0437 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439)"],["sender","\\u0424\\u0418\\u041e","\\u0428\\u0435\\u043c\\u0435\\u0442\\u043e\\u0432 \\u041e\\u043b\\u0435\\u0433 \\u0418\\u0433\\u043e\\u0440\\u0435\\u0432\\u0438\\u0447"],["sender","E-mail","shem-83@mail.ru"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","\\u043d\\u0435\\u0442"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u043c\\u0438\\u043d\\u0441\\u043a"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","+375(33)3280277"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","MG ZS"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0427\\u0435\\u0440\\u043d\\u044b\\u0439"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u0441\\u0435\\u0434\\u0430\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","8440 \\u043e\\u043d7"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","alpine cda137"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","sound qubed "],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","sound qubed"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","sound qubed"],["text","\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440)","alpine h100"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","-"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","ground zero bp12.5000"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","sound qubed"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","-"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","-"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 50"]]'),
(5, 121, '2016-05-16', 0, '87.252.225.26', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","\\u0417\\u0432\\u0443\\u043a"," SQ \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000"],["dropdown","ESPL"," E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)"],["dropdown","EMMA Racing","Racing Stock"],["sender","\\u0424\\u0418\\u041e","\\u041c\\u0430\\u043b\\u0430\\u0448\\u043a\\u043e \\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u041f\\u0430\\u0432\\u043b\\u043e\\u0432\\u0438\\u0447"],["sender","E-mail","intersteel@tut.by"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","\\u0444\\u0438\\u0437 \\u043b\\u0438\\u0446\\u043e"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u041c\\u0438\\u043d\\u0441\\u043a"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","80296665951"],["text","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b","Large"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","\\u0411\\u041c\\u0412"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0441\\u0438\\u043d\\u0438\\u0439"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u0441\\u0435\\u0434\\u0430\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","6801-\\u041a\\u0415-7"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","pioneer p99rs"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","focal, AD"],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","audiobahn"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","audiobahn"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","audiobahn"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","\\u043d\\u0435\\u0442"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","dietz"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","\\u043d\\u0435\\u0442"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","\\u043d\\u0435\\u0442"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 50"]]'),
(6, 121, '2016-05-16', 0, '87.252.225.26', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","\\u0417\\u0432\\u0443\\u043a"," SQ \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000"],["dropdown","ESPL"," E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)"],["dropdown","EMMA Racing","Racing Stock"],["sender","\\u0424\\u0418\\u041e","\\u041c\\u0430\\u043b\\u0430\\u0448\\u043a\\u043e \\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u041f\\u0430\\u0432\\u043b\\u043e\\u0432\\u0438\\u0447"],["sender","E-mail","intersteel@tut.by"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","\\u0444\\u0438\\u0437 \\u043b\\u0438\\u0446\\u043e"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u041c\\u0438\\u043d\\u0441\\u043a"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","80296665951"],["text","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b","Large"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","\\u0411\\u041c\\u0412"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0441\\u0438\\u043d\\u0438\\u0439"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u0441\\u0435\\u0434\\u0430\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","6801-\\u041a\\u0415-7"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","pioneer p99rs"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","focal, AD"],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","audiobahn"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","audiobahn"],["text","\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440)","\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","audiobahn"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","\\u043d\\u0435\\u0442"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","dietz"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","\\u043d\\u0435\\u0442"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","\\u043d\\u0435\\u0442"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 50"]]'),
(7, 121, '2016-05-16', 0, '178.120.246.6', 'http://www.emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","\\u0417\\u0432\\u0443\\u043a"," SQ \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\u0435\\u0437 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439"],["sender","\\u0424\\u0418\\u041e","\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u0438\\u0447"],["sender","E-mail","grodno_two@bluesmobil.by"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c-\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","+375296737292"],["text","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b","BluesmobilTeamBelarus"],["text","Team \\u043b\\u0438\\u0434\\u0435\\u0440 \\/ \\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430","\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439"],["text","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b","\\u0425\\u0425\\u0425L"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430 \\u041f\\u0438\\u043a\\u043d\\u0438\\u043a"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u043e"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u043c\\u0438\\u043d\\u0438\\u0432\\u044d\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","3861\\u0412I-4"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","Pioneer"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","SOaudio,CDT"],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","SOaudio"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","Celestra, CDT"],["text","\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440)","\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","ESX"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","\\u043d\\u0435\\u0442"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","Crescendo, Stinger"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","\\u043d\\u0435\\u0442"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","\\u043d\\u0435\\u0442"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Firefox 46"]]'),
(8, 121, '2016-05-16', 0, '178.120.246.6', 'http://www.emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","\\u0417\\u0432\\u0443\\u043a"," SQ \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\u0435\\u0437 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0439"],["sender","\\u0424\\u0418\\u041e","\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u0438\\u0447"],["sender","E-mail","grodno_two@bluesmobil.by"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c-\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","+375296737292"],["text","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b","BluesmobilTeamBelarus"],["text","Team \\u043b\\u0438\\u0434\\u0435\\u0440 \\/ \\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430","\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439"],["text","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b","\\u0425\\u0425\\u0425L"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","\\u0422\\u043e\\u0439\\u043e\\u0442\\u0430 \\u041f\\u0438\\u043a\\u043d\\u0438\\u043a"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u043e"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u043c\\u0438\\u043d\\u0438\\u0432\\u044d\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","3861\\u0412I-4"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","Pioneer"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","SOaudio,CDT"],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","SOaudio"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","Celestra, CDT"],["text","\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440)","\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","ESX"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","\\u043d\\u0435\\u0442"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","Crescendo, Stinger"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","\\u043d\\u0435\\u0442"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","\\u043d\\u0435\\u0442"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Firefox 46"]]'),
(9, 119, '2016-05-16', 0, '178.120.246.6', 'http://www.emma-belarus.by/index.php/registratsiya/registratsiya-sudey', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["sender","\\u0424\\u0418\\u041e","\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u0438\\u0447"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","+375296737292"],["text","E-mail","grodno_two@bluesmobil.by"],["text","Skype","snike_bm"],["dropdown","\\u0412\\u0430\\u0448\\u0435 \\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"," \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0443\\u0434\\u044c\\u044f"],["checkbox","\\u0418\\u043d\\u0441\\u0442\\u0430\\u043b\\u043b\\u044f\\u0446\\u0438\\u044f","\\u0414\\u0430"],["checkbox","\\u0417\\u0432\\u0443\\u043a","\\u0414\\u0430"],["checkbox","\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430","\\u0414\\u0430"],["checkbox","\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433","\\u0414\\u0430"],["checkbox","\\u0421\\u0443\\u0434\\u044c\\u044f-\\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440","\\u041d\\u0435\\u0442"],["textarea","\\u0412 \\u043a\\u0430\\u043a\\u043e\\u043c \\u043a\\u043b\\u0430\\u0441\\u0441\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0430 \\u0412\\u0430\\u0448\\u0430 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430, \\u0438\\u043b\\u0438 \\u043c\\u0430\\u0448\\u0438\\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u0430\\u043d\\u043d\\u0430\\u044f \\u0432 \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438?","master unlim"]]'),
(10, 121, '2016-05-18', 0, '176.118.69.20', 'http://emma-belarus.by/index.php/registratsiya/registratsiya-uchastnikov', '[["dropdown","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430","\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c (18 \\u0438\\u044e\\u043d\\u044f)"],["dropdown","\\u0417\\u0432\\u0443\\u043a"," SQ \\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000"],["dropdown","\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430","MM \\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c"],["sender","\\u0424\\u0418\\u041e","\\u0411\\u0435\\u0440\\u0435\\u0437\\u043a\\u0438\\u043d \\u041b\\u0435\\u043e\\u043d\\u0438\\u0434 \\u0421\\u0435\\u0440\\u0433\\u0435\\u0435\\u0432\\u0438\\u0447"],["sender","E-mail","Leonidb@bk.ru"],["text","\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f","-----"],["text","\\u0413\\u043e\\u0440\\u043e\\u0434","\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430"],["text","\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","+79652806777"],["text","Team \\u043b\\u0438\\u0434\\u0435\\u0440 \\/ \\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430","\\u0422\\u0440\\u0435\\u0449\\u0438\\u043b\\u043e\\u0432 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"],["text","\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b","52"],["text","\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c","VW Jetta 6"],["text","\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b","\\u0427\\u0435\\u0440\\u043d\\u044b\\u0439"],["text","\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430","\\u0421\\u0435\\u0434\\u0430\\u043d"],["text","\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440","\\u0435282\\u0430\\u0440777"],["text","\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430)","Alpine INA-W910R\\t"],["text","\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430","Morel MT-230,Fostex FE 83En,Dynaudio MW162GT\\t"],["text","\\u0411\\u0440\\u0435\\u043d\\u0434 \\u0441\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440\\u0430","CDT HD-1200CF"],["text","\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c","Ground Zero GZUA 4.150SQ,MDLab AM-AC-150.4"],["text","\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440)","Alpine PXA-H800\\t"],["text","\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440","---"],["text","\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440","---"],["text","\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430","\\u0421\\u0438\\u043b\\u043e\\u0432\\u043e\\u0439 \\u043a\\u0430\\u0431\\u0435\\u043b\\u044c tchernovaudio, \\u0410\\u043a\\u0443\\u0441\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0430 CONARE"],["text","DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c","---"],["text","\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b","----"],["checkbox","\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","\\u0414\\u0430"],["clientinfo","Operating system","Windows"],["clientinfo","Web Browser","Chrome 50"]]');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_foxcontact_settings`
--

CREATE TABLE IF NOT EXISTS `x6si2_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_foxcontact_settings`
--

INSERT INTO `x6si2_foxcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('mimefilter', 'use_fileinfo');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_languages`
--

CREATE TABLE IF NOT EXISTS `x6si2_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_languages`
--

INSERT INTO `x6si2_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_menu`
--

CREATE TABLE IF NOT EXISTS `x6si2_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_menu`
--

INSERT INTO `x6si2_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 79, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 37, 46, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 38, 39, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 40, 41, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 42, 43, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 44, 45, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 47, 52, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 48, 49, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 50, 51, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 53, 58, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 54, 55, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 56, 57, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 59, 64, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 60, 61, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 62, 63, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 71, 72, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 69, 70, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 67, 68, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 65, 66, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 6, 0, '*', 0),
(102, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(103, 'mainmenu', 'Новости', 'news', '', 'news', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 147, '2016-05-16 08:13:32', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"0","num_columns":"1","num_links":"3","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"published","show_pagination":"0","show_pagination_results":"0","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 7, 8, 1, '*', 0),
(104, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(105, 'mainmenu', 'Edit Profile', 'edit-profile', '', 'edit-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(106, 'mainmenu', 'Контакты', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(107, 'mainmenu', 'Administrator', '2012-01-04-04-05-24', '', '2012-01-04-04-05-24', 'administrator', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 35, 36, 0, '*', 0),
(109, 'mainmenu', 'Create an Article', 'create-an-article', '', 'create-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(110, 'menu', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 73, 74, 0, '', 1),
(111, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 75, 76, 0, '*', 1),
(112, 'mainmenu', 'Site Settings', 'site-settings', '', 'home/site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 0, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 3, 0, '*', 0),
(113, 'mainmenu', 'Template Settings', 'template-settings', '', 'home/template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 0, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(114, 'mainmenu', 'Календарь', 'kalendar', '', 'kalendar', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(115, 'mainmenu', 'Регистрация', 'registratsiya', '', 'registratsiya', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 148, '2016-04-06 06:10:48', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 9, 16, 0, '*', 0),
(116, 'mainmenu', 'Результаты', 'rezultaty', '', 'rezultaty', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(117, 'mainmenu', 'Форум', '2016-03-27-10-44-03', '', '2016-03-27-10-44-03', 'http://www.bluesmobil.ru/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 21, 22, 0, '*', 0),
(118, 'main', 'COM_FOXCONTACT_MENU', 'com-foxcontact-menu', '', 'com-foxcontact-menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 77, 78, 0, '', 1),
(119, 'mainmenu', 'Регистрация судей', 'registratsiya-sudey', '', 'registratsiya/registratsiya-sudey', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 115, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 7, '{"to_address":"a.dubanov@bluesmobil.by","cc_address":"","bcc_address":"","email_subject":"Заявка с вашего сайта","email_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n{field-table-full}\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","jmessenger_user":"","delivery_db":"1","page_subheading":"Регистрация судей","form__width":{"text":"54","select":"%"},"customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","form_layout":"compact","labels__width":{"text":"230","select":"px"},"sender0":"ФИО","sender0display":"2","sender0order":"10","sender1":"Ваш e-mail","sender1display":"0","sender1order":"15","sender1isemail":"1","text0":"Город","text0display":"2","text0order":"20","text1":"Мобильный телефон","text1display":"2","text1order":"25","text2":"E-mail","text2display":"2","text2order":"30","text3":"Skype","text3display":"1","text3order":"35","text4":"ICQ","text4display":"1","text4order":"40","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","text10":"","text10display":"0","text10order":"60","text11":"","text11display":"0","text11order":"60","text12":"","text12display":"0","text12order":"60","text13":"","text13display":"0","text13order":"60","text14":"","text14display":"0","text14order":"60","text15":"","text15display":"0","text15order":"60","text16":"","text16display":"0","text16order":"60","text17":"","text17display":"0","text17order":"60","text18":"","text18display":"0","text18order":"60","text19":"","text19display":"0","text19order":"60","text20":"","text20display":"0","text20order":"60","text21":"","text21display":"0","text21order":"60","text__width":{"text":"270","select":"px"},"dropdown0":"Название этапа","dropdown0display":"1","dropdown0values":"Гомель (18 июня)","dropdown0order":"5","dropdown1":"Ваше звание","dropdown1display":"2","dropdown1values":"кандидат в судьи, линейный судья, главный судья","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdown3":"","dropdown3display":"0","dropdown3values":"","dropdown3order":"75","dropdown4":"","dropdown4display":"0","dropdown4values":"","dropdown4order":"75","dropdown5":"","dropdown5display":"0","dropdown5values":"","dropdown5order":"75","dropdown6":"","dropdown6display":"0","dropdown6values":"","dropdown6order":"75","dropdown7":"","dropdown7display":"0","dropdown7values":"","dropdown7order":"75","dropdown8":"","dropdown8display":"0","dropdown8values":"","dropdown8order":"75","dropdown__width":{"text":"270","select":"px"},"calendar0":"","calendar0display":"0","calendar0order":"77","calendar0mode":"2","calendar1":"","calendar1display":"0","calendar1order":"78","calendar1mode":"2","textarea0":"В каком классе заявлена Ваша машина, или машина сделанная в Вашей студии?","textarea0display":"1","textarea0order":"120","textarea1":"Какую категорию хотите судить и прочие пожелания","textarea1display":"1","textarea1order":"125","textarea2":"","textarea2display":"0","textarea2order":"90","textarea__width":{"text":"270","select":"px"},"textarea__height":{"text":"180","select":"px"},"checkbox0":"Инсталляция","checkbox0display":"1","checkbox0order":"95","checkbox1":"Звук","checkbox1display":"1","checkbox1order":"100","checkbox2":"Мультимедиа","checkbox2display":"1","checkbox2order":"105","checkbox3":"Тюнинг","checkbox3display":"1","checkbox3order":"110","checkbox4":"Судья-администратор","checkbox4display":"1","checkbox4order":"115","checkbox5":"","checkbox5display":"0","checkbox5order":"115","checkbox6":"","checkbox6display":"0","checkbox6order":"115","checkbox7":"","checkbox7display":"0","checkbox7order":"115","checkbox8":"","checkbox8display":"0","checkbox8order":"115","checkbox9":"","checkbox9display":"0","checkbox9order":"115","uploaddisplay":"0","upload":"Выберете файлы для прикрепления","upload_max_files":"10","upload_min_files":"0","upload_max_file_size":"MB100","email_size_limit":"MB2","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittext":"Отправить заявку","submittype":"0","submiticon":"-1","submitimage":"-1","resetbutton":"0","resettext":"Сброс","resettype":"0","reseticon":"-1","resetimage":"-1","clientinfo0":"Device","clientinfo0display":"1","clientinfo0order":"1100","clientinfo1":"Operating system","clientinfo1display":"0","clientinfo1order":"1101","clientinfo2":"Web Browser","clientinfo2display":"0","clientinfo2order":"1102","client_ip":"0","email_sent_action":"0","email_sent_text":"Мы получили ваше сообщение. Мы свяжемся с вами в течение нескольких дней.","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"Спасибо за ваше обращение к нам","email_copy_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n<p>Этим сообщением подтверждается успешная отправка вашего запрос. Вам ответят быстро, на сколько это возможно.<\\/p>\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"Извините, но система считает, что ваше сообщение содержит нежелательную рекламу, поэтому оно <b>было заблокировано<\\/b>.<br \\/>Если вы считаете, что это ошибка, то, пожалуйста, вернитесь и попробуйте ещё раз, избегая таких слов как <i>www, http,<\\/i> и так далее.","spam_detected_textdisplay":"1","spam_log":"1","stdcaptchadisplay":"0","stdcaptcha":"Ключ защиты","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","css":"bootstrap.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(120, 'mainmenu', 'Регистрация на тренинг', 'registratsiya-na-trening', '', 'registratsiya/registratsiya-na-trening', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 115, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"to_address":"a.dubanov@bluesmobil.by","cc_address":"","bcc_address":"","email_subject":"Заявка с вашего сайта","email_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n{field-table-full}\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","jmessenger_user":"","delivery_db":"1","page_subheading":"Регистрация на тренинг","form__width":{"text":"54","select":"%"},"customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","form_layout":"compact","labels__width":{"text":"230","select":"px"},"sender0":"ФИО","sender0display":"2","sender0order":"10","sender1":"Город","sender1display":"2","sender1order":"15","sender1isemail":"1","text0":"Мобильный телефон","text0display":"2","text0order":"20","text1":"E-mail","text1display":"2","text1order":"25","text2":"Skype","text2display":"1","text2order":"30","text3":"ICQ","text3display":"1","text3order":"35","text4":"","text4display":"0","text4order":"40","text5":"","text5display":"0","text5order":"45","text6":"","text6display":"0","text6order":"50","text7":"","text7display":"0","text7order":"60","text8":"","text8display":"0","text8order":"65","text9":"","text9display":"0","text9order":"70","text10":"","text10display":"0","text10order":"60","text11":"","text11display":"0","text11order":"60","text12":"","text12display":"0","text12order":"60","text13":"","text13display":"0","text13order":"60","text14":"","text14display":"0","text14order":"60","text15":"","text15display":"0","text15order":"60","text16":"","text16display":"0","text16order":"60","text17":"","text17display":"0","text17order":"60","text18":"","text18display":"0","text18order":"60","text19":"","text19display":"0","text19order":"60","text20":"","text20display":"0","text20order":"60","text21":"","text21display":"0","text21order":"60","text__width":{"text":"270","select":"px"},"dropdown0":"Место проведения","dropdown0display":"1","dropdown0values":"Гомель (18 июня)","dropdown0order":"5","dropdown1":"Ваше звание","dropdown1display":"2","dropdown1values":"кандидат в судьи, линейный судья, главный судья","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdown3":"","dropdown3display":"0","dropdown3values":"","dropdown3order":"75","dropdown4":"","dropdown4display":"0","dropdown4values":"","dropdown4order":"75","dropdown5":"","dropdown5display":"0","dropdown5values":"","dropdown5order":"75","dropdown6":"","dropdown6display":"0","dropdown6values":"","dropdown6order":"75","dropdown7":"","dropdown7display":"0","dropdown7values":"","dropdown7order":"75","dropdown8":"","dropdown8display":"0","dropdown8values":"","dropdown8order":"75","dropdown__width":{"text":"270","select":"px"},"calendar0":"","calendar0display":"0","calendar0order":"77","calendar0mode":"2","calendar1":"","calendar1display":"0","calendar1order":"78","calendar1mode":"2","textarea0":"В каком классе заявлена Ваша машина, или машина сделанная в Вашей студии?","textarea0display":"1","textarea0order":"120","textarea1":"Какую категорию хотите судить и прочие пожелания","textarea1display":"1","textarea1order":"125","textarea2":"","textarea2display":"0","textarea2order":"90","textarea__width":{"text":"270","select":"px"},"textarea__height":{"text":"180","select":"px"},"checkbox0":"Инсталляция","checkbox0display":"1","checkbox0order":"95","checkbox1":"Звук","checkbox1display":"1","checkbox1order":"100","checkbox2":"Мультимедиа","checkbox2display":"1","checkbox2order":"105","checkbox3":"Тюнинг","checkbox3display":"1","checkbox3order":"110","checkbox4":"Судья-администратор","checkbox4display":"1","checkbox4order":"115","checkbox5":"","checkbox5display":"0","checkbox5order":"115","checkbox6":"","checkbox6display":"0","checkbox6order":"115","checkbox7":"","checkbox7display":"0","checkbox7order":"115","checkbox8":"","checkbox8display":"0","checkbox8order":"115","checkbox9":"","checkbox9display":"0","checkbox9order":"115","uploaddisplay":"0","upload":"Выберете файлы для прикрепления","upload_max_files":"10","upload_min_files":"0","upload_max_file_size":"MB100","email_size_limit":"MB2","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittext":"Отправить заявку","submittype":"0","submiticon":"-1","submitimage":"-1","resetbutton":"0","resettext":"Сброс","resettype":"0","reseticon":"-1","resetimage":"-1","clientinfo0":"Device","clientinfo0display":"1","clientinfo0order":"1100","clientinfo1":"Operating system","clientinfo1display":"1","clientinfo1order":"1101","clientinfo2":"Web Browser","clientinfo2display":"1","clientinfo2order":"1102","client_ip":"0","email_sent_action":"0","email_sent_text":"Мы получили ваше сообщение. Мы свяжемся с вами в течение нескольких дней.","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"Спасибо за ваше обращение к нам","email_copy_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n<p>Этим сообщением подтверждается успешная отправка вашего запрос. Вам ответят быстро, на сколько это возможно.<\\/p>\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"Извините, но система считает, что ваше сообщение содержит нежелательную рекламу, поэтому оно <b>было заблокировано<\\/b>.<br \\/>Если вы считаете, что это ошибка, то, пожалуйста, вернитесь и попробуйте ещё раз, избегая таких слов как <i>www, http,<\\/i> и так далее.","spam_detected_textdisplay":"1","spam_log":"1","stdcaptchadisplay":"0","stdcaptcha":"Ключ защиты","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","css":"bootstrap.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 12, 13, 0, '*', 0),
(121, 'mainmenu', 'Регистрация участников', 'registratsiya-uchastnikov', '', 'registratsiya/registratsiya-uchastnikov', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 115, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"to_address":"a.dubanov@bluesmobil.by","cc_address":"","bcc_address":"","email_subject":"Заявка на регистрацию участника","email_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n{field-table-full}\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","jmessenger_user":"","delivery_db":"1","page_subheading":"Регистрация участников","form__width":{"text":"54","select":"%"},"customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","form_layout":"compact","labels__width":{"text":"230","select":"px"},"sender0":"ФИО","sender0display":"1","sender0order":"50","sender1":"E-mail","sender1display":"2","sender1order":"55","sender1isemail":"1","text0":"Организация","text0display":"2","text0order":"60","text1":"Город","text1display":"2","text1order":"65","text2":"Мобильный телефон","text2display":"2","text2order":"70","text3":"Название команды","text3display":"1","text3order":"75","text4":"Team лидер \\/ Руководитель проекта","text4display":"1","text4order":"80","text5":"Размер одежды","text5display":"1","text5order":"85","text6":"Автомобиль","text6display":"2","text6order":"90","text7":"Цвет машины","text7display":"2","text7order":"95","text8":"Тип кузова","text8display":"2","text8order":"100","text9":"Государственный номер","text9display":"2","text9order":"105","text10":"Г\\/у (магнитола)","text10display":"2","text10order":"110","text11":"Фронтальная акустика","text11display":"2","text11order":"115","text12":"Бренд сабвуфера","text12display":"2","text12order":"120","text13":"Размер сабвуфера","text13display":"0","text13order":"125","text14":"Количество сабвуферов","text14display":"0","text14order":"130","text15":"Усилитель","text15display":"2","text15order":"135","text16":"Активные компоненты (процессор (встроенный или внешний), эквалайзер, кроссовер)","text16display":"2","text16order":"140","text17":"Конденсатор","text17display":"2","text17order":"145","text18":"Дополнительный аккумулятор","text18display":"2","text18order":"150","text19":"Проводка","text19display":"2","text19order":"155","text20":"DVD-проигрыватель","text20display":"2","text20order":"160","text21":"Мониторы","text21display":"2","text21order":"165","text__width":{"text":"270","select":"px"},"dropdown0":"Название этапа","dropdown0display":"1","dropdown0values":"Гомель (18 июня)","dropdown0order":"5","dropdown1":"Звук","dropdown1display":"1","dropdown1values":"SQ Новичок 3000, SQ Новичок без ограничений, SQ Любитель OEM, SQ Любитель 4000, SQ Любитель без ограничений, SQ Мастер OEM, SQ Мастер 5000, SQ Мастер без ограничений, SQ Эксперт, SQ Эксперт без ограничений","dropdown1order":"10","dropdown2":"Мультимедиа","dropdown2display":"1","dropdown2values":"MM Любитель, ММ Эксперт, ММ Мастер","dropdown2order":"15","dropdown3":"ESPL","dropdown3display":"1","dropdown3values":"E-Category T - 1W (Новичок багажник 1), E-Category T - 2W (Новичок багажник 2), E-Category T - 4W (Новичок багажник 4), E-Category T - unl (Новичок без ограничений), \\r\\nE-Category R - unl (Новичок R без ограничений), E-Category W - unl (Новичок W без ограничений), X-Category - unl (Эксперт), Экстрим","dropdown3order":"20","dropdown4":"EMMA Racing","dropdown4display":"1","dropdown4values":"Racing Stock, Racing Custom","dropdown4order":"25","dropdown5":"EMMA Art","dropdown5display":"1","dropdown5values":"Art Живопись, Art Графика","dropdown5order":"30","dropdown6":"EMMA Tuning","dropdown6display":"1","dropdown6values":"Тюнинг отечественных авто, Тюнинг иномарок","dropdown6order":"35","dropdown7":"EMMA Retro","dropdown7display":"1","dropdown7values":"Ретро реставрация, Ретро проект","dropdown7order":"40","dropdown8":"ESQL","dropdown8display":"1","dropdown8values":"M-Category (Мастер)","dropdown8order":"45","dropdown__width":{"text":"270","select":"px"},"calendar0":"","calendar0display":"0","calendar0order":"77","calendar0mode":"2","calendar1":"","calendar1display":"0","calendar1order":"78","calendar1mode":"2","textarea0":"Опишите ваш запрос","textarea0display":"0","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textarea__width":{"text":"270","select":"px"},"textarea__height":{"text":"180","select":"px"},"checkbox0":"Я принимаю условия пользовательского соглашения","checkbox0display":"2","checkbox0order":"195","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","checkbox5":"","checkbox5display":"0","checkbox5order":"115","checkbox6":"","checkbox6display":"0","checkbox6order":"115","checkbox7":"","checkbox7display":"0","checkbox7order":"115","checkbox8":"","checkbox8display":"0","checkbox8order":"115","checkbox9":"","checkbox9display":"0","checkbox9order":"115","uploaddisplay":"0","upload":"Выберете файлы для прикрепления","upload_max_files":"10","upload_min_files":"0","upload_max_file_size":"MB100","email_size_limit":"MB2","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittext":"Отправить","submittype":"0","submiticon":"-1","submitimage":"-1","resetbutton":"0","resettext":"Сброс","resettype":"0","reseticon":"-1","resetimage":"-1","clientinfo0":"Device","clientinfo0display":"1","clientinfo0order":"1100","clientinfo1":"Operating system","clientinfo1display":"1","clientinfo1order":"1101","clientinfo2":"Web Browser","clientinfo2display":"1","clientinfo2order":"1102","client_ip":"0","email_sent_action":"0","email_sent_text":"Мы получили ваше сообщение. Мы свяжемся с вами в течение нескольких дней.","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"Спасибо за ваше обращение к нам","email_copy_body":"<div class=\\"wrapper\\">\\r\\n<div class=\\"container\\">\\r\\n<div class=\\"inner\\">\\r\\n<div class=\\"header sitename\\">{sitename}<\\/div>\\r\\n<p>Этим сообщением подтверждается успешная отправка вашего запрос. Вам ответят быстро, на сколько это возможно.<\\/p>\\r\\n<div class=\\"footer\\">© {sitename}<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"Извините, но система считает, что ваше сообщение содержит нежелательную рекламу, поэтому оно <b>было заблокировано<\\/b>.<br \\/>Если вы считаете, что это ошибка, то, пожалуйста, вернитесь и попробуйте ещё раз, избегая таких слов как <i>www, http,<\\/i> и так далее.","spam_detected_textdisplay":"1","spam_log":"1","stdcaptchadisplay":"0","stdcaptcha":"Ключ защиты","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","css":"bootstrap.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(122, 'mainmenu', 'Правила', 'pravila', '', 'pravila', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_menu_types`
--

CREATE TABLE IF NOT EXISTS `x6si2_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_menu_types`
--

INSERT INTO `x6si2_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_messages`
--

CREATE TABLE IF NOT EXISTS `x6si2_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `x6si2_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_modules`
--

CREATE TABLE IF NOT EXISTS `x6si2_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_modules`
--

INSERT INTO `x6si2_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'position-1', 147, '2016-04-15 16:49:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 49, 'Popular Articles', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 50, 'Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 48, 'Logged-in Users', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 54, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"0","homeText":"","showLast":"0","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(80, 0, 'Search', '', '', -2, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(82, 0, 'News Flash', '', '', 1, '', 147, '2016-04-18 21:33:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["8"],"image":"0","item_title":"1","link_titles":"1","item_heading":"h4","showLastSeparator":"0","readmore":"0","count":"5","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(83, 0, 'Side Module', '', '<p>This is a module where you might want to add some more information or an image,  a link to your social media presence, or whatever makes sense for your site.  </p><p>You can edit this module in the module manager. Look for the Side Module.</p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 52, 'Image', '', '<p><a href="http://emma-belarus.by/"><img src="images/headers/header-2.jpg" alt="" /></a></p>', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 51, 'Site Information', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 6, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 53, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(91, 0, 'Jino Spectrum Transfer', '', '<link rel="stylesheet" href="modules/mod_jino_spectrum_transfer/module-content.css" />\n<script type="text/JavaScript" src="modules/mod_jino_spectrum_transfer/module-content.js"></script>\n<div class="jinotransfer">\n    <h4 class="jinotransfer-header">Перенос сайта на хостинг «Джино.Спектр»</h4>\n    <p>«<a href="http://joomla.jino.ru" target="_blank">Джино.Спектр</a>» — облачный хостинг для сайтов на Joomla! Вам не придется думать о хостинге, поддержке ПО и прочих мелочах: все хлопоты мы возьмем на себя.</p>\n    <p>Для того, чтобы перенести сайт на «Джино.Спектр», надо всего лишь указать один из способов связи с вами: мобильный телефон, e-mail или учетную запись в социальной сети. Если у вас уже есть аккаунт на «Джино», достаточно лишь авторизоваться в нем.</p>\n    <p>А дальше мы все сделаем за вас! Если вы новый пользователь «Джино.Спектр», первые десять дней сайт будет работать бесплатно.</p>\n\n    <div class="jinotransfer-controls" id="transfer-start">\n        <a href="index.php?option=com_ajax&module=jino_spectrum_transfer&format=raw" target="_blank" onclick="window.open(this.href, ''targetWindow'', ''toolbar=0, location=0, status=0, menubar=0, scrollbars=1, resizable=0, width=510, height=505''); startAjaxCheck(); return false;"  class="btn btn-success">Начать перенос</a>\n        <a href="http://joomla.jino.ru" target="_blank" class="jinotransfer-controls-textbutton">Подробнее о сервисе «Джино.Спектр»</a>\n    </div>\n    <div class="jinotransfer-controls" style="display: none;" id="transfer-in-process">\n        <div id="button_inprogress" class="btn btn-success disabled">Идёт перенос...</div>\n        <a href="http://joomla.jino.ru" target="_blank" class="jinotransfer-controls-textbutton">Подробнее о сервисе «Джино.Спектр»</a>\n    </div>\n    <div class="jinotransfer-controls" style="display: none;" id="transfer-finish">\n        <a href="" id="transfer-finish-settings" class="btn btn-success btn-large">Войти в «Джино.Спектр»</a>\n    </div>\n</div>\n', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jino_spectrum_transfer', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(92, 66, 'simpleForm2', '', '', 0, '', 148, '2016-04-06 09:08:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_simpleform2', 1, 1, '', 0, '*'),
(93, 67, 'Баннеры', '', '<p style="text-align: center;"><strong>Бренды ЕММА-Беларусь:</strong></p>\r\n<p><a href="http://soundstatus.by/"><img style="float: right;" src="images/emma_brands/ss_banner_1.png" alt="soundstatus" /><br /></a> <a href="http://alphardaudio.ru/"><img style="float: right;" src="images/emma_brands/alphard_banner_3.png" alt="alphard" /><br /></a> <a href="http://audio-development.ru/"><img style="float: right;" src="images/emma_brands/ad_banner.png" alt="Audio Devalopment" /><br /></a></p>\r\n<p style="text-align: right;"><strong>Информационные и технические партнеры:</strong></p>\r\n<p><a href="http://www.xn--80aeatqv1al.xn--p1ai/"><img style="float: right;" src="images/emma_brands/az_logo_2.png" alt="Журнал Автозвук" /><br /></a> <a href="http://www.gomelradio.by/"><img style="float: right;" src="images/emma_brands/107.4fm_logo.jpg" alt="Радио 107.4 Гомель" /><br /></a> <a href="http://www.muztorgservis.by/"><img style="float: right;" src="images/emma_brands/muztorgservis_2.png" alt="Музторгсервис" /><br /></a></p>', 1, 'banner-custom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_modules_menu`
--

CREATE TABLE IF NOT EXISTS `x6si2_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_modules_menu`
--

INSERT INTO `x6si2_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(80, 0),
(83, 0),
(85, 0),
(86, 0),
(88, 0),
(91, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `x6si2_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_overrider`
--

CREATE TABLE IF NOT EXISTS `x6si2_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `x6si2_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_postinstall_messages`
--

INSERT INTO `x6si2_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_redirect_links`
--

CREATE TABLE IF NOT EXISTS `x6si2_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_schemas`
--

CREATE TABLE IF NOT EXISTS `x6si2_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_schemas`
--

INSERT INTO `x6si2_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10007, '3.4.0');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_session`
--

CREATE TABLE IF NOT EXISTS `x6si2_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_session`
--

INSERT INTO `x6si2_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('5601ds1cb9rk3pivt6n1mofd63', 0, 1, '1463658269', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1463658268;s:18:"session.timer.last";i:1463658268;s:17:"session.timer.now";i:1463658268;s:22:"session.client.browser";s:87:"Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon01e.yandex.ru)";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('e28kml0cm0r6lkcv04avofspk4', 1, 1, '1463660026', '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1463660026;s:18:"session.timer.last";i:1463660026;s:17:"session.timer.now";i:1463660026;s:22:"session.client.browser";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"4b12f89285b012fa3af587966a4aa8a3";}', 0, ''),
('en31jeod2mpo388hcgnlb5cq43', 0, 1, '1463652638', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1463652637;s:18:"session.timer.last";i:1463652637;s:17:"session.timer.now";i:1463652637;s:22:"session.client.browser";s:125:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36 OPR/37.0.2178.43";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('kumvntgh7sl8nv5mf35n7kgse5', 0, 1, '1463649189', '__default|a:7:{s:15:"session.counter";i:7;s:19:"session.timer.start";i:1463645460;s:18:"session.timer.last";i:1463649176;s:17:"session.timer.now";i:1463649189;s:22:"session.client.browser";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_tags`
--

CREATE TABLE IF NOT EXISTS `x6si2_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_tags`
--

INSERT INTO `x6si2_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 147, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_template_styles`
--

CREATE TABLE IF NOT EXISTS `x6si2_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_template_styles`
--

INSERT INTO `x6si2_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'My Default Style (Protostar)', '{"templateColor":"#163b20","templateBackgroundColor":"#a3cbf0","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#000000","logoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_ucm_base`
--

CREATE TABLE IF NOT EXISTS `x6si2_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_ucm_content`
--

CREATE TABLE IF NOT EXISTS `x6si2_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_ucm_history`
--

CREATE TABLE IF NOT EXISTS `x6si2_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_ucm_history`
--

INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 6, 1, '', '2016-03-24 17:34:10', 147, 1780, '35c1f31e2612a3e7207be4442713f4ea62b9442e', '{"id":6,"asset_id":"40","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430","alias":"glavnaya-sranitsa","introtext":"<p>d.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-24 17:34:10","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 17:32:03","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"206","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 6, 1, '', '2016-03-24 17:34:25', 147, 1771, '7e24ce4d0ae5a774e1969167255486cba5d5bdcc', '{"id":6,"asset_id":"40","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430","alias":"glavnaya-sranitsa","introtext":"","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-24 17:34:25","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 17:34:10","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"207","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 3, 1, '', '2016-03-24 17:42:21', 147, 1881, '7fcbae00030fd5a3af12b42e429c4ae0b69f1387', '{"id":3,"asset_id":"37","title":"Article 1 Title","alias":"article-1-title","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-24 17:42:21","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 17:41:42","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2016-03-24 18:59:00', 147, 1910, 'a71bcf0a9b553f3a8c28898285693e78f0ff9b4f', '{"id":3,"asset_id":"37","title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044c-1","alias":"article-1-title","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-24 18:59:00","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 18:58:48","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 7, 1, '', '2016-03-24 19:04:29', 147, 5801, '1b469d5226c5a3ae48729cad4e9cdefc9457d330', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h2><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c.<\\/strong><\\/h2>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; bordercolor: black;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23, 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:04:29","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 19:03:52","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 7, 1, '', '2016-03-24 19:06:29', 147, 5801, '01602e4fb51f9396e347ac4fb1e7349456cf706a', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c.<\\/strong><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; bordercolor: black;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23, 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c 2016\\u0433.<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:06:29","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 19:04:29","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 7, 1, '', '2016-03-24 19:07:40', 147, 5789, '1e372fa1fdefbcbba836bd049747601565aa129b', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; bordercolor: black;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:07:40","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 19:06:29","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 7, 1, '', '2016-03-24 19:08:05', 147, 5772, '78a0828ccb2c6ffb18f51ab02966f2a557729abd', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; border-color: black;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:08:05","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 19:07:40","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 7, 1, '', '2016-03-24 19:08:40', 147, 5771, '5a283c857ec0226f3b9db31fef6c24323fbf90c9', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 748px; border: 1px; border-color: gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:08:40","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-24 19:08:05","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 1, 2, '', '2016-03-24 19:13:29', 147, 1919, '1134e48f6df61d84bae4665316c6aa294fa8e698', '{"id":1,"name":"\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432 \\u041d\\u0430\\u0434\\u0442\\u043e\\u0447\\u0435\\u0439","alias":"your-name","con_position":"\\u0414\\u043e\\u043b\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c","address":"\\u0410\\u0434\\u0440\\u0435\\u0441","suburb":"\\u0413\\u043e\\u0440\\u043e\\u0434","state":"","country":"","postcode":"","telephone":"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":"147","checked_out_time":"2016-03-24 19:12:10","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-24 19:13:29","modified_by":"147","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"25"}', 0),
(13, 2, 2, '', '2016-03-24 19:14:33', 147, 1857, '0b1d5a1eb33a862f1446c49a4eca8f618b1d67e9', '{"id":2,"name":"\\u0414\\u044e\\u0431\\u0430\\u043d\\u043e\\u0432 \\u0410\\u043b\\u0435\\u043a\\u0441\\u0435\\u0439","alias":"dyubanov-aleksej","con_position":"\\u0414\\u043e\\u043b\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c","address":"","suburb":"\\u0413\\u043e\\u0440\\u043e\\u0434","state":"","country":"","postcode":"","telephone":"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":2,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-03-24 19:14:33","created_by":"147","created_by_alias":"","modified":"2016-03-24 19:14:33","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(14, 8, 1, '', '2016-03-27 09:53:57', 147, 2271, 'c253d36d08943f0f143340c5bac724c77b29acd4', '{"id":8,"asset_id":56,"title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<p>+37529 <span style=\\"font-size: 13pt;\\">6513674<\\/span> (\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432)<\\/p>\\r\\n<p>+37529 <span style=\\"font-size: 13pt;\\">3337480<\\/span> (\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432)<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>E-mail:<a href=\\"mailto:nadtochey@bluesmobil.by\\">nadtochey@bluesmobil.by<\\/a><\\/p>\\r\\n<p>E-mail:<a href=\\"mailto:a.dubanov@bluesmobil.by\\">a.dubanov@bluesmobil.by<\\/a><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Skype: <span style=\\"font-size: 13pt;\\">bluesmobil_gomel<\\/span> (\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432)<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 09:53:57","created_by":"147","created_by_alias":"","modified":"2016-03-27 09:53:57","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-27 09:53:57","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(16, 9, 5, '', '2016-03-27 10:35:41', 147, 616, 'b32562647040174ca68c16e7c16ec73796ca502a', '{"id":9,"asset_id":58,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f","alias":"registratsiya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:35:41","modified_user_id":null,"modified_time":"2016-03-27 10:35:41","hits":"0","language":"*","version":null}', 0),
(17, 10, 5, '', '2016-03-27 10:35:54', 147, 600, '0c0d825c5fb2c2bc0cd0c572b3de39c043265047', '{"id":10,"asset_id":59,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c","alias":"kalendar","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:35:54","modified_user_id":null,"modified_time":"2016-03-27 10:35:54","hits":"0","language":"*","version":null}', 0),
(18, 11, 5, '', '2016-03-27 10:36:00', 147, 594, '5a629245d8fb0128824c2b98dfd1f0d898e74f91', '{"id":11,"asset_id":60,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:36:00","modified_user_id":null,"modified_time":"2016-03-27 10:36:00","hits":"0","language":"*","version":null}', 0),
(19, 12, 5, '', '2016-03-27 10:36:07', 147, 616, 'd1fc96990d3f57ad01159e7fc5572fc3f4e5886b', '{"id":12,"asset_id":61,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"\\u0424\\u043e\\u0442\\u043e\\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f","alias":"fotogalereya","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:36:07","modified_user_id":null,"modified_time":"2016-03-27 10:36:07","hits":"0","language":"*","version":null}', 0),
(20, 13, 5, '', '2016-03-27 10:36:18', 147, 573, 'bfa29f64fd9d8e40276bf36ab8a84f7de4992baf', '{"id":13,"asset_id":62,"parent_id":"1","lft":"21","rgt":22,"level":1,"path":null,"extension":"com_content","title":"\\u0424\\u043e\\u0440\\u0443\\u043c","alias":"forum","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:36:18","modified_user_id":null,"modified_time":"2016-03-27 10:36:18","hits":"0","language":"*","version":null}', 0),
(21, 14, 5, '', '2016-03-27 10:36:53', 147, 580, 'e16226c905c24ed75f9c07280f7c030b2f24a625', '{"id":14,"asset_id":63,"parent_id":"1","lft":"23","rgt":24,"level":1,"path":null,"extension":"com_content","title":"\\u0421\\u0442\\u0443\\u0434\\u0438\\u0438","alias":"studii","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:36:53","modified_user_id":null,"modified_time":"2016-03-27 10:36:53","hits":"0","language":"*","version":null}', 0),
(22, 15, 5, '', '2016-03-27 10:36:59', 147, 572, '709c62e870ba94237742a04afc1b4927491f0514', '{"id":15,"asset_id":64,"parent_id":"1","lft":"25","rgt":26,"level":1,"path":null,"extension":"com_content","title":"\\u0421\\u0443\\u0434\\u044c\\u0438","alias":"sudi","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2016-03-27 10:36:59","modified_user_id":null,"modified_time":"2016-03-27 10:36:59","hits":"0","language":"*","version":null}', 0),
(23, 10, 1, '', '2016-03-27 10:37:52', 147, 1710, 'dc09a0f6cb1172bc627ae4876e1924e4ac5be2d5', '{"id":10,"asset_id":65,"title":"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b","alias":"rezultaty","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:37:52","created_by":"147","created_by_alias":"","modified":"2016-03-27 10:37:52","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-27 10:37:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 10, 1, '', '2016-03-27 10:38:22', 147, 2149, '367537eb58424c88557761294c62eb2caa24d61d', '{"id":10,"asset_id":"65","title":"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b","alias":"rezultaty","introtext":"<p>\\u041d\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u0432\\u044b \\u0441\\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u043b\\u0435\\u0434\\u0438\\u0442\\u044c \\u0437\\u0430 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430\\u043c\\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:37:52","created_by":"147","created_by_alias":"","modified":"2016-03-27 10:38:22","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 10:37:52","publish_up":"2016-03-27 10:37:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 6, 1, '', '2016-03-27 10:40:08', 147, 1839, '41679148f2abaad025af526e4fd41c4ff6d9b40a', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-27 10:40:08","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 10:39:42","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"482","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 6, 1, '', '2016-03-27 10:40:24', 147, 1937, 'a2c2c152d5f4dc9f28b059f3ca3e1bc83a992b7e', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"<p>..<\\/p>\\r\\n<p>..<\\/p>\\r\\n<p>..<\\/p>\\r\\n<p>..<\\/p>\\r\\n<p>..<\\/p>\\r\\n<p>..<\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-03-27 10:40:24","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 10:40:08","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"483","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 9, 1, '', '2016-03-27 12:39:30', 147, 18197, '1d1df2969d46681150650f8ba4d34fe65cb8285f', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0430 \\u0444\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"220\\">\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430<\\/td>\\r\\n<td width=\\"360\\"><select id=\\"regetap\\" name=\\"regetap\\" size=\\"0\\">\\r\\n<option class=\\"s1 s2 s3 s4 s5 s6\\" value=\\"\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430\\">\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>SQ<\\/td>\\r\\n<td><select id=\\"category\\" name=\\"category\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Sound Only\\">Sound Only<\\/option>\\r\\n<option value=\\"E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)\\">E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)<\\/option>\\r\\n<option value=\\"E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)\\">S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)<\\/option>\\r\\n<option value=\\"S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)\\">S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)<\\/option>\\r\\n<option value=\\"S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)\\">S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)\\">M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)<\\/option>\\r\\n<option value=\\"M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)\\">M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)<\\/option>\\r\\n<option value=\\"M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)\\">M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)\\">X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430<\\/td>\\r\\n<td><select id=\\"categorymm\\" name=\\"categorymm\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)\\">S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<option value=\\"X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s1\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESPL<\\/td>\\r\\n<td><select id=\\"categoryespl\\" name=\\"categoryespl\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"E-Category T - 1W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)\\">E-Category T - 1W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)<\\/option>\\r\\n<option value=\\"E-Category T - 2W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)\\">E-Category T - 2W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)<\\/option>\\r\\n<option value=\\"E-Category T - 4W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)\\">E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)<\\/option>\\r\\n<option value=\\"E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)\\">E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)<\\/option>\\r\\n<option value=\\"E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)\\">E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)<\\/option>\\r\\n<option value=\\"X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c\\">\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s2\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Racing<\\/td>\\r\\n<td><select id=\\"racing\\" name=\\"racing\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Racing Stock\\">Racing Stock<\\/option>\\r\\n<option value=\\"Racing Custom\\">Racing Custom<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s3\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA-Art<\\/td>\\r\\n<td><select id=\\"art\\" name=\\"art\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c\\">Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c<\\/option>\\r\\n<option value=\\"Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\">Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\"  >\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s4\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Tuning<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"tuning\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\"  >\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option--> <!--option value=\\"\\u0421\\u041d\\u0413\\"  >\\u0421\\u041d\\u0413<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s5\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Retro<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"retro\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option>\\r\\n<!--option value=\\"Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\"  >Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s6\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESQL<\\/td>\\r\\n<td><select id=\\"esql\\" name=\\"esql\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f *<\\/td>\\r\\n<td><input id=\\"firm\\" class=\\"hint\\" name=\\"firm\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0418\\u041e *<\\/td>\\r\\n<td><input id=\\"fio\\" class=\\"hint\\" name=\\"fio\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0418\\u041e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0440\\u043e\\u0434 *<\\/td>\\r\\n<td><input id=\\"city\\" class=\\"hint\\" name=\\"city\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0440\\u043e\\u0434\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d*<\\/td>\\r\\n<td><input id=\\"phone\\" class=\\"hint\\" name=\\"phone\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>E-mail *<\\/td>\\r\\n<td><input id=\\"email\\" class=\\"hint\\" name=\\"email\\" required=\\"\\" type=\\"email\\" value=\\"\\" placeholder=\\"\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b<\\/td>\\r\\n<td><input id=\\"teamname\\" class=\\"hint\\" name=\\"teamname\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"car\\" class=\\"hint\\" name=\\"car\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b *<\\/td>\\r\\n<td><input id=\\"carcolor\\" class=\\"hint\\" name=\\"carcolor\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430 *<\\/td>\\r\\n<td><input id=\\"cuzov\\" class=\\"hint\\" name=\\"cuzov\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 *<\\/td>\\r\\n<td><input id=\\"nomer\\" class=\\"hint\\" name=\\"nomer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr><th>\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u043e\\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435<\\/th><th>\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430) *<\\/td>\\r\\n<td><input id=\\"headsetb\\" class=\\"hint\\" name=\\"headsetb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"frontacb\\" class=\\"hint\\" name=\\"frontacb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0421\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440(\\u044b) *<\\/td>\\r\\n<td><input id=\\"subwoofb\\" class=\\"hint\\" name=\\"subwoofb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0411\\u0440\\u0435\\u043d\\u0434\\" \\/> <input id=\\"subwoofb_razmer\\" class=\\"hint\\" name=\\"subwoofb_razmer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\" \\/> <input id=\\"subwoofb_kol\\" class=\\"hint\\" name=\\"subwoofb_kol\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043b-\\u0432\\u043e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438) *<\\/td>\\r\\n<td><input id=\\"usilb\\" class=\\"hint\\" name=\\"usilb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438)\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440) *<\\/td>\\r\\n<td><input id=\\"procb\\" class=\\"hint\\" name=\\"procb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"condensb\\" class=\\"hint\\" name=\\"condensb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"addbatterb\\" class=\\"hint\\" name=\\"addbatterb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"provodkab\\" class=\\"hint\\" name=\\"provodkab\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"dvdb\\" class=\\"hint\\" name=\\"dvdb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b *<\\/td>\\r\\n<td><input id=\\"monitorsb\\" class=\\"hint\\" name=\\"monitorsb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f <a href=\\"register\\/tos\\" target=\\"_blank\\">\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/a> *<\\/td>\\r\\n<td><input id=\\"ch1\\" name=\\"tos\\" required=\\"\\" type=\\"checkbox\\" value=\\"accepted\\" \\/><label for=\\"ch1\\">\\u0421\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d<\\/label><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\" align=\\"center\\" width=\\"622\\"><input id=\\"ss\\" class=\\"hint\\" name=\\"ss\\" type=\\"hidden\\" value=\\"a.dubanov@bluesmobil.by\\" \\/> <input class=\\"but\\" name=\\"Send\\" type=\\"submit\\" value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-03-27 12:39:30","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 12:31:47","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(29, 9, 1, '', '2016-03-27 12:59:27', 147, 18250, '54ac62b20021612a6655b1b4fae43c19742b53e5', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0430 \\u0444\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 902px;\\" width=\\"777\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"220\\">\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430<\\/td>\\r\\n<td width=\\"360\\"><select id=\\"regetap\\" name=\\"regetap\\" size=\\"0\\">\\r\\n<option class=\\"s1 s2 s3 s4 s5 s6\\" value=\\"\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430\\">\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>SQ<\\/td>\\r\\n<td><select id=\\"category\\" name=\\"category\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Sound Only\\">Sound Only<\\/option>\\r\\n<option value=\\"E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)\\">E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)<\\/option>\\r\\n<option value=\\"E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)\\">S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)<\\/option>\\r\\n<option value=\\"S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)\\">S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)<\\/option>\\r\\n<option value=\\"S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)\\">S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)\\">M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)<\\/option>\\r\\n<option value=\\"M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)\\">M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)<\\/option>\\r\\n<option value=\\"M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)\\">M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)\\">X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430<\\/td>\\r\\n<td><select id=\\"categorymm\\" name=\\"categorymm\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)\\">S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<option value=\\"X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s1\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESPL<\\/td>\\r\\n<td><select id=\\"categoryespl\\" name=\\"categoryespl\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"E-Category T - 1W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)\\">E-Category T - 1W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)<\\/option>\\r\\n<option value=\\"E-Category T - 2W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)\\">E-Category T - 2W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)<\\/option>\\r\\n<option value=\\"E-Category T - 4W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)\\">E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)<\\/option>\\r\\n<option value=\\"E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)\\">E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)<\\/option>\\r\\n<option value=\\"E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)\\">E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)<\\/option>\\r\\n<option value=\\"X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c\\">\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s2\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Racing<\\/td>\\r\\n<td><select id=\\"racing\\" name=\\"racing\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Racing Stock\\">Racing Stock<\\/option>\\r\\n<option value=\\"Racing Custom\\">Racing Custom<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s3\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA-Art<\\/td>\\r\\n<td><select id=\\"art\\" name=\\"art\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c\\">Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c<\\/option>\\r\\n<option value=\\"Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\">Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\"  >\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s4\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Tuning<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"tuning\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\"  >\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option--> <!--option value=\\"\\u0421\\u041d\\u0413\\"  >\\u0421\\u041d\\u0413<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s5\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Retro<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"retro\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option>\\r\\n<!--option value=\\"Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\"  >Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s6\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESQL<\\/td>\\r\\n<td><select id=\\"esql\\" name=\\"esql\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f *<\\/td>\\r\\n<td><input id=\\"firm\\" class=\\"hint\\" name=\\"firm\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0418\\u041e *<\\/td>\\r\\n<td><input id=\\"fio\\" class=\\"hint\\" name=\\"fio\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0418\\u041e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0440\\u043e\\u0434 *<\\/td>\\r\\n<td><input id=\\"city\\" class=\\"hint\\" name=\\"city\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0440\\u043e\\u0434\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d*<\\/td>\\r\\n<td><input id=\\"phone\\" class=\\"hint\\" name=\\"phone\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>E-mail *<\\/td>\\r\\n<td><input id=\\"email\\" class=\\"hint\\" name=\\"email\\" required=\\"\\" type=\\"email\\" value=\\"\\" placeholder=\\"\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b<\\/td>\\r\\n<td><input id=\\"teamname\\" class=\\"hint\\" name=\\"teamname\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"car\\" class=\\"hint\\" name=\\"car\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b *<\\/td>\\r\\n<td><input id=\\"carcolor\\" class=\\"hint\\" name=\\"carcolor\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430 *<\\/td>\\r\\n<td><input id=\\"cuzov\\" class=\\"hint\\" name=\\"cuzov\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 *<\\/td>\\r\\n<td><input id=\\"nomer\\" class=\\"hint\\" name=\\"nomer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr><th>\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u043e\\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435<\\/th><th>\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430) *<\\/td>\\r\\n<td><input id=\\"headsetb\\" class=\\"hint\\" name=\\"headsetb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"frontacb\\" class=\\"hint\\" name=\\"frontacb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0421\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440(\\u044b) *<\\/td>\\r\\n<td><input id=\\"subwoofb\\" class=\\"hint\\" name=\\"subwoofb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0411\\u0440\\u0435\\u043d\\u0434\\" \\/><br \\/> <input id=\\"subwoofb_razmer\\" class=\\"hint\\" name=\\"subwoofb_razmer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\" \\/> <br \\/><input id=\\"subwoofb_kol\\" class=\\"hint\\" name=\\"subwoofb_kol\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043b-\\u0432\\u043e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438) *<\\/td>\\r\\n<td><input id=\\"usilb\\" class=\\"hint\\" name=\\"usilb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438)\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440) *<\\/td>\\r\\n<td><input id=\\"procb\\" class=\\"hint\\" name=\\"procb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"condensb\\" class=\\"hint\\" name=\\"condensb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"addbatterb\\" class=\\"hint\\" name=\\"addbatterb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"provodkab\\" class=\\"hint\\" name=\\"provodkab\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"dvdb\\" class=\\"hint\\" name=\\"dvdb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b *<\\/td>\\r\\n<td><input id=\\"monitorsb\\" class=\\"hint\\" name=\\"monitorsb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f <a href=\\"register\\/tos\\" target=\\"_blank\\">\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/a> *<\\/td>\\r\\n<td><input id=\\"ch1\\" name=\\"tos\\" required=\\"\\" type=\\"checkbox\\" value=\\"accepted\\" \\/><label for=\\"ch1\\">\\u0421\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d<\\/label><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\" align=\\"center\\" width=\\"622\\"><input id=\\"ss\\" class=\\"hint\\" name=\\"ss\\" type=\\"hidden\\" value=\\"a.dubanov@bluesmobil.by\\" \\/> <input class=\\"but\\" name=\\"Send\\" type=\\"submit\\" value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-03-27 12:59:27","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 12:39:30","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"16","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 9, 1, '', '2016-03-27 12:59:55', 147, 18306, '7613bbd11709f4d737ec334d430fcf5046842d78', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0430 \\u0444\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 902px;\\" width=\\"777\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"220\\">\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430<\\/td>\\r\\n<td width=\\"360\\"><select id=\\"regetap\\" name=\\"regetap\\" size=\\"0\\">\\r\\n<option class=\\"s1 s2 s3 s4 s5 s6\\" value=\\"\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430\\">\\u041a\\u0438\\u0435\\u0432, 23 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>SQ<\\/td>\\r\\n<td><select id=\\"category\\" name=\\"category\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Sound Only\\">Sound Only<\\/option>\\r\\n<option value=\\"E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)\\">E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)<\\/option>\\r\\n<option value=\\"E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)\\">S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)<\\/option>\\r\\n<option value=\\"S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)\\">S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)<\\/option>\\r\\n<option value=\\"S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)\\">S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)\\">M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)<\\/option>\\r\\n<option value=\\"M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)\\">M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)<\\/option>\\r\\n<option value=\\"M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)\\">M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)\\">X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430<\\/td>\\r\\n<td><select id=\\"categorymm\\" name=\\"categorymm\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)\\">S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<option value=\\"X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s1\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESPL<\\/td>\\r\\n<td><select id=\\"categoryespl\\" name=\\"categoryespl\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"E-Category T - 1W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)\\">E-Category T - 1W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)<\\/option>\\r\\n<option value=\\"E-Category T - 2W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)\\">E-Category T - 2W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)<\\/option>\\r\\n<option value=\\"E-Category T - 4W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)\\">E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)<\\/option>\\r\\n<option value=\\"E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)\\">E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)<\\/option>\\r\\n<option value=\\"E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)\\">E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)<\\/option>\\r\\n<option value=\\"X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c\\">\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s2\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Racing<\\/td>\\r\\n<td><select id=\\"racing\\" name=\\"racing\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Racing Stock\\">Racing Stock<\\/option>\\r\\n<option value=\\"Racing Custom\\">Racing Custom<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s3\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA-Art<\\/td>\\r\\n<td><select id=\\"art\\" name=\\"art\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c\\">Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c<\\/option>\\r\\n<option value=\\"Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\">Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\"  >\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s4\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Tuning<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"tuning\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\"  >\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option--> <!--option value=\\"\\u0421\\u041d\\u0413\\"  >\\u0421\\u041d\\u0413<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s5\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Retro<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"retro\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option>\\r\\n<!--option value=\\"Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\"  >Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s6\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESQL<\\/td>\\r\\n<td><select id=\\"esql\\" name=\\"esql\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f *<\\/td>\\r\\n<td><input id=\\"firm\\" class=\\"hint\\" name=\\"firm\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0418\\u041e *<\\/td>\\r\\n<td><input id=\\"fio\\" class=\\"hint\\" name=\\"fio\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0418\\u041e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0440\\u043e\\u0434 *<\\/td>\\r\\n<td><input id=\\"city\\" class=\\"hint\\" name=\\"city\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0440\\u043e\\u0434\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d*<\\/td>\\r\\n<td><input id=\\"phone\\" class=\\"hint\\" name=\\"phone\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>E-mail *<\\/td>\\r\\n<td><input id=\\"email\\" class=\\"hint\\" name=\\"email\\" required=\\"\\" type=\\"email\\" value=\\"\\" placeholder=\\"\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b<\\/td>\\r\\n<td><input id=\\"teamname\\" class=\\"hint\\" name=\\"teamname\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"car\\" class=\\"hint\\" name=\\"car\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b *<\\/td>\\r\\n<td><input id=\\"carcolor\\" class=\\"hint\\" name=\\"carcolor\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430 *<\\/td>\\r\\n<td><input id=\\"cuzov\\" class=\\"hint\\" name=\\"cuzov\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 *<\\/td>\\r\\n<td><input id=\\"nomer\\" class=\\"hint\\" name=\\"nomer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr><th style=\\"text-align: left;\\">\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u043e\\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435<\\/th><th style=\\"text-align: left;\\">\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430) *<\\/td>\\r\\n<td><input id=\\"headsetb\\" class=\\"hint\\" name=\\"headsetb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"frontacb\\" class=\\"hint\\" name=\\"frontacb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0421\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440(\\u044b) *<\\/td>\\r\\n<td><input id=\\"subwoofb\\" class=\\"hint\\" name=\\"subwoofb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0411\\u0440\\u0435\\u043d\\u0434\\" \\/><br \\/> <input id=\\"subwoofb_razmer\\" class=\\"hint\\" name=\\"subwoofb_razmer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\" \\/> <br \\/><input id=\\"subwoofb_kol\\" class=\\"hint\\" name=\\"subwoofb_kol\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043b-\\u0432\\u043e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438) *<\\/td>\\r\\n<td><input id=\\"usilb\\" class=\\"hint\\" name=\\"usilb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438)\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440) *<\\/td>\\r\\n<td><input id=\\"procb\\" class=\\"hint\\" name=\\"procb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"condensb\\" class=\\"hint\\" name=\\"condensb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"addbatterb\\" class=\\"hint\\" name=\\"addbatterb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"provodkab\\" class=\\"hint\\" name=\\"provodkab\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"dvdb\\" class=\\"hint\\" name=\\"dvdb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b *<\\/td>\\r\\n<td><input id=\\"monitorsb\\" class=\\"hint\\" name=\\"monitorsb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f <a href=\\"register\\/tos\\" target=\\"_blank\\">\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/a> *<\\/td>\\r\\n<td><input id=\\"ch1\\" name=\\"tos\\" required=\\"\\" type=\\"checkbox\\" value=\\"accepted\\" \\/><label for=\\"ch1\\">\\u0421\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d<\\/label><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\" align=\\"center\\" width=\\"622\\"><input id=\\"ss\\" class=\\"hint\\" name=\\"ss\\" type=\\"hidden\\" value=\\"a.dubanov@bluesmobil.by\\" \\/> <input class=\\"but\\" name=\\"Send\\" type=\\"submit\\" value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-03-27 12:59:55","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 12:59:27","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(31, 9, 1, '', '2016-03-27 13:17:22', 147, 18300, 'acd1aaead7bd6061a5ebd3ff1f80a880d9bc49c1', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0430 \\u0444\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"height: 902px;\\" width=\\"777\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td width=\\"220\\">\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u0430\\u043f\\u0430<\\/td>\\r\\n<td width=\\"360\\"><select id=\\"regetap\\" name=\\"regetap\\" size=\\"0\\">\\r\\n<option class=\\"s1 s2 s3 s4 s5 s6\\" value=\\"\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u043c\\u0430\\u0439, 2016 - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u043c\\u0430\\u0439, 2016 - \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>SQ<\\/td>\\r\\n<td><select id=\\"category\\" name=\\"category\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Sound Only\\">Sound Only<\\/option>\\r\\n<option value=\\"E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)\\">E\\u2013Category Up to 3000\\u20ac (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a 3000)<\\/option>\\r\\n<option value=\\"E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E\\u2013Category Unlimited (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)\\">S-Category OEM (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c OEM)<\\/option>\\r\\n<option value=\\"S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)\\">S-Category Up to 4000\\u20ac (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c 4000)<\\/option>\\r\\n<option value=\\"S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)\\">S-Category Unlimited (\\u041b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u044c \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)\\">M-Category OEM (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u041e\\u0415\\u041c)<\\/option>\\r\\n<option value=\\"M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)\\">M-Category Up to 5000\\u20ac (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 5000)<\\/option>\\r\\n<option value=\\"M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)\\">M-Category Unlimited (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category Limited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)\\">X-Category Unlimited (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442 \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u043c\\u0435\\u0434\\u0438\\u0430<\\/td>\\r\\n<td><select id=\\"categorymm\\" name=\\"categorymm\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)\\">S-Category (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a)<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<option value=\\"X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s1\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESPL<\\/td>\\r\\n<td><select id=\\"categoryespl\\" name=\\"categoryespl\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"E-Category T - 1W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)\\">E-Category T - 1W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 1)<\\/option>\\r\\n<option value=\\"E-Category T - 2W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)\\">E-Category T - 2W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 2)<\\/option>\\r\\n<option value=\\"E-Category T - 4W  (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)\\">E-Category T - 4W (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a 4)<\\/option>\\r\\n<option value=\\"E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)\\">E-Category T - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a \\u0431\\u0430\\u0433\\u0430\\u0436\\u043d\\u0438\\u043a \\u0431\\/\\u043e\\u0433\\u0440)<\\/option>\\r\\n<option value=\\"E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)\\">E-Category R - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a R)<\\/option>\\r\\n<option value=\\"E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)\\">E-Category W - unl (\\u041d\\u043e\\u0432\\u0438\\u0447\\u043e\\u043a W)<\\/option>\\r\\n<option value=\\"X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)\\">X-Category unl (\\u042d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0442)<\\/option>\\r\\n<option value=\\"\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c\\">\\u042d\\u043a\\u0441\\u0442\\u0440\\u0438\\u043c<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s2\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Racing<\\/td>\\r\\n<td><select id=\\"racing\\" name=\\"racing\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Racing Stock\\">Racing Stock<\\/option>\\r\\n<option value=\\"Racing Custom\\">Racing Custom<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s3\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA-Art<\\/td>\\r\\n<td><select id=\\"art\\" name=\\"art\\" size=\\"0\\">\\r\\n<option value=\\"\\u043d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c\\">Art \\u0416\\u0438\\u0432\\u043e\\u043f\\u0438\\u0441\\u044c<\\/option>\\r\\n<option value=\\"Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\">Art \\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430\\"  >\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s4\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Tuning<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"tuning\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u043e\\u0442\\u0435\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u0432\\u0442\\u043e<\\/option>\\r\\n<option value=\\"\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\">\\u0422\\u044e\\u043d\\u0438\\u043d\\u0433 \\u0438\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option>\\r\\n<!--option value=\\"\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430\\"  >\\u0418\\u043d\\u043e\\u043c\\u0430\\u0440\\u043a\\u0430<\\/option--> <!--option value=\\"\\u0421\\u041d\\u0413\\"  >\\u0421\\u041d\\u0413<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s5\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>EMMA Retro<\\/td>\\r\\n<td><select id=\\"tuning\\" name=\\"retro\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u0440\\u0435\\u0441\\u0442\\u0430\\u0432\\u0440\\u0430\\u0446\\u0438\\u044f<\\/option>\\r\\n<option value=\\"\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\">\\u0420\\u0435\\u0442\\u0440\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option>\\r\\n<!--option value=\\"Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\"  >Retro \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442<\\/option--><\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr id=\\"s6\\" class=\\"cat\\" style=\\"display: table-row;\\">\\r\\n<td>ESQL<\\/td>\\r\\n<td><select id=\\"esql\\" name=\\"esql\\" size=\\"0\\">\\r\\n<option value=\\"\\u041d\\u0435\\u0442\\">\\u043d\\u0435\\u0442<\\/option>\\r\\n<option value=\\"M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)\\">M-Category (\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440)<\\/option>\\r\\n<\\/select><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f *<\\/td>\\r\\n<td><input id=\\"firm\\" class=\\"hint\\" name=\\"firm\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0418\\u041e *<\\/td>\\r\\n<td><input id=\\"fio\\" class=\\"hint\\" name=\\"fio\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0418\\u041e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0440\\u043e\\u0434 *<\\/td>\\r\\n<td><input id=\\"city\\" class=\\"hint\\" name=\\"city\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0440\\u043e\\u0434\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d*<\\/td>\\r\\n<td><input id=\\"phone\\" class=\\"hint\\" name=\\"phone\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>E-mail *<\\/td>\\r\\n<td><input id=\\"email\\" class=\\"hint\\" name=\\"email\\" required=\\"\\" type=\\"email\\" value=\\"\\" placeholder=\\"\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b<\\/td>\\r\\n<td><input id=\\"teamname\\" class=\\"hint\\" name=\\"teamname\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043a\\u043e\\u043c\\u0430\\u043d\\u0434\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"car\\" class=\\"hint\\" name=\\"car\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b *<\\/td>\\r\\n<td><input id=\\"carcolor\\" class=\\"hint\\" name=\\"carcolor\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0426\\u0432\\u0435\\u0442 \\u043c\\u0430\\u0448\\u0438\\u043d\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430 *<\\/td>\\r\\n<td><input id=\\"cuzov\\" class=\\"hint\\" name=\\"cuzov\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0422\\u0438\\u043f \\u043a\\u0443\\u0437\\u043e\\u0432\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440 *<\\/td>\\r\\n<td><input id=\\"nomer\\" class=\\"hint\\" name=\\"nomer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0413\\u043e\\u0441\\u0443\\u0434\\u0430\\u0440\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr><th style=\\"text-align: left;\\">\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u043e\\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0435<\\/th><th style=\\"text-align: left;\\">\\u0411\\u0440\\u0435\\u043d\\u0434\\u044b<\\/th><\\/tr>\\r\\n<tr>\\r\\n<td>\\u0413\\/\\u0443 (\\u043c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430) *<\\/td>\\r\\n<td><input id=\\"headsetb\\" class=\\"hint\\" name=\\"headsetb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442\\u043e\\u043b\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"frontacb\\" class=\\"hint\\" name=\\"frontacb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0424\\u0440\\u043e\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0430\\u043a\\u0443\\u0441\\u0442\\u0438\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0421\\u0430\\u0431\\u0432\\u0443\\u0444\\u0435\\u0440(\\u044b) *<\\/td>\\r\\n<td><input id=\\"subwoofb\\" class=\\"hint\\" name=\\"subwoofb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0411\\u0440\\u0435\\u043d\\u0434\\" \\/><br \\/> <input id=\\"subwoofb_razmer\\" class=\\"hint\\" name=\\"subwoofb_razmer\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\" \\/> <br \\/><input id=\\"subwoofb_kol\\" class=\\"hint\\" name=\\"subwoofb_kol\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043b-\\u0432\\u043e\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438) *<\\/td>\\r\\n<td><input id=\\"usilb\\" class=\\"hint\\" name=\\"usilb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0423\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044c(\\u0438)\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b (\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 (\\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u0432\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439), \\u044d\\u043a\\u0432\\u0430\\u043b\\u0430\\u0439\\u0437\\u0435\\u0440, \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u0435\\u0440) *<\\/td>\\r\\n<td><input id=\\"procb\\" class=\\"hint\\" name=\\"procb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0410\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"condensb\\" class=\\"hint\\" name=\\"condensb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041a\\u043e\\u043d\\u0434\\u0435\\u043d\\u0441\\u0430\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440 *<\\/td>\\r\\n<td><input id=\\"addbatterb\\" class=\\"hint\\" name=\\"addbatterb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u0414\\u043e\\u043f. \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430 *<\\/td>\\r\\n<td><input id=\\"provodkab\\" class=\\"hint\\" name=\\"provodkab\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041f\\u0440\\u043e\\u0432\\u043e\\u0434\\u043a\\u0430\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c *<\\/td>\\r\\n<td><input id=\\"dvdb\\" class=\\"hint\\" name=\\"dvdb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"DVD-\\u043f\\u0440\\u043e\\u0438\\u0433\\u0440\\u044b\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b *<\\/td>\\r\\n<td><input id=\\"monitorsb\\" class=\\"hint\\" name=\\"monitorsb\\" required=\\"\\" type=\\"text\\" value=\\"\\" placeholder=\\"\\u041c\\u043e\\u043d\\u0438\\u0442\\u043e\\u0440\\u044b\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u042f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u044e \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f <a href=\\"register\\/tos\\" target=\\"_blank\\">\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/a> *<\\/td>\\r\\n<td><input id=\\"ch1\\" name=\\"tos\\" required=\\"\\" type=\\"checkbox\\" value=\\"accepted\\" \\/><label for=\\"ch1\\">\\u0421\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d<\\/label><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\" align=\\"center\\" width=\\"622\\"><input id=\\"ss\\" class=\\"hint\\" name=\\"ss\\" type=\\"hidden\\" value=\\"a.dubanov@bluesmobil.by\\" \\/> <input class=\\"but\\" name=\\"Send\\" type=\\"submit\\" value=\\"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u0437\\u0430\\u044f\\u0432\\u043a\\u0443\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-03-27 13:17:22","modified_by":"147","checked_out":"147","checked_out_time":"2016-03-27 13:16:19","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"23","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 9, 1, '', '2016-04-06 08:23:26', 147, 1878, '667388a802cc08e5dec1b4519d864ece0a07f4ee', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 08:23:26","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-06 08:23:09","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"32","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 9, 1, '', '2016-04-06 08:51:26', 148, 1909, '8322b085f161cb48b1d4f4464f87923b8ef03097', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>{loadmodule foxcontact}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 08:51:26","modified_by":"148","checked_out":"148","checked_out_time":"2016-04-06 08:51:15","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"41","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 9, 1, '', '2016-04-06 08:52:28', 148, 1919, '96f5abc66abd6ce4a7ec5bace0c8ec6c12b7c5a6', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>123123 {loadmodule foxcontact}<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 08:52:28","modified_by":"148","checked_out":"148","checked_out_time":"2016-04-06 08:52:02","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"43","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 9, 1, '', '2016-04-06 09:03:11', 148, 1914, '959f1e383b153b7e06cc67231e841f50c5a17af5', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>123123 {loadmodule whoonline}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 09:03:11","modified_by":"148","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"53","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 9, 1, '', '2016-04-06 09:06:19', 148, 1918, '374f0223eb843e9e247908292ffabe78eae31d33', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>123123 {loadmodule mod_login}<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 09:06:19","modified_by":"148","checked_out":"148","checked_out_time":"2016-04-06 09:06:10","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"54","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(37, 9, 1, '', '2016-04-06 09:10:31', 148, 1888, '41a4f97c6bd6c41cc1fe6c8088e9b81fd0a04065', '{"id":9,"asset_id":"57","title":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f","alias":"forma-registratsii-na-sorevnovaniya","introtext":"<p>}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 10:22:33","created_by":"147","created_by_alias":"","modified":"2016-04-06 09:10:31","modified_by":"148","checked_out":"148","checked_out_time":"2016-04-06 09:06:25","publish_up":"2016-03-27 10:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"55","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 7, 1, '', '2016-04-15 16:42:16', 147, 5760, 'f06fff53a5ea75b824b9eb51ed5a3ccbce8c85f2', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 630px; border: 1px gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-04-15 16:42:16","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-15 16:42:04","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"138","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(39, 7, 1, '', '2016-04-15 16:42:44', 147, 5760, '31cf2bb9c6b78486811daca6671ac804c61cbb10', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 599px; border: 1px gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-04-15 16:42:44","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-15 16:42:21","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"139","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(40, 7, 1, '', '2016-04-15 16:42:55', 147, 5761, 'f88f844925674b7aff761c9ba2629ff6d2649de8', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 608px; border: 1px gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u041c\\u0430\\u0439<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0411\\u043e\\u0431\\u0440\\u0443\\u0439\\u0441\\u043a<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":"1","catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-04-15 16:42:55","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-15 16:42:50","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"140","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 3, 1, '', '2016-04-18 21:32:57', 147, 2160, '7657cc27f4099cb158bf70b08fdb8d0d510de560', '{"id":3,"asset_id":"37","title":"\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 2016 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410","alias":"article-1-title","introtext":"<p>\\u0417\\u0434\\u0435\\u0441\\u044c \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 21:32:57","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 21:31:41","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 8, 5, '', '2016-04-18 21:36:07', 147, 571, '5f1a19a0b362e497a394aecd6c223bbe206f626b', '{"id":8,"asset_id":"36","parent_id":"1","lft":"11","rgt":"12","level":"1","path":"news","extension":"com_content","title":"News","alias":"news","note":"","description":"","published":"1","checked_out":"147","checked_out_time":"2016-04-18 21:35:32","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"147","created_time":"2011-01-01 00:00:01","modified_user_id":"147","modified_time":"2016-04-18 21:36:07","hits":"0","language":"*","version":"1"}', 0),
(43, 3, 1, '', '2016-04-18 21:58:29', 147, 6679, '705ffe375507518d6251f373b7fbda480539bb8b', '{"id":3,"asset_id":"37","title":"\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 2016 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410","alias":"article-1-title","introtext":"<p>\\u0412\\u043e\\u0442 \\u0432\\u043e\\u0442 \\u0443\\u0436\\u0435 \\u0441\\u043e\\u0432\\u0441\\u0435\\u043c \\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438 \\u043e\\u0441\\u0442\\u0430\\u043b\\u043e\\u0441\\u044c \\u0434\\u043e \\u043e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0434\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0441\\u0442 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0439\\u0434\\u0435\\u0442 \\u0432 \\u0413\\u043e\\u043c\\u0435\\u043b\\u0435 \\u0431\\u043b\\u0438\\u0436\\u0435 \\u043a \\u043a\\u043e\\u043d\\u0446\\u0443 \\u043c\\u0430\\u044f.<\\/p>\\r\\n<p>\\u0416\\u0435\\u043b\\u0430\\u044e\\u0449\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u0434\\u0430\\u0432\\u0430\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u0432\\u0430\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0437\\u0430 \\u043d\\u0430 \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u043c\\u0435\\u043d\\u044e \\"\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\\".<\\/p>\\r\\n<p>\\u0422\\u0430\\u043a \\u043a\\u0430\\u043a \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0430\\u0442\\u0435 \\u0415\\u041c\\u041c\\u0410 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u0432\\u043f\\u0435\\u0440\\u0432\\u044b\\u0435, \\u043f\\u0440\\u0438\\u043d\\u043e\\u0441\\u0438\\u043c \\u0438\\u0437\\u0432\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430 \\u043d\\u0435\\u043a\\u0443\\u044e \\u043d\\u0435\\u0441\\u0432\\u043e\\u0435\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438, \\u0441\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0435\\u043c \\u0432\\u0441\\u0435 \\u0432\\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u043d\\u0430 \\u0441\\u0432\\u043e\\u0438 \\u043c\\u0435\\u0441\\u0442\\u0430 ;)<\\/p>\\r\\n<p>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0439\\u00a0\\u0432\\u044b\\u0441\\u0442\\u0443\\u043f\\u0430\\u0435\\u0442 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 \\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" \\u043f\\u0440\\u0438 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0435 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u043e\\u0432 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439. \\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u044b \\u043a\\u0430\\u043a \\u0437\\u0434\\u0435\\u0441\\u044c, \\u0442\\u0430\\u043a \\u0438 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\\u00a0<a title=\\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/news.html\\" target=\\"_blank\\">\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\"<\\/a><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 1.3em;\\">\\u0438 \\u0435\\u0435 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430\\u0445 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0435\\u0442\\u044f\\u0445 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0412\\u041a\\" href=\\"https:\\/\\/vk.com\\/club4665988\\" target=\\"_blank\\">\\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435<\\/a>\\u00a0\\u0438 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0432 facebook\\" href=\\"https:\\/\\/www.facebook.com\\/groups\\/819421018105071\\/?ref=bookmarks\\" target=\\"_blank\\">facebook<\\/a>.<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 21:58:29","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 21:36:54","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 3, 1, '', '2016-04-18 22:01:56', 147, 6815, '2cc2bb9c4f262f374116d32ec3e7f073a9a1f8d0', '{"id":3,"asset_id":"37","title":"\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 2016 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410","alias":"article-1-title","introtext":"<p>\\u0412\\u043e\\u0442 \\u0432\\u043e\\u0442 \\u0443\\u0436\\u0435 \\u0441\\u043e\\u0432\\u0441\\u0435\\u043c \\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438 \\u043e\\u0441\\u0442\\u0430\\u043b\\u043e\\u0441\\u044c \\u0434\\u043e \\u043e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0434\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0441\\u0442 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0439\\u0434\\u0435\\u0442 \\u0432 \\u0413\\u043e\\u043c\\u0435\\u043b\\u0435 \\u0431\\u043b\\u0438\\u0436\\u0435 \\u043a \\u043a\\u043e\\u043d\\u0446\\u0443 \\u043c\\u0430\\u044f.<\\/p>\\r\\n<p>\\u0416\\u0435\\u043b\\u0430\\u044e\\u0449\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u0434\\u0430\\u0432\\u0430\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u0432\\u0430\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0437\\u0430 \\u043d\\u0430 \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u043c\\u0435\\u043d\\u044e \\"\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\\".<\\/p>\\r\\n<p>\\u0422\\u0430\\u043a \\u043a\\u0430\\u043a \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0430\\u0442\\u0435 \\u0415\\u041c\\u041c\\u0410 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u0432\\u043f\\u0435\\u0440\\u0432\\u044b\\u0435, \\u043f\\u0440\\u0438\\u043d\\u043e\\u0441\\u0438\\u043c \\u0438\\u0437\\u0432\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430 \\u043d\\u0435\\u043a\\u0443\\u044e \\u043d\\u0435\\u0441\\u0432\\u043e\\u0435\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438, \\u0441\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0435\\u043c \\u0432\\u0441\\u0435 \\u0432\\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u043d\\u0430 \\u0441\\u0432\\u043e\\u0438 \\u043c\\u0435\\u0441\\u0442\\u0430 ;)<\\/p>\\r\\n<p>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0439\\u00a0\\u0432\\u044b\\u0441\\u0442\\u0443\\u043f\\u0430\\u0435\\u0442 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 <a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\"<\\/a>\\u00a0\\u043f\\u0440\\u0438 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0435 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u043e\\u0432 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439. \\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u044b \\u043a\\u0430\\u043a \\u0437\\u0434\\u0435\\u0441\\u044c, \\u0442\\u0430\\u043a \\u0438 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\\u00a0<a title=\\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/news.html\\" target=\\"_blank\\">\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\"<\\/a><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 1.3em;\\">\\u0438 \\u0435\\u0435 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430\\u0445 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0435\\u0442\\u044f\\u0445 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0412\\u041a\\" href=\\"https:\\/\\/vk.com\\/club4665988\\" target=\\"_blank\\">\\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435<\\/a>\\u00a0\\u0438 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0432 facebook\\" href=\\"https:\\/\\/www.facebook.com\\/groups\\/819421018105071\\/?ref=bookmarks\\" target=\\"_blank\\">facebook<\\/a>.<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:01:56","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 21:58:29","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 6, 1, '', '2016-04-18 22:10:37', 147, 5299, '7c9bc93c923d710e918f089b23aa835bfb944730', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"<p class=\\"MsoNormal\\">EMMA \\u2013 \\u044d\\u0442\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0443\\u0437\\u044b\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 2000 \\u0433\\u043e\\u0434\\u0443. \\u0426\\u0435\\u043b\\u044c\\u044e \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\\u0445 \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0440\\u0435\\u043b\\u0438\\u0449\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0417\\u0430 \\u0433\\u043e\\u0434\\u044b \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0415\\u041c\\u041c\\u0410 \\u0441\\u043e\\u0431\\u0440\\u0430\\u043b\\u0430 \\u0432\\u043e\\u043a\\u0440\\u0443\\u0433 \\u0441\\u0435\\u0431\\u044f \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 caraudio. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c \\u0432 40 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0421 2016 \\u0433\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b\\u0430\\u0441\\u044c \\u043a \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0441\\u0442\\u0430\\u0440\\u0430\\u043d\\u0438\\u044f\\u043c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 <a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\u00ab\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u00bb<\\/a>.<br \\/> <!-- [if !supportLineBreakNewLine]--><br \\/> <!--[endif]--><\\/p>\\r\\n<p class=\\"MsoNormal\\">** \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:10:37","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:07:58","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"1780","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 6, 1, '', '2016-04-18 22:10:57', 147, 5285, 'b983d40aba5dddcc589ae520bc11460724d62eac', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"<p class=\\"MsoNormal\\">EMMA \\u2013 \\u044d\\u0442\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0443\\u0437\\u044b\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 2000 \\u0433\\u043e\\u0434\\u0443. \\u0426\\u0435\\u043b\\u044c\\u044e \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\\u0445 \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0440\\u0435\\u043b\\u0438\\u0449\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0417\\u0430 \\u0433\\u043e\\u0434\\u044b \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0415\\u041c\\u041c\\u0410 \\u0441\\u043e\\u0431\\u0440\\u0430\\u043b\\u0430 \\u0432\\u043e\\u043a\\u0440\\u0443\\u0433 \\u0441\\u0435\\u0431\\u044f \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 caraudio. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c \\u0432 40 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p>\\u0421 2016 \\u0433\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b\\u0430\\u0441\\u044c \\u043a \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0441\\u0442\\u0430\\u0440\\u0430\\u043d\\u0438\\u044f\\u043c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 <a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\u00ab\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u00bb<\\/a>.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><!-- [if !supportLineBreakNewLine]--><br \\/> <!--[endif]--><\\/p>\\r\\n<p class=\\"MsoNormal\\">** \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:10:57","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:10:37","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"1781","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 6, 1, '', '2016-04-18 22:11:48', 147, 5357, '9710d51fe150bc06095ce0b749daa7c54584919b', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"<p class=\\"MsoNormal\\"><strong>EMMA<\\/strong> \\u2013 \\u044d\\u0442\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0443\\u0437\\u044b\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 2000 \\u0433\\u043e\\u0434\\u0443. \\u0426\\u0435\\u043b\\u044c\\u044e \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\\u0445 \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0440\\u0435\\u043b\\u0438\\u0449\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0417\\u0430 \\u0433\\u043e\\u0434\\u044b \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u043e\\u0431\\u0440\\u0430\\u043b\\u0430 \\u0432\\u043e\\u043a\\u0440\\u0443\\u0433 \\u0441\\u0435\\u0431\\u044f \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 caraudio. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c \\u0432 40 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p>\\u0421 2016 \\u0433\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b\\u0430\\u0441\\u044c \\u043a \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0441\\u0442\\u0430\\u0440\\u0430\\u043d\\u0438\\u044f\\u043c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 <strong><a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\u00ab\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u00bb<\\/a><\\/strong>.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><!-- [if !supportLineBreakNewLine]--><br \\/> <!--[endif]--><\\/p>\\r\\n<p class=\\"MsoNormal\\">** \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:11:48","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:10:57","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"1782","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(48, 6, 1, '', '2016-04-18 22:12:12', 147, 5512, '729cc22913eb586627173cb0d67a508e906802b5', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c","alias":"glavnaya-sranitsa","introtext":"<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\"><strong>EMMA<\\/strong> \\u2013 \\u044d\\u0442\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0443\\u0437\\u044b\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 2000 \\u0433\\u043e\\u0434\\u0443. \\u0426\\u0435\\u043b\\u044c\\u044e \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\\u0445 \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0440\\u0435\\u043b\\u0438\\u0449\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\">\\u0417\\u0430 \\u0433\\u043e\\u0434\\u044b \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u043e\\u0431\\u0440\\u0430\\u043b\\u0430 \\u0432\\u043e\\u043a\\u0440\\u0443\\u0433 \\u0441\\u0435\\u0431\\u044f \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 caraudio. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c \\u0432 40 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u0421 2016 \\u0433\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b\\u0430\\u0441\\u044c \\u043a \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0441\\u0442\\u0430\\u0440\\u0430\\u043d\\u0438\\u044f\\u043c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 <strong><a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\u00ab\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u00bb<\\/a><\\/strong>.<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\"><!-- [if !supportLineBreakNewLine]--><br \\/> <!--[endif]--><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\">** \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:12:12","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:11:48","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":16,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"1783","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(49, 6, 1, '', '2016-04-18 22:13:00', 147, 5463, 'aa6d949d2235727e4eb00e35838188d2a6281b31', '{"id":6,"asset_id":"40","title":"\\u041e\\u0431 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410","alias":"glavnaya-sranitsa","introtext":"<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\"><strong>EMMA<\\/strong> \\u2013 \\u044d\\u0442\\u043e \\u0435\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u0430\\u044f \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u044f \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0443\\u0437\\u044b\\u043a\\u0438, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432 2000 \\u0433\\u043e\\u0434\\u0443. \\u0426\\u0435\\u043b\\u044c\\u044e \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0430 \\u0432\\u043e \\u0432\\u0441\\u0435\\u0445 \\u0435\\u0433\\u043e \\u043f\\u0440\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\\u0445 \\u0438 \\u043a\\u0430\\u043a \\u0441\\u043b\\u0435\\u0434\\u0441\\u0442\\u0432\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0437\\u0440\\u0435\\u043b\\u0438\\u0449\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\">\\u0417\\u0430 \\u0433\\u043e\\u0434\\u044b \\u0441\\u0432\\u043e\\u0435\\u0433\\u043e \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u043e\\u0431\\u0440\\u0430\\u043b\\u0430 \\u0432\\u043e\\u043a\\u0440\\u0443\\u0433 \\u0441\\u0435\\u0431\\u044f \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u043e\\u0435 \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432 \\u0432 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438 caraudio. \\u0412 \\u043d\\u0430\\u0441\\u0442\\u043e\\u044f\\u0449\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430 \\u0430\\u0441\\u0441\\u043e\\u0446\\u0438\\u0430\\u0446\\u0438\\u0438 <strong>\\u0415\\u041c\\u041c\\u0410<\\/strong> \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c \\u0432 40 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430\\u0445 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u0421 2016 \\u0433\\u043e\\u0434\\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e \\u043f\\u0440\\u0438\\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b\\u0430\\u0441\\u044c \\u043a \\u044d\\u0442\\u043e\\u043c\\u0443 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443, \\u0431\\u043b\\u0430\\u0433\\u043e\\u0434\\u0430\\u0440\\u044f \\u0441\\u0442\\u0430\\u0440\\u0430\\u043d\\u0438\\u044f\\u043c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 <strong><a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\u00ab\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u00bb<\\/a><\\/strong>.<\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\"><!-- [if !supportLineBreakNewLine]--><br \\/> <!--[endif]--><\\/p>\\r\\n<p class=\\"MsoNormal\\" style=\\"text-align: justify;\\">** \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d...<\\/p>","fulltext":"","state":1,"catid":"2","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:13:00","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:12:12","publish_up":"2012-01-04 04:27:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"0\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":17,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"1784","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 3, 1, '', '2016-04-18 22:19:06', 147, 6939, 'a1fbab807d7f3f29ec99fd831c36c5b5a792973d', '{"id":3,"asset_id":"37","title":"\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 2016 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410","alias":"article-1-title","introtext":"<p style=\\"text-align: justify;\\">\\u0412\\u043e\\u0442 \\u0432\\u043e\\u0442 \\u0443\\u0436\\u0435 \\u0441\\u043e\\u0432\\u0441\\u0435\\u043c \\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438 \\u043e\\u0441\\u0442\\u0430\\u043b\\u043e\\u0441\\u044c \\u0434\\u043e \\u043e\\u0431\\u044a\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0434\\u0430\\u0442 \\u0438 \\u043c\\u0435\\u0441\\u0442 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0430 \\u043f\\u0440\\u043e\\u0439\\u0434\\u0435\\u0442 \\u0432 \\u0413\\u043e\\u043c\\u0435\\u043b\\u0435 \\u0431\\u043b\\u0438\\u0436\\u0435 \\u043a \\u043a\\u043e\\u043d\\u0446\\u0443 \\u043c\\u0430\\u044f.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u0416\\u0435\\u043b\\u0430\\u044e\\u0449\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u0434\\u0430\\u0432\\u0430\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u0432\\u0430\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0437\\u0430 \\u043d\\u0430 \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u043c\\u0435\\u043d\\u044e \\"\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f\\".<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u0422\\u0430\\u043a \\u043a\\u0430\\u043a \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0430\\u0442\\u0435 \\u0415\\u041c\\u041c\\u0410 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u044f\\u0442 \\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438 \\u0432\\u043f\\u0435\\u0440\\u0432\\u044b\\u0435, \\u043f\\u0440\\u0438\\u043d\\u043e\\u0441\\u0438\\u043c \\u0438\\u0437\\u0432\\u0438\\u043d\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430 \\u043d\\u0435\\u043a\\u0443\\u044e \\u043d\\u0435\\u0441\\u0432\\u043e\\u0435\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438, \\u0441\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0435\\u043c \\u0432\\u0441\\u0435 \\u0432\\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u043d\\u0430 \\u0441\\u0432\\u043e\\u0438 \\u043c\\u0435\\u0441\\u0442\\u0430 ;)<\\/p>\\r\\n<p style=\\"text-align: justify;\\">\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0439\\u00a0\\u0432\\u044b\\u0441\\u0442\\u0443\\u043f\\u0430\\u0435\\u0442 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0439 <a title=\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/\\" target=\\"_blank\\">\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\"<\\/a>\\u00a0\\u043f\\u0440\\u0438 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0435 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u043e\\u0432 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439. \\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u044b \\u043a\\u0430\\u043a \\u0437\\u0434\\u0435\\u0441\\u044c, \\u0442\\u0430\\u043a \\u0438 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\\u00a0<a title=\\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\" href=\\"http:\\/\\/bluesmobil.by\\/news.html\\" target=\\"_blank\\">\\"\\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\"<\\/a><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0<\\/span><span style=\\"font-size: 12.16px; line-height: 1.3em;\\">\\u0438 \\u0435\\u0435 \\u0433\\u0440\\u0443\\u043f\\u043f\\u0430\\u0445 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0435\\u0442\\u044f\\u0445 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0412\\u041a\\" href=\\"https:\\/\\/vk.com\\/club4665988\\" target=\\"_blank\\">\\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435<\\/a>\\u00a0\\u0438 <a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0411\\u043b\\u044e\\u0437\\u043c\\u043e\\u0431\\u0438\\u043b\\u044c \\u0432 facebook\\" href=\\"https:\\/\\/www.facebook.com\\/groups\\/819421018105071\\/?ref=bookmarks\\" target=\\"_blank\\">facebook<\\/a>.<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2011-01-01 00:00:01","created_by":"147","created_by_alias":"Joomla","modified":"2016-04-18 22:19:06","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-18 22:18:55","publish_up":"2012-01-04 03:10:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 11, 1, '', '2016-04-26 12:46:46', 147, 2371, '34fb30939414b4b20ebf7f7540dbd07345f5ff96', '{"id":11,"asset_id":69,"title":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"pravila-sorevnovanij","introtext":"<p>\\u041e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430\\u043c\\u0438 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 EMMA-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c 2016 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e <strong><a title=\\"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 EMMA-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c 2016\\" href=\\"http:\\/\\/emma-belarus.by\\/images\\/emma_rules\\/emma-belarus-rules-2016.pdf\\" target=\\"_blank\\">\\u0441\\u0441\\u044b\\u043b\\u043a\\u0435<\\/a><\\/strong>.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-04-26 12:46:46","created_by":"147","created_by_alias":"","modified":"2016-04-26 12:46:46","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-04-26 12:46:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 8, 1, '', '2016-04-28 07:34:01', 147, 3584, 'c19fca65b3eff298570c5436527bd7aaaceef4bb', '{"id":8,"asset_id":"56","title":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","alias":"kontakty","introtext":"<p><strong>\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e:<\\/strong><\\/p>\\r\\n<p>\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432 \\u041d\\u0430\\u0434\\u0442\\u043e\\u0447\\u0435\\u0439 (e-mail:\\u00a0<a style=\\"font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;\\" href=\\"mailto:nadtochey@bluesmobil.by\\">nadtochey@bluesmobil.by<\\/a>\\u00a0, \\u0442\\u0435\\u043b. +375296513674)<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439 \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440:<\\/strong><\\/p>\\r\\n<p>\\u0410\\u043b\\u0435\\u043a\\u0441\\u0435\\u0439 \\u0414\\u044e\\u0431\\u0430\\u043d\\u043e\\u0432 (<span style=\\"font-size: 12.16px; line-height: 15.808px;\\">e-mail:\\u00a0<\\/span><a style=\\"font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;\\" href=\\"mailto:a.dubanov@bluesmobil.by\\">a.dubanov@bluesmobil.by<\\/a>\\u00a0)<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><strong>\\u041a\\u043e\\u043b\\u043b\\u0435\\u0433\\u0438\\u044f \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u0445 \\u0441\\u0443\\u0434\\u0435\\u0439:<\\/strong><\\/p>\\r\\n<p>\\u0410\\u043d\\u0434\\u0440\\u0435\\u0439 \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 (e-mail:\\u00a0<a style=\\"font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;\\" href=\\"mailto:grodno_two@bluesmobil.by\\">grodno_two@bluesmobil.by<\\/a>\\u00a0)<\\/p>\\r\\n<p><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u0412\\u044f\\u0447\\u0435\\u0441\\u043b\\u0430\\u0432 \\u041d\\u0430\\u0434\\u0442\\u043e\\u0447\\u0435\\u0439 (e-mail:\\u00a0<\\/span><a style=\\"font-size: 12.16px; line-height: 15.808px; color: #0000cc; text-decoration: underline;\\" href=\\"mailto:nadtochey@bluesmobil.by\\">nadtochey@bluesmobil.by<\\/a><span style=\\"font-size: 12.16px; line-height: 15.808px;\\">\\u00a0)<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-27 09:53:57","created_by":"147","created_by_alias":"","modified":"2016-04-28 07:34:01","modified_by":"147","checked_out":"147","checked_out_time":"2016-04-28 07:24:40","publish_up":"2016-03-27 09:53:57","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"66","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 7, 1, '', '2016-05-11 11:04:55', 147, 5263, '5755edc6982288548be215ac5c92d5a09e259d3f', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 575px; border: 1px gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 18<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-05-11 11:04:55","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-11 11:03:13","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"315","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2016-05-11 12:25:56', 147, 5263, 'facdd043d36571b41636d55ebdaa32d03ceb79ff', '{"id":7,"asset_id":"55","title":"\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439","alias":"kalendar-predstoyashchikh-sorevnovanij","introtext":"<h3><strong>\\u041a\\u0430\\u043b\\u0435\\u043d\\u0434\\u0430\\u0440\\u044c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0449\\u0438\\u0445 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043f\\u043e \\u0410\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u043f\\u043e \\u0432\\u0435\\u0440\\u0441\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410, \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u0432 \\u0441\\u0435\\u0437\\u043e\\u043d\\u0435 2016.<\\/strong><\\/h3>\\r\\n<table style=\\"height: 131px; width: 575px; border: 1px gray;\\" border=\\"2\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0414\\u0430\\u0442\\u0430<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u0413\\u043e\\u0440\\u043e\\u0434<\\/strong><\\/td>\\r\\n<td style=\\"text-align: left;\\"><strong>\\u00a0\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435<\\/strong><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043d\\u044c, 18<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0418\\u044e\\u043b\\u044c, 23<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u0440\\u043e\\u0434\\u043d\\u043e<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443. Sunday 2016.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0410\\u0432\\u0433\\u0443\\u0441\\u0442<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"text-align: left;\\">\\u0421\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u0413\\u043e\\u043c\\u0435\\u043b\\u044c<\\/td>\\r\\n<td style=\\"text-align: left;\\">\\u00a0\\u0424\\u0438\\u043d\\u0430\\u043b \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443.<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u0422\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0441\\u0442\\u0430 \\u0438 \\u0441\\u0445\\u0435\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0432 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u044f\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430 \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 19:00:55","created_by":"147","created_by_alias":"","modified":"2016-05-11 12:25:56","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-11 12:25:41","publish_up":"2016-03-24 19:00:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"322","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 12, 1, '', '2016-05-16 13:47:09', 147, 4063, '3a409e0bc7151d2a303d6e09bc76403b28d5baa2', '{"id":12,"asset_id":70,"title":"\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u0441\\u043e\\u0440\\u0435\\u0432\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439!","alias":"vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij","introtext":"<p class=\\"MsoNormal\\">\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u00abI \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410\\u00bb.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u0441\\u0443\\u0434\\u044c\\u0438 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u043c \\u043c\\u0435\\u043d\\u044e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> 18 \\u0438\\u044e\\u043d\\u044f 2016 \\u0433\\u043e\\u0434\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041c\\u0435\\u0441\\u0442\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> \\u0433. \\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u0412\\u041f\\u041f \\u00ab\\u0417\\u044f\\u0431\\u0440\\u043e\\u0432\\u043a\\u0430\\u00bb.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b GPS:<\\/strong> n52.306589, e31.160831, +52\\u00b0 18'' 23.72\\", +31\\u00b0 9'' 38.99\\"<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-16 13:47:09","created_by":"147","created_by_alias":"","modified":"2016-05-16 13:47:09","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-05-16 13:47:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(56, 12, 1, '', '2016-05-16 13:52:30', 147, 4328, '6e547fff1981ff708afd44a2de4b823e100305f3', '{"id":12,"asset_id":"70","title":"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\"I \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c\\"!","alias":"vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij","introtext":"<p class=\\"MsoNormal\\">\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u00abI \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410\\u00bb.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u0441\\u0443\\u0434\\u044c\\u0438 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u043c \\u043c\\u0435\\u043d\\u044e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> 18 \\u0438\\u044e\\u043d\\u044f 2016 \\u0433\\u043e\\u0434\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041c\\u0435\\u0441\\u0442\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> \\u0433. \\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u0412\\u041f\\u041f \\u00ab\\u0417\\u044f\\u0431\\u0440\\u043e\\u0432\\u043a\\u0430\\u00bb.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b GPS:<\\/strong> n52.306589, e31.160831, +52\\u00b0 18'' 23.72\\", +31\\u00b0 9'' 38.99\\"<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-16 13:47:09","created_by":"147","created_by_alias":"","modified":"2016-05-16 13:52:30","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-16 13:49:59","publish_up":"2016-05-16 13:47:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `x6si2_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(57, 12, 1, '', '2016-05-16 13:52:51', 147, 4290, '46ada593be065d2be9a5f96dd3f57ff8d3217b8a', '{"id":12,"asset_id":"70","title":"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\"I \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c\\"!","alias":"vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij","introtext":"<p class=\\"MsoNormal\\">\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u00abI \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410\\u00bb.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u0441\\u0443\\u0434\\u044c\\u0438 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u043c \\u043c\\u0435\\u043d\\u044e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> 18 \\u0438\\u044e\\u043d\\u044f 2016 \\u0433\\u043e\\u0434\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041c\\u0435\\u0441\\u0442\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> \\u0433. \\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u0412\\u041f\\u041f \\u00ab\\u0417\\u044f\\u0431\\u0440\\u043e\\u0432\\u043a\\u0430\\u00bb.<\\/p>\\r\\n<p><strong>\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b GPS:<\\/strong> n52.306589, e31.160831, +52\\u00b0 18'' 23.72\\", +31\\u00b0 9'' 38.99\\"<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-16 13:47:09","created_by":"147","created_by_alias":"","modified":"2016-05-16 13:52:51","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-16 13:52:30","publish_up":"2016-05-16 13:47:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 12, 1, '', '2016-05-19 08:10:48', 147, 6230, '3c45927cef7afdd3ee77c5c0f63c84e1a9913809', '{"id":12,"asset_id":"70","title":"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\"I \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c\\"!","alias":"vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij","introtext":"<p class=\\"MsoNormal\\">\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u00abI \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410\\u00bb.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u0441\\u0443\\u0434\\u044c\\u0438 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u043c \\u043c\\u0435\\u043d\\u044e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> 18 \\u0438\\u044e\\u043d\\u044f 2016 \\u0433\\u043e\\u0434\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041c\\u0435\\u0441\\u0442\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> \\u0433. \\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u0412\\u041f\\u041f \\u00ab\\u0417\\u044f\\u0431\\u0440\\u043e\\u0432\\u043a\\u0430\\u00bb.<\\/p>\\r\\n<p><strong>\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b GPS:<\\/strong> n52.306589, e31.160831, +52\\u00b0 18'' 23.72\\", +31\\u00b0 9'' 38.99\\"<\\/p>\\r\\n<p><strong>\\u041e\\u0411\\u0420\\u0410\\u0429\\u0410\\u0415\\u041c \\u0412\\u041d\\u0418\\u041c\\u0410\\u041d\\u0418\\u0415!<\\/strong> \\u0414\\u043b\\u044f \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043f\\u043e\\u0434\\u0430\\u0432\\u0448\\u0438\\u0445 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0432 \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0430\\u0441\\u0441\\u044b, \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u044c\\u0431\\u0430 \\u0443\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0442\\u044c \\u043f\\u043e\\u043b\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0432 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0438\\u0445 \\u043e\\u0431\\u0449\\u0443\\u044e \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u0431\\u0430\\u0437\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410.<\\/p>\\r\\n<p>\\u041e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0431\\u0430\\u0437\\u043e\\u0439 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e <strong><a title=\\"\\u0411\\u0430\\u0437\\u0430 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 EMMA\\" href=\\"http:\\/\\/www.emmanet.com\\/value\\/?cmd=USA\\" target=\\"_blank\\">\\u0441\\u0441\\u044b\\u043b\\u043a\\u0435<\\/a>.<\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-16 13:47:09","created_by":"147","created_by_alias":"","modified":"2016-05-19 08:10:48","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-19 08:03:49","publish_up":"2016-05-16 13:47:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 12, 1, '', '2016-05-19 08:12:01', 147, 6230, 'a3aa6d421d9a17b1bf9c6bf1afc4418bd63d37fb', '{"id":12,"asset_id":"70","title":"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\"I \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0411 \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410-\\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c\\"!","alias":"vnimaniyu-uchastnikov-nachalas-registratsiya-na-pervyj-etap-sorevnovanij","introtext":"<p class=\\"MsoNormal\\">\\u0412\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u043b\\u0430\\u0441\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u044d\\u0442\\u0430\\u043f \\u00abI \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u043e\\u0433\\u043e \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0447\\u0435\\u043c\\u043f\\u0438\\u043e\\u043d\\u0430\\u0442\\u0430 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c \\u043f\\u043e \\u0430\\u0432\\u0442\\u043e\\u0437\\u0432\\u0443\\u043a\\u0443 \\u0438 \\u0442\\u044e\\u043d\\u0438\\u043d\\u0433\\u0443 \\u0415\\u041c\\u041c\\u0410\\u00bb.<\\/p>\\r\\n<p class=\\"MsoNormal\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u0441\\u0443\\u0434\\u044c\\u0438 \\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u0440\\u043e\\u0439\\u0442\\u0438 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044e \\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u043c \\u043c\\u0435\\u043d\\u044e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u0414\\u0430\\u0442\\u0430 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> 18 \\u0438\\u044e\\u043d\\u044f 2016 \\u0433\\u043e\\u0434\\u0430.<\\/p>\\r\\n<p class=\\"MsoNormal\\"><strong>\\u041c\\u0435\\u0441\\u0442\\u043e \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u044f:<\\/strong> \\u0433. \\u0413\\u043e\\u043c\\u0435\\u043b\\u044c, \\u0412\\u041f\\u041f \\u00ab\\u0417\\u044f\\u0431\\u0440\\u043e\\u0432\\u043a\\u0430\\u00bb.<\\/p>\\r\\n<p><strong>\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b GPS:<\\/strong> n52.306589, e31.160831, +52\\u00b0 18'' 23.72\\", +31\\u00b0 9'' 38.99\\"<\\/p>\\r\\n<p><strong>\\u041e\\u0411\\u0420\\u0410\\u0429\\u0410\\u0415\\u041c \\u0412\\u041d\\u0418\\u041c\\u0410\\u041d\\u0418\\u0415!<\\/strong> \\u0414\\u043b\\u044f \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u043e\\u0432, \\u043f\\u043e\\u0434\\u0430\\u044e\\u0449\\u0438\\u0445 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438 \\u0432 \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0430\\u0441\\u0441\\u044b, \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u044c\\u0431\\u0430 \\u0443\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0442\\u044c \\u043f\\u043e\\u043b\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0432 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0438\\u0445 \\u043e\\u0431\\u0449\\u0443\\u044e \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u0431\\u0430\\u0437\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043d\\u0430 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435\\u0439\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0415\\u041c\\u041c\\u0410.<\\/p>\\r\\n<p>\\u041e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0431\\u0430\\u0437\\u043e\\u0439 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e <strong><a title=\\"\\u0411\\u0430\\u0437\\u0430 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043c\\u043f\\u043e\\u043d\\u0435\\u043d\\u0442\\u043e\\u0432 EMMA\\" href=\\"http:\\/\\/www.emmanet.com\\/value\\/?cmd=USA\\" target=\\"_blank\\">\\u0441\\u0441\\u044b\\u043b\\u043a\\u0435<\\/a>.<\\/strong><\\/p>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-16 13:47:09","created_by":"147","created_by_alias":"","modified":"2016-05-19 08:12:01","modified_by":"147","checked_out":"147","checked_out_time":"2016-05-19 08:10:48","publish_up":"2016-05-16 13:47:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_updates`
--

CREATE TABLE IF NOT EXISTS `x6si2_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Дамп данных таблицы `x6si2_updates`
--

INSERT INTO `x6si2_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.5.1', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_update_sites`
--

CREATE TABLE IF NOT EXISTS `x6si2_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Дамп данных таблицы `x6si2_update_sites`
--

INSERT INTO `x6si2_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1463645023, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1463645023, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(5, 'Jino Update Site', 'extension', 'http://joomla-updates.jino.ru/mod_jino_spectrum_transfer.xml', 1, 0, ''),
(6, 'AllForJoomla.ru', 'extension', 'http://allforjoomla.ru/updates/mod_simpleform2/j3.xml', 1, 0, ''),
(7, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `x6si2_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `x6si2_update_sites_extensions`
--

INSERT INTO `x6si2_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10005),
(6, 10006),
(7, 10007);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_usergroups`
--

CREATE TABLE IF NOT EXISTS `x6si2_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_usergroups`
--

INSERT INTO `x6si2_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_users`
--

CREATE TABLE IF NOT EXISTS `x6si2_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_users`
--

INSERT INTO `x6si2_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(147, 'Super User', 'emma_admin', 'a.dubanov@bluesmobil.by', '$2y$10$ST6BIdPd6Ika5Or1wV9Zx..zPMUEoTUYOPjlb/wFBB8D2Vs6L1teu', 0, 1, '2016-03-24 13:48:20', '2016-05-19 08:03:38', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(148, 'Андрей', 'Andrey', 'blewherselfup@gmail.com', '$2y$10$0h2G.0kuOabue3jcOkBE2uu469LbAKiLcShti6j2etmURhnY6saT2', 0, 0, '2016-04-06 08:30:03', '2016-04-14 20:15:44', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_user_keys`
--

CREATE TABLE IF NOT EXISTS `x6si2_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_user_notes`
--

CREATE TABLE IF NOT EXISTS `x6si2_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_user_profiles`
--

CREATE TABLE IF NOT EXISTS `x6si2_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `x6si2_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_user_usergroup_map`
--

INSERT INTO `x6si2_user_usergroup_map` (`user_id`, `group_id`) VALUES
(147, 8),
(148, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `x6si2_viewlevels`
--

CREATE TABLE IF NOT EXISTS `x6si2_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `x6si2_viewlevels`
--

INSERT INTO `x6si2_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `k35f2_assets`
--
ALTER TABLE `k35f2_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `k35f2_associations`
--
ALTER TABLE `k35f2_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `k35f2_banners`
--
ALTER TABLE `k35f2_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `k35f2_banner_clients`
--
ALTER TABLE `k35f2_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Индексы таблицы `k35f2_banner_tracks`
--
ALTER TABLE `k35f2_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `k35f2_categories`
--
ALTER TABLE `k35f2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `k35f2_contact_details`
--
ALTER TABLE `k35f2_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `k35f2_content`
--
ALTER TABLE `k35f2_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `k35f2_contentitem_tag_map`
--
ALTER TABLE `k35f2_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `k35f2_content_frontpage`
--
ALTER TABLE `k35f2_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `k35f2_content_rating`
--
ALTER TABLE `k35f2_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `k35f2_content_types`
--
ALTER TABLE `k35f2_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Индексы таблицы `k35f2_djimageslider`
--
ALTER TABLE `k35f2_djimageslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Индексы таблицы `k35f2_extensions`
--
ALTER TABLE `k35f2_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `k35f2_finder_filters`
--
ALTER TABLE `k35f2_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `k35f2_finder_links`
--
ALTER TABLE `k35f2_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `k35f2_finder_links_terms0`
--
ALTER TABLE `k35f2_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms1`
--
ALTER TABLE `k35f2_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms2`
--
ALTER TABLE `k35f2_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms3`
--
ALTER TABLE `k35f2_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms4`
--
ALTER TABLE `k35f2_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms5`
--
ALTER TABLE `k35f2_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms6`
--
ALTER TABLE `k35f2_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms7`
--
ALTER TABLE `k35f2_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms8`
--
ALTER TABLE `k35f2_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_terms9`
--
ALTER TABLE `k35f2_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termsa`
--
ALTER TABLE `k35f2_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termsb`
--
ALTER TABLE `k35f2_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termsc`
--
ALTER TABLE `k35f2_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termsd`
--
ALTER TABLE `k35f2_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termse`
--
ALTER TABLE `k35f2_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_links_termsf`
--
ALTER TABLE `k35f2_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `k35f2_finder_taxonomy`
--
ALTER TABLE `k35f2_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `k35f2_finder_taxonomy_map`
--
ALTER TABLE `k35f2_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `k35f2_finder_terms`
--
ALTER TABLE `k35f2_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `k35f2_finder_terms_common`
--
ALTER TABLE `k35f2_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `k35f2_finder_tokens`
--
ALTER TABLE `k35f2_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `k35f2_finder_tokens_aggregate`
--
ALTER TABLE `k35f2_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `k35f2_finder_types`
--
ALTER TABLE `k35f2_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `k35f2_jsecurelog`
--
ALTER TABLE `k35f2_jsecurelog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `k35f2_languages`
--
ALTER TABLE `k35f2_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `k35f2_menu`
--
ALTER TABLE `k35f2_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `k35f2_menu_types`
--
ALTER TABLE `k35f2_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `k35f2_messages`
--
ALTER TABLE `k35f2_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `k35f2_messages_cfg`
--
ALTER TABLE `k35f2_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `k35f2_modules`
--
ALTER TABLE `k35f2_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `k35f2_modules_menu`
--
ALTER TABLE `k35f2_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `k35f2_newsfeeds`
--
ALTER TABLE `k35f2_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `k35f2_overrider`
--
ALTER TABLE `k35f2_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `k35f2_postinstall_messages`
--
ALTER TABLE `k35f2_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `k35f2_redirect_links`
--
ALTER TABLE `k35f2_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `k35f2_schemas`
--
ALTER TABLE `k35f2_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `k35f2_session`
--
ALTER TABLE `k35f2_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `k35f2_tags`
--
ALTER TABLE `k35f2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `k35f2_template_styles`
--
ALTER TABLE `k35f2_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `k35f2_ucm_base`
--
ALTER TABLE `k35f2_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `k35f2_ucm_content`
--
ALTER TABLE `k35f2_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `k35f2_ucm_history`
--
ALTER TABLE `k35f2_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `k35f2_updates`
--
ALTER TABLE `k35f2_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `k35f2_update_sites`
--
ALTER TABLE `k35f2_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `k35f2_update_sites_extensions`
--
ALTER TABLE `k35f2_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `k35f2_usergroups`
--
ALTER TABLE `k35f2_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `k35f2_users`
--
ALTER TABLE `k35f2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `k35f2_user_keys`
--
ALTER TABLE `k35f2_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `k35f2_user_notes`
--
ALTER TABLE `k35f2_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `k35f2_user_profiles`
--
ALTER TABLE `k35f2_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `k35f2_user_usergroup_map`
--
ALTER TABLE `k35f2_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `k35f2_viewlevels`
--
ALTER TABLE `k35f2_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Индексы таблицы `k35f2_weblinks`
--
ALTER TABLE `k35f2_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `k35f2_wf_profiles`
--
ALTER TABLE `k35f2_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `k35f2_xmap_items`
--
ALTER TABLE `k35f2_xmap_items`
  ADD PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  ADD KEY `uid` (`uid`,`itemid`),
  ADD KEY `view` (`view`);

--
-- Индексы таблицы `k35f2_xmap_sitemap`
--
ALTER TABLE `k35f2_xmap_sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `x6si2_assets`
--
ALTER TABLE `x6si2_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `x6si2_associations`
--
ALTER TABLE `x6si2_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `x6si2_banners`
--
ALTER TABLE `x6si2_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `x6si2_banner_clients`
--
ALTER TABLE `x6si2_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Индексы таблицы `x6si2_banner_tracks`
--
ALTER TABLE `x6si2_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `x6si2_categories`
--
ALTER TABLE `x6si2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `x6si2_contact_details`
--
ALTER TABLE `x6si2_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `x6si2_content`
--
ALTER TABLE `x6si2_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `x6si2_contentitem_tag_map`
--
ALTER TABLE `x6si2_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_tag` (`tag_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `x6si2_content_frontpage`
--
ALTER TABLE `x6si2_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `x6si2_content_rating`
--
ALTER TABLE `x6si2_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `x6si2_content_types`
--
ALTER TABLE `x6si2_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`);

--
-- Индексы таблицы `x6si2_extensions`
--
ALTER TABLE `x6si2_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `x6si2_finder_filters`
--
ALTER TABLE `x6si2_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `x6si2_finder_links`
--
ALTER TABLE `x6si2_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `x6si2_finder_links_terms0`
--
ALTER TABLE `x6si2_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms1`
--
ALTER TABLE `x6si2_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms2`
--
ALTER TABLE `x6si2_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms3`
--
ALTER TABLE `x6si2_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms4`
--
ALTER TABLE `x6si2_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms5`
--
ALTER TABLE `x6si2_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms6`
--
ALTER TABLE `x6si2_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms7`
--
ALTER TABLE `x6si2_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms8`
--
ALTER TABLE `x6si2_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_terms9`
--
ALTER TABLE `x6si2_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termsa`
--
ALTER TABLE `x6si2_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termsb`
--
ALTER TABLE `x6si2_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termsc`
--
ALTER TABLE `x6si2_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termsd`
--
ALTER TABLE `x6si2_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termse`
--
ALTER TABLE `x6si2_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_links_termsf`
--
ALTER TABLE `x6si2_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `x6si2_finder_taxonomy`
--
ALTER TABLE `x6si2_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `x6si2_finder_taxonomy_map`
--
ALTER TABLE `x6si2_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `x6si2_finder_terms`
--
ALTER TABLE `x6si2_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `x6si2_finder_terms_common`
--
ALTER TABLE `x6si2_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `x6si2_finder_tokens`
--
ALTER TABLE `x6si2_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `x6si2_finder_tokens_aggregate`
--
ALTER TABLE `x6si2_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `x6si2_finder_types`
--
ALTER TABLE `x6si2_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `x6si2_foxcontact_enquiries`
--
ALTER TABLE `x6si2_foxcontact_enquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`date`);

--
-- Индексы таблицы `x6si2_foxcontact_settings`
--
ALTER TABLE `x6si2_foxcontact_settings`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `x6si2_languages`
--
ALTER TABLE `x6si2_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `x6si2_menu`
--
ALTER TABLE `x6si2_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(255)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `x6si2_menu_types`
--
ALTER TABLE `x6si2_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `x6si2_messages`
--
ALTER TABLE `x6si2_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `x6si2_messages_cfg`
--
ALTER TABLE `x6si2_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `x6si2_modules`
--
ALTER TABLE `x6si2_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `x6si2_modules_menu`
--
ALTER TABLE `x6si2_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `x6si2_newsfeeds`
--
ALTER TABLE `x6si2_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `x6si2_overrider`
--
ALTER TABLE `x6si2_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `x6si2_postinstall_messages`
--
ALTER TABLE `x6si2_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `x6si2_redirect_links`
--
ALTER TABLE `x6si2_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `x6si2_schemas`
--
ALTER TABLE `x6si2_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `x6si2_session`
--
ALTER TABLE `x6si2_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `x6si2_tags`
--
ALTER TABLE `x6si2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `x6si2_template_styles`
--
ALTER TABLE `x6si2_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `x6si2_ucm_base`
--
ALTER TABLE `x6si2_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `x6si2_ucm_content`
--
ALTER TABLE `x6si2_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `x6si2_ucm_history`
--
ALTER TABLE `x6si2_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `x6si2_updates`
--
ALTER TABLE `x6si2_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `x6si2_update_sites`
--
ALTER TABLE `x6si2_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `x6si2_update_sites_extensions`
--
ALTER TABLE `x6si2_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `x6si2_usergroups`
--
ALTER TABLE `x6si2_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `x6si2_users`
--
ALTER TABLE `x6si2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `x6si2_user_keys`
--
ALTER TABLE `x6si2_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `x6si2_user_notes`
--
ALTER TABLE `x6si2_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `x6si2_user_profiles`
--
ALTER TABLE `x6si2_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `x6si2_user_usergroup_map`
--
ALTER TABLE `x6si2_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `x6si2_viewlevels`
--
ALTER TABLE `x6si2_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `k35f2_assets`
--
ALTER TABLE `k35f2_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `k35f2_banners`
--
ALTER TABLE `k35f2_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_banner_clients`
--
ALTER TABLE `k35f2_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_categories`
--
ALTER TABLE `k35f2_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `k35f2_contact_details`
--
ALTER TABLE `k35f2_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_content`
--
ALTER TABLE `k35f2_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `k35f2_content_types`
--
ALTER TABLE `k35f2_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `k35f2_djimageslider`
--
ALTER TABLE `k35f2_djimageslider`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_extensions`
--
ALTER TABLE `k35f2_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10019;
--
-- AUTO_INCREMENT для таблицы `k35f2_finder_filters`
--
ALTER TABLE `k35f2_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_finder_links`
--
ALTER TABLE `k35f2_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_finder_taxonomy`
--
ALTER TABLE `k35f2_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `k35f2_finder_terms`
--
ALTER TABLE `k35f2_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_finder_types`
--
ALTER TABLE `k35f2_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_jsecurelog`
--
ALTER TABLE `k35f2_jsecurelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_languages`
--
ALTER TABLE `k35f2_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `k35f2_menu`
--
ALTER TABLE `k35f2_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `k35f2_menu_types`
--
ALTER TABLE `k35f2_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `k35f2_messages`
--
ALTER TABLE `k35f2_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_modules`
--
ALTER TABLE `k35f2_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `k35f2_newsfeeds`
--
ALTER TABLE `k35f2_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_overrider`
--
ALTER TABLE `k35f2_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `k35f2_postinstall_messages`
--
ALTER TABLE `k35f2_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `k35f2_redirect_links`
--
ALTER TABLE `k35f2_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_tags`
--
ALTER TABLE `k35f2_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `k35f2_template_styles`
--
ALTER TABLE `k35f2_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `k35f2_ucm_content`
--
ALTER TABLE `k35f2_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_ucm_history`
--
ALTER TABLE `k35f2_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `k35f2_updates`
--
ALTER TABLE `k35f2_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `k35f2_update_sites`
--
ALTER TABLE `k35f2_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `k35f2_usergroups`
--
ALTER TABLE `k35f2_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `k35f2_users`
--
ALTER TABLE `k35f2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=628;
--
-- AUTO_INCREMENT для таблицы `k35f2_user_keys`
--
ALTER TABLE `k35f2_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_user_notes`
--
ALTER TABLE `k35f2_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_viewlevels`
--
ALTER TABLE `k35f2_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `k35f2_weblinks`
--
ALTER TABLE `k35f2_weblinks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `k35f2_wf_profiles`
--
ALTER TABLE `k35f2_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `k35f2_xmap_sitemap`
--
ALTER TABLE `k35f2_xmap_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_assets`
--
ALTER TABLE `x6si2_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `x6si2_banners`
--
ALTER TABLE `x6si2_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_banner_clients`
--
ALTER TABLE `x6si2_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_categories`
--
ALTER TABLE `x6si2_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `x6si2_contact_details`
--
ALTER TABLE `x6si2_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `x6si2_content`
--
ALTER TABLE `x6si2_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `x6si2_content_types`
--
ALTER TABLE `x6si2_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `x6si2_extensions`
--
ALTER TABLE `x6si2_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10011;
--
-- AUTO_INCREMENT для таблицы `x6si2_finder_filters`
--
ALTER TABLE `x6si2_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_finder_links`
--
ALTER TABLE `x6si2_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_finder_taxonomy`
--
ALTER TABLE `x6si2_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_finder_terms`
--
ALTER TABLE `x6si2_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_finder_types`
--
ALTER TABLE `x6si2_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_foxcontact_enquiries`
--
ALTER TABLE `x6si2_foxcontact_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `x6si2_languages`
--
ALTER TABLE `x6si2_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_menu`
--
ALTER TABLE `x6si2_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблицы `x6si2_menu_types`
--
ALTER TABLE `x6si2_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_messages`
--
ALTER TABLE `x6si2_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_modules`
--
ALTER TABLE `x6si2_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT для таблицы `x6si2_newsfeeds`
--
ALTER TABLE `x6si2_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_overrider`
--
ALTER TABLE `x6si2_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `x6si2_postinstall_messages`
--
ALTER TABLE `x6si2_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `x6si2_redirect_links`
--
ALTER TABLE `x6si2_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_tags`
--
ALTER TABLE `x6si2_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_template_styles`
--
ALTER TABLE `x6si2_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `x6si2_ucm_content`
--
ALTER TABLE `x6si2_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_ucm_history`
--
ALTER TABLE `x6si2_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT для таблицы `x6si2_updates`
--
ALTER TABLE `x6si2_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `x6si2_update_sites`
--
ALTER TABLE `x6si2_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `x6si2_usergroups`
--
ALTER TABLE `x6si2_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `x6si2_users`
--
ALTER TABLE `x6si2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT для таблицы `x6si2_user_keys`
--
ALTER TABLE `x6si2_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_user_notes`
--
ALTER TABLE `x6si2_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `x6si2_viewlevels`
--
ALTER TABLE `x6si2_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
