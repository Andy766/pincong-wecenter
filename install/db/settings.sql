-- --------------------------------------------------------


TRUNCATE `aws_category`;
INSERT INTO `aws_category` (`id`, `title`, `type`, `icon`, `parent_id`, `sort`, `url_token`) VALUES
	(1, '默认分类', 'question', NULL, 0, 0, NULL);


TRUNCATE `aws_system_setting`;
INSERT INTO `aws_system_setting` (`varname`, `value`) VALUES
	('db_engine', 's:6:"MyISAM";'),
	('site_name', 's:11:"新·品葱";'),
	('description', 's:33:"在自由的阳光下各抒己见";'),
	('keywords', 's:31:"品葱,品蔥,pincong,新品葱";'),
	('sensitive_words', 's:0:"";'),
	('def_focus_uids', 's:0:"";'),
	('answer_edit_time', 's:1:"0";'),
	('cache_level_high', 's:2:"60";'),
	('cache_level_normal', 's:3:"600";'),
	('cache_level_low', 's:4:"1800";'),
	('unread_flush_interval', 's:3:"100";'),
	('newer_invitation_num', 's:1:"5";'),
	('index_per_page', 's:2:"20";'),
	('img_url', 's:0:"";'),
	('upload_url', 's:8:"/uploads";'),
	('upload_dir', 's:9:"./uploads";'),
	('ui_style', 's:7:"pincong";'),
	('answer_unique', 's:1:"Y";'),
	('notifications_per_page', 's:2:"20";'),
	('contents_per_page', 's:2:"50";'),
	('hot_question_period', 's:1:"7";'),
	('category_display_mode', 's:4:"list";'),
	('recommend_users_number', 's:2:"20";'),
	('register_valid_type', 's:1:"N";'),
	('best_answer_day', 's:1:"0";'),
	('answer_self_question', 's:1:"Y";'),
	('censoruser', 's:0:"";'),
	('best_answer_min_count', 's:1:"4";'),
	('db_version', 's:8:"20160523";'),
	('statistic_code', 's:0:"";'),
	('upload_enable', 's:1:"N";'),
	('answer_length_lower', 's:1:"2";'),
	('quick_publish', 's:1:"N";'),
	('register_type', 's:4:"open";'),
	('question_title_limit', 's:3:"100";'),
	('register_seccode', 's:1:"Y";'),
	('admin_login_seccode', 's:1:"Y";'),
	('request_route_custom', 's:0:"";'),
	('upload_size_limit', 's:3:"512";'),
	('upload_avatar_size_limit', 's:3:"512";'),
	('topic_title_limit', 's:1:"6";'),
	('url_rewrite_enable', 's:1:"Y";'),
	('best_agree_min_count', 's:1:"5";'),
	('site_close', 's:1:"N";'),
	('close_notice', 's:39:"站点已关闭，管理员请登录。";'),
	('username_rule', 's:1:"1";'),
	('username_length_min', 's:1:"2";'),
	('username_length_max', 's:2:"14";'),
	('category_enable', 's:1:"Y";'),
	('nav_menu_show_child', 's:1:"N";'),
	('allowed_upload_types', 's:16:"jpg,jpeg,png,gif";'),
	('site_announce', 's:0:"";'),
	('icp_beian', 's:0:"";'),
	('today_topics', 's:0:"";'),
	('welcome_recommend_users', 's:0:"";'),
	('welcome_message_pm', 's:0:"";'),
	('id_verification_disabled', 's:1:"Y";'),
	('image_upload_link', 's:18:"https://imgur.com/";'),
	('time_style', 's:1:"N";'),
	('advanced_editor_enable', 's:1:"Y";'),
	('auto_question_lock_day', 's:1:"0";'),
	('default_timezone', 's:9:"Etc/GMT-8";'),
	('new_user_notification_setting', 'a:0:{}'),
	('question_topics_limit', 's:1:"3";'),
	('new_question_force_add_topic', 's:1:"N";'),
	('unfold_question_comments', 's:1:"N";'),
	('admin_notifications', 'a:2:{s:17:"register_approval";s:1:"0";s:15:"verify_approval";s:1:"0";}'),
	('currency_system_config_question_disagreed', 's:1:"0";'),
	('currency_system_config_agree_answer', 's:1:"0";'),
	('enable_help_center', 's:1:"Y";'),
	('register_agreement', 's:231:"请勿将自身身份与其他网站相关联，切记不要使用与其他网站相同 ID 或者有关联的身份发言。\n\n由于本站不需邮箱即可注册，忘记密码将无法找回，请您妥善保管账号和密码。";'),
	('content_url_whitelist', 's:210:"https://pincong.rocks/\nhttps://www.pincong.rocks/\nhttps://i.imgur.com/\nhttps://i.redd.it/\nhttps://media.8ch.net/\nhttps://archive.is/\nhttps://web.archive.org/\nhttps://upload.wikimedia.org/\nhttps://pbs.twimg.com/";'),
	('expiration_private_messages', 's:2:"30";'),
	('expiration_notifications', 's:2:"30";'),
	('expiration_integral_logs', 's:2:"30";'),
	('expiration_user_actions', 's:2:"30";'),
	('random_seconds_min', 's:1:"0";'),
	('random_seconds_max', 's:1:"1";'),
	('reward_daily_active_users_currency', 's:0:"";'),
	('reward_daily_active_users_reputation', 's:0:"";'),
	('currency_system_config_answer_disagreed', 's:1:"0";'),
	('currency_system_config_disagree_answer', 's:1:"0";'),
	('currency_system_config_answer_agreed', 's:1:"0";'),
	('answer_length_min', 's:2:"10";'),
	('answer_length_max', 's:4:"5000";'),
	('comment_length_min', 's:1:"0";'),
	('comment_length_max', 's:4:"3000";'),
	('comment_downvote_fold', 's:1:"2";'),
	('sensitive_words_replacement', 's:0:"";'),
	('question_downvote_fold', 's:1:"2";'),
	('answer_downvote_fold', 's:1:"3";'),
	('article_downvote_fold', 's:1:"2";'),
	('auto_banning_agree_count', 's:0:"";'),
	('auto_banning_reputation', 's:0:"";'),
	('auto_banning_type', 's:3:"AND";'),
	('currency_system_config_disagree_question', 's:1:"0";'),
	('currency_system_config_question_agreed', 's:1:"0";'),
	('currency_system_config_agree_question', 's:1:"0";'),
	('currency_system_config_article_commented', 's:1:"0";'),
	('currency_system_config_comment_article', 's:1:"0";'),
	('currency_system_config_new_article', 's:1:"0";'),
	('currency_system_config_question_moved_down', 's:1:"0";'),
	('currency_system_config_move_down_question', 's:1:"0";'),
	('currency_system_config_question_moved_up', 's:1:"0";'),
	('currency_system_config_move_up_question', 's:1:"0";'),
	('currency_system_config_invite_answer', 's:1:"0";'),
	('currency_system_config_thanks', 's:1:"0";'),
	('currency_system_config_best_answer', 's:1:"0";'),
	('currency_system_config_question_answered', 's:1:"0";'),
	('currency_system_config_answer_question', 's:1:"0";'),
	('currency_system_config_new_question', 's:1:"0";'),
	('currency_system_config_register', 's:1:"0";'),
	('currency_unit', 's:3:"葱";'),
	('currency_name', 's:9:"游戏币";'),
	('currency_rule_name', 's:12:"游戏规则";'),
	('expiration_currency_logs', 's:0:"";'),
	('expiration_votes', 's:2:"30";'),
	('time_blurring', 's:1:"Y";');


