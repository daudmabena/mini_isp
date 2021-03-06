CREATE TABLE `phpbb_auction_account` (
  `pk_auction_account_id` mediumint(8) NOT NULL auto_increment,
  `fk_auction_account_creditor_id` mediumint(8) NOT NULL default '0',
  `fk_auction_account_debitor_id` mediumint(8) NOT NULL default '0',
  `auction_account_auction_amount` decimal(15,2) NOT NULL default '0.00',
  `auction_account_amount_date` int(11) NOT NULL default '0',
  `auction_account_notified` mediumint(8) NOT NULL default '0',
  `auction_account_amount_paid` decimal(15,2) NOT NULL default '0.00',
  `auction_account_amount_paid_by` mediumint(8) NOT NULL default '0',
  `fk_auction_offer_id` mediumint(8) NOT NULL default '0',
  `auction_account_action` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`pk_auction_account_id`)
) TYPE=MyISAM AUTO_INCREMENT=32 ;


CREATE TABLE `phpbb_auction_bid` (
  `PK_auction_bid_id` mediumint(8) unsigned NOT NULL auto_increment,
  `FK_auction_bid_offer_id` mediumint(8) unsigned NOT NULL default '0',
  `FK_auction_bid_user_id` mediumint(8) unsigned NOT NULL default '0',
  `auction_bid_time` int(11) NOT NULL default '0',
  `auction_bid_price` decimal(15,2) NOT NULL default '0.00',
  PRIMARY KEY  (`PK_auction_bid_id`)
) TYPE=MyISAM AUTO_INCREMENT=89 ;

CREATE TABLE `phpbb_auction_bid_increase` (
  `PK_bid_increase` mediumint(8) unsigned NOT NULL auto_increment,
  `bid_increase` decimal(15,2) NOT NULL default '0.00',
  PRIMARY KEY  (`PK_bid_increase`)
) TYPE=MyISAM AUTO_INCREMENT=60 ;

