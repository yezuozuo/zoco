-- 关注粉丝列表
CREATE TABLE IF NOT EXISTS `attention_fan_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `from_id` VARCHAR(50) NOT NULL DEFAULT 0 COMMENT '关系主体',
  `to_id`   VARCHAR(50) NOT NULL DEFAULT 0 COMMENT '关系客体',
  `add_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加关注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `attention_fan_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `from_id` VARCHAR(50) NOT NULL DEFAULT 0,
  `to_id`   VARCHAR(50) NOT NULL DEFAULT 0,
  `add_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- 用户状态列表
CREATE TABLE IF NOT EXISTS `user_state_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `openid` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'openid',
  `is_first_login` INT(10) NOT NULL DEFAULT 0 COMMENT '是否第一次登陆',
  `is_complete_information` INT(10) NOT NULL DEFAULT 0 COMMENT '信息是否完整',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `user_state_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `openid` VARCHAR(50) NOT NULL DEFAULT '',
  `is_first_login` INT(10) NOT NULL DEFAULT 0,
  `is_complete_information` INT(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- 用户详细信息
CREATE TABLE IF NOT EXISTS `user_detail_info_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `openid` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'openid',
  `register_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `wechat_name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `username` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `sex` VARCHAR(1) NOT NULL DEFAULT '' COMMENT '性别',
  `id_number` VARCHAR(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `phone` VARCHAR(11) NOT NULL DEFAULT 0 COMMENT '手机号',
  `school` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '学校',
  `is_bad_list` INT(1) NOT NULL DEFAULT 0 COMMENT '是否是黑名单',
  `is_H` INT(1) NOT NULL DEFAULT 0 COMMENT '是否被认证',
  `score` INT(10) NOT NULL DEFAULT 0 COMMENT '积分',
  `attention_num` INT(10) NOT NULL DEFAULT 0 COMMENT '关注',
  `fans_num` INT(10) NOT NULL DEFAULT 0 COMMENT '粉丝',
  `head_img` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `user_detail_info_table` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `openid` VARCHAR(50) NOT NULL DEFAULT '',
  `register_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wechat_name` VARCHAR(50) NOT NULL DEFAULT '',
  `username` VARCHAR(32) NOT NULL DEFAULT '',
  `sex` VARCHAR(1) NOT NULL DEFAULT '',
  `id_number` VARCHAR(18) NOT NULL DEFAULT '',
  `phone` VARCHAR(11) NOT NULL DEFAULT 0,
  `school` VARCHAR(200) NOT NULL DEFAULT '',
  `is_bad_list` INT(1) NOT NULL DEFAULT 0,
  `is_H` INT(1) NOT NULL DEFAULT 0,
  `score` INT(10) NOT NULL DEFAULT 0,
  `attention_num` INT(10) NOT NULL DEFAULT 0,
  `fans_num` INT(10) NOT NULL DEFAULT 0,
  `head_img` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;