TRUNCATE `aws_users_group`;
INSERT INTO `aws_users_group` (`group_id`, `type`, `custom`, `group_name`, `reputation_lower`, `reputation_higer`, `reputation_factor`, `permission`) VALUES
	(1, 0, 0, '超级管理员', 0, 0, 0, 'a:17:{s:16:"is_administrator";s:1:"1";s:12:"is_moderator";s:1:"1";s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:13:"edit_question";s:1:"1";s:10:"edit_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:12:"edit_article";s:1:"1";s:19:"edit_question_topic";s:1:"1";s:9:"bump_sink";s:1:"1";s:10:"vote_agree";s:1:"1";s:13:"vote_disagree";s:1:"1";s:10:"thank_user";s:1:"1";s:15:"allow_anonymous";s:1:"1";}'),
	(2, 0, 0, '前台管理员', 0, 0, 0, 'a:20:{s:12:"is_moderator";s:1:"1";s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:21:"publish_approval_time";a:2:{s:5:"start";s:0:"";s:3:"end";s:0:"";}s:13:"edit_question";s:1:"1";s:10:"edit_topic";s:1:"1";s:12:"manage_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:17:"redirect_question";s:1:"1";s:11:"publish_url";s:1:"1";s:12:"edit_article";s:1:"1";s:19:"edit_question_topic";s:1:"1";s:9:"bump_sink";s:1:"1";s:14:"agree_disagree";s:1:"1";s:10:"vote_agree";s:1:"1";s:13:"vote_disagree";s:1:"1";s:10:"thank_user";s:1:"1";}'),
	(3, 0, 0, '未验证会员', 0, 0, 0, 'a:7:{s:16:"publish_question";s:1:"1";s:21:"publish_approval_time";a:2:{s:5:"start";s:0:"";s:3:"end";s:0:"";}s:11:"human_valid";s:1:"1";s:19:"question_valid_hour";s:1:"2";s:17:"answer_valid_hour";s:1:"2";s:15:"publish_article";s:1:"1";s:15:"publish_comment";s:1:"1";}'),
	(4, 0, 0, '普通会员', 0, 0, 0, 'a:3:{s:21:"publish_approval_time";a:2:{s:5:"start";s:0:"";s:3:"end";s:0:"";}s:19:"question_valid_hour";s:2:"10";s:17:"answer_valid_hour";s:2:"10";}'),
	(99, 0, 0, '游客', 0, 0, 0, 'a:8:{s:10:"visit_site";s:1:"1";s:13:"visit_explore";s:1:"1";s:14:"visit_question";s:1:"1";s:11:"visit_topic";s:1:"1";s:13:"visit_feature";s:1:"1";s:12:"visit_people";s:1:"1";s:13:"visit_chapter";s:1:"1";s:11:"answer_show";s:1:"1";}'),
	(100, 1, 0, 'lv0', -2147483648, 0, 0, 'a:7:{s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:11:"human_valid";s:1:"1";s:19:"question_valid_hour";s:1:"5";s:17:"answer_valid_hour";s:1:"5";}'),
	(101, 1, 0, 'lv1', 0, 5, 0, 'a:14:{s:12:"is_moderator";s:1:"1";s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:10:"edit_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:11:"human_valid";s:1:"1";s:19:"question_valid_hour";s:1:"5";s:17:"answer_valid_hour";s:1:"5";s:19:"edit_question_topic";s:1:"1";s:10:"vote_agree";s:1:"1";s:15:"allow_anonymous";s:1:"1";}'),
	(102, 1, 0, 'lv2', 5, 10, 0, 'a:16:{s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:21:"publish_approval_time";a:2:{s:5:"start";s:0:"";s:3:"end";s:0:"";}s:10:"edit_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:17:"redirect_question";s:1:"1";s:11:"publish_url";s:1:"1";s:11:"human_valid";s:1:"1";s:19:"edit_question_topic";s:1:"1";s:9:"bump_sink";s:1:"1";s:14:"agree_disagree";s:1:"1";s:10:"vote_agree";s:1:"1";s:10:"thank_user";s:1:"1";}'),
	(103, 1, 0, 'lv3', 10, 30, 0, 'a:17:{s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:21:"publish_approval_time";a:2:{s:5:"start";s:0:"";s:3:"end";s:0:"";}s:10:"edit_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:17:"redirect_question";s:1:"1";s:11:"publish_url";s:1:"1";s:11:"human_valid";s:1:"1";s:19:"edit_question_topic";s:1:"1";s:9:"bump_sink";s:1:"1";s:14:"agree_disagree";s:1:"1";s:10:"vote_agree";s:1:"1";s:13:"vote_disagree";s:1:"1";s:10:"thank_user";s:1:"1";}'),
	(104, 1, 0, 'lv4', 30, 2147483647, 1, 'a:13:{s:16:"publish_question";s:1:"1";s:15:"answer_question";s:1:"1";s:15:"publish_article";s:1:"1";s:15:"comment_article";s:1:"1";s:15:"publish_comment";s:1:"1";s:10:"edit_topic";s:1:"1";s:12:"create_topic";s:1:"1";s:19:"edit_question_topic";s:1:"1";s:9:"bump_sink";s:1:"1";s:10:"vote_agree";s:1:"1";s:13:"vote_disagree";s:1:"1";s:10:"thank_user";s:1:"1";s:15:"allow_anonymous";s:1:"1";}');


TRUNCATE `aws_users`;
INSERT INTO `aws_users` (`uid`, `user_name`, `password`, `salt`, `group_id`) VALUES
	(1, 'admin', '$2y$10$TaEOhERXEB51Ds8i/iBbq.Qy2v82s3yidCLGz/iv25PJ7hxXnq7r.', 'gzeu', 1);


TRUNCATE `aws_users_attrib`;
INSERT INTO `aws_users_attrib` (`id`, `uid`) VALUES
	(1, 1);