INSERT INTO `phpbb_auction_bid_increase` VALUES (49, '0.10');
INSERT INTO `phpbb_auction_bid_increase` VALUES (50, '0.20');
INSERT INTO `phpbb_auction_bid_increase` VALUES (51, '0.50');
INSERT INTO `phpbb_auction_bid_increase` VALUES (52, '1.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (53, '2.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (54, '5.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (55, '10.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (56, '20.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (57, '30.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (58, '50.00');
INSERT INTO `phpbb_auction_bid_increase` VALUES (59, '100.00');

CREATE TABLE `phpbb_auction_category` (
  `PK_auction_category_id` mediumint(8) unsigned NOT NULL auto_increment,
  `auction_category_title` varchar(100) NOT NULL default '',
  `auction_category_icon` varchar(255) default NULL,
  `auction_category_order` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`PK_auction_category_id`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

INSERT INTO `phpbb_auction_category` VALUES (1, 'Test-Category', '', 10);

CREATE TABLE `phpbb_auction_config` (
  `config_name` varchar(255) NOT NULL default '',
  `config_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`config_name`)
) TYPE=MyISAM;

INSERT INTO `phpbb_auction_config` VALUES ('currency', 'EUR');
INSERT INTO `phpbb_auction_config` VALUES ('auction_config_close_to_end_number', '7');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_close_to_end', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_ticker', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_auction_rooms', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_statistics', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_myauctions', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_calendar', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_search', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_amount_max', '10000');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_amount_min', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_activate_paypal', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_bold', '2');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_on_top', '5');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_special', '10');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_allow_bold', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_allow_on_top', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_allow_special', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_basic', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_config_last_bids_number', '5');
INSERT INTO `phpbb_auction_config` VALUES ('auction_end_notify_email', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_end_notify_pm', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_last_bids', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_paypal_email', '-');
INSERT INTO `phpbb_auction_config` VALUES ('auction_news_forum_id', '4');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_news', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_specials', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_priceinformation', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_allow_self_bids', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_allow_coupons', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_moneybooker_email', '-');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_activate_moneybooker', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_disable', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_disable', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_allow_shipping', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_version', '1.3m');
INSERT INTO `phpbb_auction_config` VALUES ('auction_allow_direct_sell', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_direct_sell', '10');
INSERT INTO `phpbb_auction_config` VALUES ('auction_show_timeline', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_allow_comment', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_allow_change_comment', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_email_notify', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_pm_notify', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_drop_down_auction_rooms', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_specials_limit', '2');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_activate_user_points', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_pseudo_cron', '0');
INSERT INTO `phpbb_auction_config` VALUES ('auction_pseudo_cron_frequence', 'm');
INSERT INTO `phpbb_auction_config` VALUES ('auction_pseudo_cron_last', '1103460607');
INSERT INTO `phpbb_auction_config` VALUES ('auction_room_pagination', '2');
INSERT INTO `phpbb_auction_config` VALUES ('auction_block_display_newest_offers', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_config_newest_offers_number', '10');
INSERT INTO `phpbb_auction_config` VALUES ('auction_paymentsystem_activate_debit', '1');
INSERT INTO `phpbb_auction_config` VALUES ('auction_offer_cost_final_percent', '5');

CREATE TABLE `phpbb_auction_coupon` (
  `PK_auction_coupon_id` varchar(200) NOT NULL default '0',
  `FK_auction_coupon_config_id` mediumint(8) NOT NULL default '0',
  `FK_auction_coupon_created_user_id` mediumint(8) NOT NULL default '0',
  `auction_coupon_date_created` int(11) NOT NULL default '0',
  `auction_coupon_date_used` int(11) NOT NULL default '0',
  `FK_auction_coupon_used_user_id` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`PK_auction_coupon_id`)
) TYPE=MyISAM;


CREATE TABLE `phpbb_auction_coupon_config` (
  `PK_auction_coupon_config_id` mediumint(8) NOT NULL auto_increment,
  `auction_coupon_config_name` varchar(25) NOT NULL default '',
  `auction_coupon_config_amount` decimal(3,2) NOT NULL default '0.00',
  PRIMARY KEY  (`PK_auction_coupon_config_id`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

INSERT INTO `phpbb_auction_coupon_config` VALUES (1, '100% off', '1.00');
INSERT INTO `phpbb_auction_coupon_config` VALUES (2, '50% off', '0.50');

CREATE TABLE `phpbb_auction_image` (
  `pic_id` int(11) unsigned NOT NULL auto_increment,
  `pic_filename` varchar(255) NOT NULL default '',
  `pic_auction_id` int(11) NOT NULL default '0',
  `pic_user_id` mediumint(8) default NULL,
  `pic_time` int(11) NOT NULL default '0',
  `pic_cat` mediumint(8) NOT NULL default '0',
  `pic_room` mediumint(8) NOT NULL default '0',
  `pic_lock` tinyint(1) NOT NULL default '0',
  `pic_approval` tinyint(1) NOT NULL default '0',
  `pic_main` tinyint(1) NOT NULL default '1',
  `pic_width` mediumint(5) default NULL,
  `pic_height` mediumint(5) default NULL,
  `pic_main_width` mediumint(5) default NULL,
  `pic_main_height` mediumint(5) default NULL,
  `pic_thumb_width` mediumint(5) default NULL,
  `pic_thumb_height` mediumint(5) default NULL,
  `pic_comment` text,
  `pic_user_ip` varchar(8) NOT NULL default '',
  `pic_crop_id` tinyint(1) default NULL,
  `pic_gd_type` tinyint(1) NOT NULL default '0',
  `crop_id` tinyint(1) default NULL,
  PRIMARY KEY  (`pic_id`),
  KEY `pic_auction_id` (`pic_auction_id`),
  KEY `pic_cat` (`pic_cat`),
  KEY `pic_room` (`pic_room`),
  KEY `pic_time` (`pic_time`)
) TYPE=MyISAM AUTO_INCREMENT=14 ;


CREATE TABLE `phpbb_auction_image_config` (
  `config_name` varchar(255) NOT NULL default '0',
  `config_value` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`config_name`)
) TYPE=MyISAM;

INSERT INTO `phpbb_auction_image_config` VALUES ('gd_version', '3');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_pictures_allow', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('allow_url_upload', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_picture_jpeg_allow', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_picture_png_allow', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('png_convert', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_picture_gif_allow', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('gif_convert', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_picture_size_allow', '100000');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_server_picture_size', '1024000');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_thumbnail_cache', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_pic_max_width', '800');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_pic_max_height', '600');
INSERT INTO `phpbb_auction_image_config` VALUES ('offer_auction_pic_quality', '91');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_main_size', '250');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_main_quality', '80');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_border', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_border_color', 'ABABAB');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_border_width', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_sharpen', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_bw', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_js_bw', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_mini_size', '40');
INSERT INTO `phpbb_auction_image_config` VALUES ('mini_pic_border', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('mini_pic_border_color', '000000');
INSERT INTO `phpbb_auction_image_config` VALUES ('mini_pic_border_width', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('mini_pic_sharpen', '2');
INSERT INTO `phpbb_auction_image_config` VALUES ('mini_pic_bw', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('allow_thumb_gallery', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('amount_of_thumbs', '6');
INSERT INTO `phpbb_auction_image_config` VALUES ('amount_of_thumb_per_line', '3');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_type', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_thumb_size', '80');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_thumb_quality', '80');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_border', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_border_color', '000000');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_border_width', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_sharpen', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_bw', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('thumb_pic_js_bw', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_hotlink_prevent', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_hotlink_allowed', '');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_pic_approval_admin', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_pic_approval_mod', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_use_water', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_for_all_water', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_pic_for_guest_water', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_water_img_qual', '88');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_watermarkpos', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('main_water_img_trans', '80');
INSERT INTO `phpbb_auction_image_config` VALUES ('big_pic_use_water', '1');
INSERT INTO `phpbb_auction_image_config` VALUES ('big_pic_for_guest_water', '0');
INSERT INTO `phpbb_auction_image_config` VALUES ('big_water_img_qual', '88');
INSERT INTO `phpbb_auction_image_config` VALUES ('big_watermarkpos', '4');
INSERT INTO `phpbb_auction_image_config` VALUES ('big_water_img_trans', '80');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_offer_mini_quality', '90');
INSERT INTO `phpbb_auction_image_config` VALUES ('edit_level', '2');
INSERT INTO `phpbb_auction_image_config` VALUES ('auction_gif_max_size', '180000');
INSERT INTO `phpbb_auction_image_config` VALUES ('first_run', '0');

CREATE TABLE `phpbb_auction_ipn_log` (
  `PK_auction_ipn_log_id` mediumint(8) NOT NULL auto_increment,
  `auction_ipn_log_date` int(11) NOT NULL default '0',
  `auction_ipn_log_status` varchar(200) NOT NULL default '0',
  `FK_auction_offer_id` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`PK_auction_ipn_log_id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

CREATE TABLE `phpbb_auction_offer` (
  `PK_auction_offer_id` mediumint(8) unsigned NOT NULL auto_increment,
  `FK_auction_offer_user_id` mediumint(8) unsigned NOT NULL default '0',
  `FK_auction_offer_room_id` mediumint(8) unsigned NOT NULL default '0',
  `auction_offer_title` varchar(100) NOT NULL default '',
  `auction_offer_text` text,
  `auction_offer_time_start` int(11) NOT NULL default '0',
  `auction_offer_time_stop` int(11) NOT NULL default '0',
  `auction_offer_state` int(1) NOT NULL default '0',
  `auction_offer_price_start` decimal(15,2) NOT NULL default '0.00',
  `auction_offer_views` int(11) NOT NULL default '0',
  `auction_offer_picture` varchar(200) NOT NULL default '',
  `auction_offer_special` tinyint(1) NOT NULL default '0',
  `auction_offer_bold` tinyint(1) NOT NULL default '0',
  `auction_offer_on_top` tinyint(1) NOT NULL default '0',
  `auction_offer_paid` tinyint(1) NOT NULL default '0',
  `auction_offer_sell_on_first` tinyint(1) NOT NULL default '0',
  `auction_offer_shipping_price` decimal(15,2) NOT NULL default '0.00',
  `auction_offer_shipping_location` mediumint(8) NOT NULL default '0',
  `auction_offer_last_bid_price` decimal(15,2) NOT NULL default '0.00',
  `FK_auction_offer_last_bid_user_id` mediumint(8) NOT NULL default '0',
  `auction_offer_direct_sell_price` decimal(15,2) NOT NULL default '0.00',
  `auction_offer_comment` varchar(255) NOT NULL default '',
  `auction_offer_comment_time` int(11) NOT NULL default '0',
  `auction_offer_notified_buyer` tinyint(1) NOT NULL default '0',
  `auction_offer_notified_seller` tinyint(1) NOT NULL default '0',
  `auction_offer_bid_increase` decimal(15,2) NOT NULL default '0.00',
  `auction_offer_accepted_payments` varchar(100) NOT NULL default '',
  `auction_offer_sellers_location` varchar(100) NOT NULL default '',
  `auction_offer_percentage_charged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`PK_auction_offer_id`)
) TYPE=MyISAM AUTO_INCREMENT=68 ;

CREATE TABLE `phpbb_auction_rating` (
  `PK_auction_rating_id` mediumint(8) NOT NULL default '0',
  `auction_rating_title` varchar(25) NOT NULL default '0',
  `auction_rating_order` mediumint(8) NOT NULL default '0',
  `auction_rating_icon` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`PK_auction_rating_id`)
) TYPE=MyISAM;


INSERT INTO `phpbb_auction_rating` VALUES (1, 'Super', 0, '1.gif');
INSERT INTO `phpbb_auction_rating` VALUES (2, 'Good', 0, '2.gif');
INSERT INTO `phpbb_auction_rating` VALUES (3, 'Fair', 0, '3.gif');
INSERT INTO `phpbb_auction_rating` VALUES (4, 'Poor', 0, '4.gif');

CREATE TABLE `phpbb_auction_role` (
  `PK_auction_role_id` mediumint(5) NOT NULL default '0',
  `auction_role_title` varchar(25) NOT NULL default '',
  `view_all` tinyint(1) NOT NULL default '0',
  `view_offer` tinyint(1) NOT NULL default '0',
  `view_bid_history` tinyint(1) NOT NULL default '0',
  `new` tinyint(1) NOT NULL default '0',
  `bid` tinyint(1) NOT NULL default '0',
  `direct_sell` tinyint(1) NOT NULL default '0',
  `image_upload` tinyint(1) NOT NULL default '0',
  `comment` tinyint(1) NOT NULL default '0',
  `move` tinyint(1) NOT NULL default '0',
  `delete_offer` tinyint(1) NOT NULL default '0',
  `delete_bid` tinyint(1) NOT NULL default '0',
  `special` tinyint(1) NOT NULL default '0'
) TYPE=MyISAM;

INSERT INTO `phpbb_auction_role` VALUES (5, 'administrator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `phpbb_auction_role` VALUES (4, 'moderator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `phpbb_auction_role` VALUES (1, 'guest', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `phpbb_auction_role` VALUES (2, 'registered', 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `phpbb_auction_role` VALUES (3, 'auctioneer', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);

CREATE TABLE `phpbb_auction_room` (
  `PK_auction_room_id` mediumint(8) unsigned NOT NULL auto_increment,
  `FK_auction_room_category_id` mediumint(8) unsigned NOT NULL default '0',
  `auction_room_order` mediumint(8) unsigned NOT NULL default '0',
  `auction_room_title` varchar(100) NOT NULL default '',
  `auction_room_description` text,
  `auction_room_state` mediumint(8) unsigned NOT NULL default '0',
  `auction_room_count_view` mediumint(8) unsigned NOT NULL default '0',
  `auction_room_icon` varchar(255) default NULL,
  PRIMARY KEY  (`PK_auction_room_id`)
) TYPE=MyISAM AUTO_INCREMENT=9 ;


INSERT INTO `phpbb_auction_room` VALUES (1, 1, 10, 'Test-Room', '', 0, 1, '');

CREATE TABLE `phpbb_auction_room_prune` (
  `PK_prune_id` mediumint(8) unsigned NOT NULL auto_increment,
  `FK_auction_room_id` smallint(5) unsigned NOT NULL default '0',
  `prune_days` smallint(5) unsigned NOT NULL default '0',
  `prune_frequency` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`PK_prune_id`),
  KEY `room_id` (`FK_auction_room_id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;


CREATE TABLE `phpbb_auction_store` (
  `pk_auction_store_id` mediumint(8) NOT NULL auto_increment,
  `fk_user_id` mediumint(8) NOT NULL default '0',
  `store_name` varchar(255) NOT NULL default '',
  `store_description` text NOT NULL,
  `store_header` text NOT NULL,
  `show_block_drop_down` tinyint(1) NOT NULL default '1',
  `show_block_rooms` tinyint(1) NOT NULL default '1',
  `show_block_search` tinyint(1) NOT NULL default '1',
  `show_block_statistics` tinyint(1) NOT NULL default '1',
  `show_block_myauction` tinyint(1) NOT NULL default '1',
  `show_block_specials` tinyint(1) NOT NULL default '1',
  `show_block_priceinfo` tinyint(1) NOT NULL default '1',
  `show_block_calendar` tinyint(1) NOT NULL default '1',
  `show_block_closetoend` tinyint(1) NOT NULL default '1',
  `show_block_ticker` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`pk_auction_store_id`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;


CREATE TABLE `phpbb_auction_user_rating` (
  `FK_auction_offer_id` mediumint(8) unsigned NOT NULL default '0',
  `FK_auction_offer_seller_id` mediumint(8) unsigned NOT NULL default '0',
  `FK_auction_offer_buyer_id` mediumint(8) NOT NULL default '0',
  `auction_offer_buyer_rating_text` varchar(255) NOT NULL default '',
  `auction_offer_seller_rating_text` varchar(255) NOT NULL default '',
  `FK_auction_offer_buyer_rating_id` mediumint(8) NOT NULL default '0',
  `FK_auction_offer_seller_rating_id` mediumint(8) NOT NULL default '0',
  `auction_user_seller_rating_time` int(11) NOT NULL default '0',
  `auction_user_buyer_rating_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`FK_auction_offer_id`)
) TYPE=MyISAM;

CREATE TABLE `phpbb_auction_user_role` (
  `FK_user_id` mediumint(8) NOT NULL default '0',
  `FK_auction_role` mediumint(8) NOT NULL default '0',
  `auction_role_time_start` tinyint(11) NOT NULL default '0'
) TYPE=MyISAM;


CREATE TABLE `phpbb_auction_watchlist` (
  `FK_auction_offer_id` mediumint(8) NOT NULL default '0',
  `FK_auction_user_id` mediumint(8) NOT NULL default '0',
  `auction_watchlist_time` int(11) NOT NULL default '0'
) TYPE=MyISAM;