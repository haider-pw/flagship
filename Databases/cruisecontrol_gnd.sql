-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 03:20 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cruisecontrol_gnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `help` text,
  `body` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `help`, `body`) VALUES
(1, 'Registration Email', 'Please verify your email', 'This template is used to send Registration Verification Email, when Configuration->Registration Verification is set to YES', '&lt;div align=&quot;center&quot;&gt;\n&lt;table cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; width=&quot;600&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Welcome [NAME]! Thanks for registering.&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;Hello,&lt;br /&gt;\n            &lt;br /&gt;\n            You&#039;re now a member of [SITE_NAME].&lt;br /&gt;\n            &lt;br /&gt;\n            Here are your login details. Please keep them in a safe place:&lt;br /&gt;\n            &lt;br /&gt;\n            Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            Password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;         &lt;hr /&gt;\n            The administrator of this site has requested all new accounts&lt;br /&gt;\n            to be activated by the users who created them thus your account&lt;br /&gt;\n            is currently inactive. To activate your account,&lt;br /&gt;\n            please visit the link below and enter the following:&lt;hr /&gt;\n            Token: &lt;strong&gt;[TOKEN]&lt;/strong&gt;&lt;br /&gt;\n            Email: &lt;strong&gt;[EMAIL]&lt;/strong&gt;         &lt;hr /&gt;\n            &lt;a href=&quot;[LINK]&quot;&gt;Click here to activate tour account&lt;/a&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(2, 'Forgot Password Email', 'Password Reset', 'This template is used for retrieving lost user password', '&lt;div align=&quot;center&quot;&gt;\n&lt;table width=&quot;600&quot; cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;New password reset from [SITE_NAME]!&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;Hello, &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            &lt;br /&gt;\n            It seems that you or someone requested a new password for you.&lt;br /&gt;\n            We have generated a new password, as requested:&lt;br /&gt;\n            &lt;br /&gt;\n            Your new password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;&lt;br /&gt;\n            &lt;br /&gt;\n            To use the new password you need to activate it. To do this click the link provided below and login with your new password.&lt;br /&gt;\n            &lt;a href=&quot;[LINK]&quot;&gt;[LINK]&lt;/a&gt;&lt;br /&gt;\n            &lt;br /&gt;\n            You can change your password after you sign in.&lt;hr /&gt;\n            Password requested from IP: [IP]&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(3, 'Welcome Mail From Admin', 'You have been registered', 'This template is used to send welcome email, when user is added by administrator', '&lt;div align=&quot;center&quot;&gt;\n&lt;table cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; width=&quot;600&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Welcome [NAME]! You have been Registered.&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;Hello,&lt;br /&gt;\n            &lt;br /&gt;\n            You&#039;re now a member of [SITE_NAME].&lt;br /&gt;\n            &lt;br /&gt;\n            Here are your login details. Please keep them in a safe place:&lt;br /&gt;\n            &lt;br /&gt;\n            Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            Password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(4, 'Default Newsletter', 'Newsletter', 'This is a default newsletter template', '&lt;div align=&quot;center&quot;&gt;\n&lt;table width=&quot;600&quot; cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Hello [NAME]!&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;You are receiving this email as a part of your newsletter subscription.         &lt;hr /&gt;\n            Here goes your newsletter content         &lt;hr /&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;         &lt;hr /&gt;\n            &lt;span style=&quot;font-size: 11px;&quot;&gt;&lt;em&gt;To stop receiving future newsletters please login into your account         and uncheck newsletter subscription box.&lt;/em&gt;&lt;/span&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(7, 'Welcome Email', 'Welcome', 'This template is used to welcome newly registered user when Configuration-&gt;Registration Verification and Configuration-&gt;Auto Registration are both set to YES', '&lt;div align=&quot;center&quot;&gt;\n&lt;table width=&quot;600&quot; cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Welcome [NAME]! Thanks for registering.&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;Hello,&lt;br /&gt;\n            &lt;br /&gt;\n            You&#039;re now a member of [SITE_NAME].&lt;br /&gt;\n            &lt;br /&gt;\n            Here are your login details. Please keep them in a safe place:&lt;br /&gt;\n            &lt;br /&gt;\n            Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            Password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(10, 'Contact Request', 'Contact Inquiry', 'This template is used to send default Contact Request Form', '&lt;div align=&quot;center&quot;&gt;\n&lt;table width=&quot;600&quot; cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Hello Admin&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;You have a new contact request:         &lt;hr /&gt;\n            [MESSAGE]         &lt;hr /&gt;\n            From: &lt;strong&gt;[SENDER] - [NAME]&lt;/strong&gt;&lt;br /&gt;\n            Subject: &lt;strong&gt;[MAILSUBJECT]&lt;/strong&gt;&lt;br /&gt;\n            Senders IP: &lt;strong&gt;[IP]&lt;/strong&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(12, 'Single Email', 'Single User Email', 'This template is used to email single user', '&lt;div align=&quot;center&quot;&gt;\n  &lt;table width=&quot;600&quot; cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n      &lt;tr&gt;\n        &lt;th style=&quot;background-color:#ccc&quot;&gt;Hello [NAME]&lt;/th&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td valign=&quot;top&quot; style=&quot;text-align:left&quot;&gt;Your message goes here...&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n        &lt;td style=&quot;text-align:left&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n          [SITE_NAME] Team&lt;br /&gt;\n          &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n      &lt;/tr&gt;\n    &lt;/tbody&gt;\n  &lt;/table&gt;\n&lt;/div&gt;'),
(13, 'Notify Admin', 'New User Registration', 'This template is used to notify admin of new registration when Configuration->Registration Notification is set to YES', '&lt;div align=&quot;center&quot;&gt;\n&lt;table cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; width=&quot;600&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Hello Admin&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;You have a new user registration. You can login into your admin panel to view details:&lt;hr /&gt;\n            Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            Name: &lt;strong&gt;[NAME]&lt;/strong&gt;&lt;br /&gt;\n            IP: &lt;strong&gt;[IP]&lt;/strong&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(14, 'Registration Pending', 'Registration Verification Pending', 'This template is used to send Registration Verification Email, when Configuration->Auto Registration is set to NO', '&lt;div align=&quot;center&quot;&gt;\n&lt;table cellspacing=&quot;5&quot; cellpadding=&quot;5&quot; border=&quot;0&quot; width=&quot;600&quot; style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Welcome [NAME]! Thanks for registering.&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td valign=&quot;top&quot; style=&quot;text-align: left;&quot;&gt;Hello,&lt;br /&gt;\n            &lt;br /&gt;\n            You&#039;re now a member of [SITE_NAME].&lt;br /&gt;\n            &lt;br /&gt;\n            Here are your login details. Please keep them in a safe place:&lt;br /&gt;\n            &lt;br /&gt;\n            Username: &lt;strong&gt;[USERNAME]&lt;/strong&gt;&lt;br /&gt;\n            Password: &lt;strong&gt;[PASSWORD]&lt;/strong&gt;         &lt;hr /&gt;\n            The administrator of this site has requested all new accounts&lt;br /&gt;\n            to be activated by the users who created them thus your account&lt;br /&gt;\n            is currently pending verification process.&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br /&gt;\n            [SITE_NAME] Team&lt;br /&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;'),
(16, 'Account Activation', 'Your account have been activated', 'This template is used to notify user when manual account activation is completed', '&lt;div align=&quot;center&quot;&gt;\n&lt;table style=&quot;background: none repeat scroll 0% 0% rgb(244, 244, 244); border: 1px solid rgb(102, 102, 102);&quot; border=&quot;0&quot; cellpadding=&quot;5&quot; cellspacing=&quot;5&quot; width=&quot;600&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;th style=&quot;background-color: rgb(204, 204, 204);&quot;&gt;Hello, [NAME]! &lt;br&gt;&lt;/th&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n          &lt;td style=&quot;text-align: left;&quot; valign=&quot;top&quot;&gt;Hello,&lt;br&gt;\n            &lt;br&gt;\n            You&#039;re now a member of [SITE_NAME].&lt;br&gt;\n            &lt;br&gt;\n            Your account is now fully activated\n            , and you may login at \n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;\n            &lt;hr&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td style=&quot;text-align: left;&quot;&gt;&lt;em&gt;Thanks,&lt;br&gt;\n            [SITE_NAME] Team&lt;br&gt;\n            &lt;a href=&quot;[URL]&quot;&gt;[URL]&lt;/a&gt;&lt;/em&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;/div&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `author`, `created`, `active`) VALUES
(1, 'Notice!', '&lt;p&gt;Please report any system bugs immediately using the bug report section &amp;gt; &lt;b&gt;&lt;a href=&quot;bug-report.php&quot;&gt;Report a bug&lt;/a&gt;&lt;/b&gt;.&lt;/p&gt;&lt;p&gt;Your valued assistance with ensuring this platform is bug free is greatly appreciated.&lt;/p&gt;&lt;p align=&quot;right&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p align=&quot;left&quot;&gt;&lt;sub&gt;&amp;nbsp;Administrator:&lt;/sub&gt;&lt;i&gt;&lt;sub&gt; Alvin Herbert&lt;/sub&gt;&lt;/i&gt;&lt;br&gt;&lt;/p&gt;', 'Nicole Moody', '2015-07-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `site_email` varchar(40) DEFAULT NULL,
  `site_url` varchar(200) DEFAULT NULL,
  `reg_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `user_limit` tinyint(1) NOT NULL DEFAULT '0',
  `reg_verify` tinyint(1) NOT NULL DEFAULT '0',
  `notify_admin` tinyint(1) NOT NULL DEFAULT '0',
  `auto_verify` tinyint(1) NOT NULL DEFAULT '0',
  `user_perpage` varchar(4) NOT NULL DEFAULT '10',
  `thumb_w` varchar(4) NOT NULL,
  `thumb_h` varchar(4) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `backup` varchar(60) DEFAULT NULL,
  `mailer` enum('PHP','SMTP') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` varchar(6) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_email`, `site_url`, `reg_allowed`, `user_limit`, `reg_verify`, `notify_admin`, `auto_verify`, `user_perpage`, `thumb_w`, `thumb_h`, `logo`, `backup`, `mailer`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `is_ssl`, `version`) VALUES
(1, 'Flagship', 'nicole.moody@sunlinc.net', 'http://10.114.33.234/admin-panel-gnd', 0, 0, 0, 0, 0, '10', '72', '72', 'logo.png', '27-Sep-2013_17-35-49.sql', 'PHP', 'mail.stjamesgroup.com', 'alvin.herbert@stjamesgroup.com', '@lv1Nh3?b', '465', 1, '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `cookie_id` varchar(64) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL DEFAULT '0',
  `userlevel` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `avatar` varchar(60) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT NULL,
  `notes` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `active` enum('y','n','b','t') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `cookie_id`, `token`, `userlevel`, `email`, `fname`, `lname`, `country`, `avatar`, `ip`, `created`, `lastlogin`, `lastip`, `notes`, `newsletter`, `active`) VALUES
(6, 'gentoo', '365d0fc7d6206ff26e2f2c2a78c91a94', '0', '0', 6, 'flagship.gentoo@sunlinc.net', 'Gentoo', 'System', NULL, 'AVT_7E53CA-B47FAF-BE43B0-9C8525-544E2B-62741F.jpg', '', '2015-05-29 10:34:18', '2015-09-08 16:15:17', '10.114.35.100', 'Flagship system user - Gentoo System', 1, 'y'),
(7, 'korey.boyce@stjamesgroup.com', 'f456fa844e380171762e65f9f408c619', '0', '0', 6, 'korey.boyce@stjamesgroup.com', 'Korey', 'Boyce', NULL, '', '', '2015-06-02 14:29:58', '2015-06-02 14:43:59', '209.59.101.92', '', 1, 'y'),
(8, 'marielle.alexander@stjamesgroup.com', '94d2a4c84145218188e4db77360a5405', '0', '0', 6, 'marielle.alexander@stjamesgroup.com', 'Marielle', 'Alexander', NULL, '', '', '2015-06-02 14:31:13', '2015-06-02 14:44:11', '204.16.8.182', '', 1, 'y'),
(9, 'nicole.moody@sunlinc.net', '1527202bb121bd5c9efee5a27ffefc99', '0', '0', 7, 'nicole.moody@sunlinc.net', 'Nicole', 'Moody', NULL, '', '', '2015-06-02 14:32:42', '2015-06-02 14:44:15', '76.184.177.122', '', 1, 'y'),
(10, 'cinthya.cabrera@sunlinc.net', '8444dadf469214227ea3a69b0e5d3c2a', '0', '0', 6, 'cinthya.cabrera@sunlinc.net', 'Cinthya', 'Cabrera', NULL, '', '', '2015-06-02 14:33:29', '0000-00-00 00:00:00', NULL, '', 1, 'y'),
(11, 'hsp@sunlinc.net', '73a1018984082fb59f534b4bf8bc1c6c', '0', '0', 6, 'hsp@sunlinc.net', 'Helen Schur', 'Parris', NULL, '', '', '2015-06-03 14:22:30', '2015-06-22 10:51:53', '10.114.35.150', '', 1, 'y'),
(12, 'ashley.scantlebury@stjamesgroup.com', 'a93d8eb81e2ada7b73bb91ce4d3bf5e4', '0', '0', 6, 'ashley.scantlebury@stjamesgroup.com', 'Ashley', 'Scantlebury', NULL, 'AVT_76AD53-34046B-1A9C94-A6F63D-3D169C-6105C2.jpg', '', '2015-06-16 11:53:12', '2015-07-14 11:07:38', '10.114.35.178', '', 1, 'y'),
(13, 'chris@stjamesgroup.com', 'bf598b34172999154c3f38942a0a6e4d', '0', '0', 6, 'chris@stjamesgroup.com', 'Chris', 'Gloumeau', NULL, '', '', '2015-06-22 10:58:59', '2015-06-22 10:59:20', '10.114.35.150', '', 1, 'y'),
(14, 'shavanare.oliver@stjamesgroup.com', 'e7b980a7f13fd5b5b8764a692f2263e5', '0', '0', 6, 'shavanare.oliver@stjamesgroup.com', 'Shavanaré', 'Oliver', NULL, 'AVT_EAA4D3-B59FB3-551E06-E71AB9-354F10-5A4194.jpg', '', '2015-10-20 11:42:40', '2015-10-21 16:37:11', '10.114.35.100', '', 0, 'y'),
(15, 'CreativeTech', 'd5e54c9bc5da56937c888f80ef74fecc', '0', '0', 9, 'creative.joomdev@gmail.com', 'Creative', 'Tech', NULL, '', '', '2016-06-23 13:50:07', '2016-07-18 07:29:37', '25.114.16.111', '', 1, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `level_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`level_id`, `role_name`) VALUES
(1, 'Registered User'),
(2, 'Reservations'),
(3, 'Fast Track'),
(4, 'Accounts'),
(5, 'Supervisor'),
(6, 'Manager'),
(7, 'Administrator'),
(9, 'Super Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;