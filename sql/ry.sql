/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机
Source Server Version : 50728
Source Host           : 192.168.2.103:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-12-13 17:03:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 't_exam_teacher', '考试类别教师关系表', null, null, 'TExamTeacher', 'crud', 'com.ruoyi.system', 'system', 'teacher', '考试类别教师关系', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"\",\"treeCode\":\"\"}', 'admin', '2020-12-04 13:14:57', '', '2020-12-04 13:16:05', '');
INSERT INTO `gen_table` VALUES ('2', 't_score', '考试成绩表', null, null, 'TScore', 'crud', 'com.ruoyi.system', 'system', 'score', '考试成绩', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"\",\"treeCode\":\"\"}', 'admin', '2020-12-05 07:06:22', '', '2020-12-05 07:10:45', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'connect_id', '主键', 'bigint(20)', 'Long', 'connectId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'exam_id', '考试类别ID', 'bigint(20)', 'Long', 'examId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'exam_name', '考试名称', 'varchar(60)', 'String', 'examName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'user_id', '教师ID', 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'user_name', '教师姓名', 'varchar(60)', 'String', 'userName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', null, '1', null, 'EQ', 'input', '', '8', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2020-12-04 13:14:57', null, '2020-12-04 13:16:05');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'score_id', '考试成绩ID', 'bigint(20)', 'Long', 'scoreId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'user_id', '用户id(学生id)', 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'user_name', '用户姓名', 'varchar(30)', 'String', 'userName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'exam_id', '考试类别id', 'bigint(20)', 'Long', 'examId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'exam_name', '考试名称', 'varchar(30)', 'String', 'examName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('15', '2', 'score', '考试成绩', 'varchar(30)', 'String', 'score', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'school_year', '学年', 'varchar(90)', 'String', 'schoolYear', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('17', '2', 'semester', '学期', 'varchar(10)', 'String', 'semester', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'sys_semester', '8', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('18', '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('19', '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('20', '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, '1', 'EQ', 'input', '', '11', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('21', '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, '1', 'EQ', 'datetime', '', '12', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');
INSERT INTO `gen_table_column` VALUES ('22', '2', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '13', 'admin', '2020-12-05 07:06:22', null, '2020-12-05 07:10:45');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(20) NOT NULL,
  `sched_time` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176273966D078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176273966D078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176273966D078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(20) NOT NULL,
  `checkin_interval` bigint(20) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', '01DC186190337171607407226707', '1607407545140', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(20) NOT NULL,
  `repeat_interval` bigint(20) NOT NULL,
  `times_triggered` bigint(20) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(20) DEFAULT NULL,
  `prev_fire_time` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(6) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1607407230000', '-1', '5', 'PAUSED', 'CRON', '1607407226000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1607407230000', '-1', '5', 'PAUSED', 'CRON', '1607407226000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1607407240000', '-1', '5', 'PAUSED', 'CRON', '1607407226000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-12-03 14:10:41', '', null, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', 'xx大学', '0', 'xx', '15888888888', 'xx@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:34');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '学院1', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:34');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-12-03 14:10:38', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '大一', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:19');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '大二', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:13');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '大三', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:24');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '大四', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-12-03 14:10:38', 'admin', '2020-12-05 07:00:34');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-12-03 14:10:38', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-12-03 14:10:38', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2020-12-03 14:10:38', '', null);
INSERT INTO `sys_dept` VALUES ('110', '103', '0,100,101,103', '通信1班', '1', null, null, null, '0', '0', 'admin', '2020-12-05 07:01:12', '', null);
INSERT INTO `sys_dept` VALUES ('111', '103', '0,100,101,103', '通信2班', '2', null, null, null, '0', '0', 'admin', '2020-12-05 07:01:31', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2020-12-03 14:10:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2020-12-03 14:10:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '第一学期', '1', 'sys_semester', null, 'primary', 'Y', '0', 'admin', '2020-12-05 15:08:45', '', null, '第一学期');
INSERT INTO `sys_dict_data` VALUES ('31', '2', '第二学期', '2', 'sys_semester', null, 'primary', 'N', '0', 'admin', '2020-12-05 15:08:45', '', null, '第二学期');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2020-12-03 14:10:41', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2020-12-03 14:10:41', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2020-12-03 14:10:41', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2020-12-03 14:10:41', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2020-12-03 14:10:41', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2020-12-03 14:10:41', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2020-12-03 14:10:41', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2020-12-03 14:10:41', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2020-12-03 14:10:41', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2020-12-03 14:10:41', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '学期', 'sys_semester', '0', 'admin', '2020-12-05 15:07:49', '', null, '学期');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-12-03 14:10:42', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2020-12-03 14:10:42', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2020-12-03 14:10:42', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 14:15:54');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-03 14:19:46');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 13:13:43');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:13:46');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:21:21');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:21:24');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:24:03');
INSERT INTO `sys_logininfor` VALUES ('107', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:24:17');
INSERT INTO `sys_logininfor` VALUES ('108', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:24:54');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:24:57');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:26:31');
INSERT INTO `sys_logininfor` VALUES ('111', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:26:40');
INSERT INTO `sys_logininfor` VALUES ('112', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:27:08');
INSERT INTO `sys_logininfor` VALUES ('113', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:28:26');
INSERT INTO `sys_logininfor` VALUES ('114', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:28:43');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:28:47');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:29:39');
INSERT INTO `sys_logininfor` VALUES ('117', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:29:45');
INSERT INTO `sys_logininfor` VALUES ('118', 'teacher', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-04 13:30:12');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:30:14');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:42:18');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:45:26');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 13:46:30');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:46:32');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 13:48:09');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:48:12');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 13:49:57');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 14:26:41');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:09:01');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:09:44');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:12:25');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:15:25');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:17:12');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:21:55');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:27:55');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:30:00');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:33:34');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 15:36:14');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 15:36:16');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:36:18');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 15:40:27');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:40:29');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:42:18');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:43:48');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:45:12');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 15:47:09');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:47:11');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:49:02');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:51:15');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 15:54:21');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:01:37');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:07:26');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:10:31');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-04 16:17:34');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:17:36');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:23:28');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:39:23');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:44:20');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:50:35');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:55:44');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-04 16:59:46');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 02:58:10');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 03:11:46');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 03:23:18');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-05 05:55:04');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 05:55:07');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 06:10:42');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 06:35:29');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 06:36:57');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 07:06:12');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-05 07:54:47');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 07:54:54');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 08:28:52');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 08:29:53');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-05 13:30:56');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 12:55:37');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 13:48:46');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 13:53:41');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:05:55');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-06 14:18:23');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:18:26');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:44:29');
INSERT INTO `sys_logininfor` VALUES ('182', 'male', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-06 14:45:00');
INSERT INTO `sys_logininfor` VALUES ('183', 'male', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-12-06 14:45:03');
INSERT INTO `sys_logininfor` VALUES ('184', 'male', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2020-12-06 14:45:05');
INSERT INTO `sys_logininfor` VALUES ('185', 'male', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2020-12-06 14:45:22');
INSERT INTO `sys_logininfor` VALUES ('186', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:45:40');
INSERT INTO `sys_logininfor` VALUES ('187', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:46:09');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:46:12');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:49:15');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:49:18');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:49:47');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:53:48');
INSERT INTO `sys_logininfor` VALUES ('193', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:53:57');
INSERT INTO `sys_logininfor` VALUES ('194', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:54:26');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:54:29');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:55:44');
INSERT INTO `sys_logininfor` VALUES ('197', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:55:51');
INSERT INTO `sys_logininfor` VALUES ('198', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-06 14:56:45');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-06 14:56:48');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 09:31:28');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 09:38:20');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 09:38:24');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 09:40:35');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 10:03:53');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 10:28:45');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 10:35:40');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 10:39:48');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 10:55:55');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 13:55:35');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 13:59:19');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:01:17');
INSERT INTO `sys_logininfor` VALUES ('212', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:01:23');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:06:53');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:06:56');
INSERT INTO `sys_logininfor` VALUES ('215', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:07:01');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:09:35');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:09:41');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:09:43');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:09:46');
INSERT INTO `sys_logininfor` VALUES ('220', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:09:50');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:23:17');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:23:20');
INSERT INTO `sys_logininfor` VALUES ('223', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:23:25');
INSERT INTO `sys_logininfor` VALUES ('224', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 14:23:59');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:24:07');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 14:48:15');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 15:11:53');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:11:56');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 15:12:00');
INSERT INTO `sys_logininfor` VALUES ('230', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 15:12:07');
INSERT INTO `sys_logininfor` VALUES ('231', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 15:12:09');
INSERT INTO `sys_logininfor` VALUES ('232', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:12:11');
INSERT INTO `sys_logininfor` VALUES ('233', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 15:17:20');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:17:23');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:17:55');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 15:24:25');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:24:27');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 15:30:26');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:30:32');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 15:57:15');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 16:14:10');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 16:14:13');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 16:14:58');
INSERT INTO `sys_logininfor` VALUES ('244', 'steudent1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 16:15:06');
INSERT INTO `sys_logininfor` VALUES ('245', 'steudent1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 16:15:36');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 16:15:39');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 16:16:26');
INSERT INTO `sys_logininfor` VALUES ('248', 'student', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 16:52:35');
INSERT INTO `sys_logininfor` VALUES ('249', 'student', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-12-07 16:52:38');
INSERT INTO `sys_logininfor` VALUES ('250', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 16:53:06');
INSERT INTO `sys_logininfor` VALUES ('251', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-07 16:53:08');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 17:35:11');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-07 17:35:16');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 17:35:18');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 17:35:30');
INSERT INTO `sys_logininfor` VALUES ('256', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-07 17:35:39');
INSERT INTO `sys_logininfor` VALUES ('257', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-12-07 17:35:43');
INSERT INTO `sys_logininfor` VALUES ('258', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 17:35:54');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 17:50:16');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-07 17:55:57');
INSERT INTO `sys_logininfor` VALUES ('261', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-07 17:56:04');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 09:44:27');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 10:40:54');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 10:49:23');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 10:59:01');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 11:03:24');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 11:05:10');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 11:09:02');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 11:13:56');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 13:39:40');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-08 13:42:45');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 13:42:47');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 13:47:04');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 13:55:01');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-08 14:03:21');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:02:43');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-13 08:02:49');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:05:24');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:07:28');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:28:02');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-13 08:41:37');
INSERT INTO `sys_logininfor` VALUES ('282', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-13 08:41:41');
INSERT INTO `sys_logininfor` VALUES ('283', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-12-13 08:41:44');
INSERT INTO `sys_logininfor` VALUES ('284', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:41:51');
INSERT INTO `sys_logininfor` VALUES ('285', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-13 08:42:33');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:51:09');
INSERT INTO `sys_logininfor` VALUES ('287', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-13 08:55:56');
INSERT INTO `sys_logininfor` VALUES ('288', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:56:04');
INSERT INTO `sys_logininfor` VALUES ('289', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-13 08:56:27');
INSERT INTO `sys_logininfor` VALUES ('290', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-13 08:56:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2020-12-03 14:10:39', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2020-12-03 14:10:39', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2020-12-03 14:10:39', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', 'menuBlank', 'C', '1', '', 'fa fa-location-arrow', 'admin', '2020-12-03 14:10:39', 'admin', '2020-12-04 13:19:51', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2020-12-03 14:10:39', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2020-12-03 14:10:39', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2020-12-03 14:10:39', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2020-12-03 14:10:39', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', 'fa fa-address-card-o', 'admin', '2020-12-03 14:10:39', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2020-12-03 14:10:39', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2020-12-03 14:10:39', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2020-12-03 14:10:39', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', 'fa fa-pencil-square-o', 'admin', '2020-12-03 14:10:39', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2020-12-03 14:10:39', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', 'fa fa-tasks', 'admin', '2020-12-03 14:10:39', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', 'fa fa-bug', 'admin', '2020-12-03 14:10:39', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', 'monitor:server:view', 'fa fa-server', 'admin', '2020-12-03 14:10:39', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', 'monitor:cache:view', 'fa fa-cube', 'admin', '2020-12-03 14:10:39', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', 'fa fa-wpforms', 'admin', '2020-12-03 14:10:39', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', 'fa fa-code', 'admin', '2020-12-03 14:10:39', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', 'fa fa-gg', 'admin', '2020-12-03 14:10:39', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2020-12-03 14:10:39', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2020-12-03 14:10:39', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2020-12-03 14:10:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2020-12-03 14:10:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1076', '成绩管理', '0', '4', '#', 'menuItem', 'M', '0', null, '#', 'admin', '2020-12-13 08:06:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1077', '考试类别', '1076', '1', '/system/exam', 'menuItem', 'C', '0', null, '#', 'admin', '2020-12-13 08:08:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1078', '考试成绩录入', '1076', '2', '/system/score/scoreAdd', 'menuItem', 'C', '0', null, '#', 'admin', '2020-12-13 08:10:47', '', null, '');
INSERT INTO `sys_menu` VALUES ('1079', '考试成绩新增', '1078', '1', '#', 'menuItem', 'F', '0', null, '#', 'admin', '2020-12-13 08:11:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('1081', '全部学生成绩', '1076', '3', '/system/score/scoreAll', 'menuItem', 'C', '0', null, '#', 'admin', '2020-12-13 08:12:08', '', null, '');
INSERT INTO `sys_menu` VALUES ('1082', '待体测学生', '1076', '4', '/system/score/unfinishStudents', 'menuItem', 'C', '0', null, '#', 'admin', '2020-12-13 08:13:03', '', null, '');
INSERT INTO `sys_menu` VALUES ('1083', '考试成绩修改', '1078', '2', '#', 'menuItem', 'F', '0', 'system:score:edit', '#', 'admin', '2020-12-13 08:14:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('1084', '我的成绩', '1076', '5', '/system/score/myScore', 'menuItem', 'C', '0', null, '#', 'admin', '2020-12-13 08:16:03', '', null, '');
INSERT INTO `sys_menu` VALUES ('1085', '导出', '1084', '1', '#', 'menuItem', 'F', '0', 'system:score:export', '#', 'admin', '2020-12-13 08:53:29', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2020-12-03 14:10:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2020-12-03 14:10:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('3', '测试在哪显示', '1', '<p>hello world</p>', '0', 'admin', '2020-12-07 15:20:15', '', null, null);
INSERT INTO `sys_notice` VALUES ('4', '测试在哪显示啊哈哈哈', '2', '<p>测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈<br></p>', '0', 'admin', '2020-12-07 15:21:09', '', null, null);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('1', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_exam_teacher\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:14:57');
INSERT INTO `sys_oper_log` VALUES ('2', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_exam_teacher\"],\"tableComment\":[\"考试类别教师关系表\"],\"className\":[\"TExamTeacher\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"connectId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试类别ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"examId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"考试名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"examName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"教师ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"userId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"教师姓名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"userName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"创建者\"],\"columns[5].javaType\":[\"S', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:16:05');
INSERT INTO `sys_oper_log` VALUES ('3', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/t_exam_teacher', '127.0.0.1', '内网IP', null, 'null', '0', null, '2020-12-04 13:16:10');
INSERT INTO `sys_oper_log` VALUES ('4', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:19:51');
INSERT INTO `sys_oper_log` VALUES ('5', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"考试类别\"],\"url\":[\"/system/exam\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:20:44');
INSERT INTO `sys_oper_log` VALUES ('6', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩\"],\"url\":[\"/system/score\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:21:16');
INSERT INTO `sys_oper_log` VALUES ('7', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"教师\"],\"roleKey\":[\"teacher\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1006,1063\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:23:27');
INSERT INTO `sys_oper_log` VALUES ('8', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"admin\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"teacher\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:24:00');
INSERT INTO `sys_oper_log` VALUES ('9', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:user:resetPwd;system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1006,1063\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:26:29');
INSERT INTO `sys_oper_log` VALUES ('10', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:user:resetPwd;system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:29:12');
INSERT INTO `sys_oper_log` VALUES ('11', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 13:29:36');
INSERT INTO `sys_oper_log` VALUES ('12', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2,3,4\"]}', '{\r\n  \"msg\" : \"董事长已分配,不能删除\",\r\n  \"code\" : 500\r\n}', '0', null, '2020-12-04 14:12:32');
INSERT INTO `sys_oper_log` VALUES ('13', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', 'null', '1', '不允许操作超级管理员用户', '2020-12-04 14:12:44');
INSERT INTO `sys_oper_log` VALUES ('14', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"\"],\"userName\":[\"老师\"],\"dept.deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"teacher\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 15:55:12');
INSERT INTO `sys_oper_log` VALUES ('15', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"555\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:11:53');
INSERT INTO `sys_oper_log` VALUES ('16', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:12:05');
INSERT INTO `sys_oper_log` VALUES ('17', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"asda\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:18:07');
INSERT INTO `sys_oper_log` VALUES ('18', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:18:24');
INSERT INTO `sys_oper_log` VALUES ('19', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"asfd\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:18:42');
INSERT INTO `sys_oper_log` VALUES ('20', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:23:34');
INSERT INTO `sys_oper_log` VALUES ('21', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"vzx\"],\"teacherIds\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:23:58');
INSERT INTO `sys_oper_log` VALUES ('22', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:39:29');
INSERT INTO `sys_oper_log` VALUES ('23', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"44\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:40:31');
INSERT INTO `sys_oper_log` VALUES ('24', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:44:25');
INSERT INTO `sys_oper_log` VALUES ('25', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"米\"],\"remark\":[\"sds\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-04 16:44:55');
INSERT INTO `sys_oper_log` VALUES ('26', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 05:56:00');
INSERT INTO `sys_oper_log` VALUES ('27', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\OtherWork\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TExamTeacherMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TExamTeacherMapper.insertTExamTeacher-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_exam_teacher          ( user_id,             user_name,             create_by,             create_time,             update_by,             update_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\n; Field \'exam_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value', '2020-12-05 06:10:53');
INSERT INTO `sys_oper_log` VALUES ('28', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\OtherWork\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TExamTeacherMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TExamTeacherMapper.insertTExamTeacher-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_exam_teacher          ( user_id,             user_name,             create_by,             create_time,             update_by,             update_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\n; Field \'exam_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value', '2020-12-05 06:12:00');
INSERT INTO `sys_oper_log` VALUES ('29', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\OtherWork\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TExamTeacherMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TExamTeacherMapper.insertTExamTeacher-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_exam_teacher          ( user_id,             user_name,             create_by,             create_time,             update_by,             update_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\n; Field \'exam_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value', '2020-12-05 06:13:03');
INSERT INTO `sys_oper_log` VALUES ('30', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"引体向上\"],\"sex\":[\"0\"],\"remark\":[\"男同学\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:15:54');
INSERT INTO `sys_oper_log` VALUES ('31', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Code\\OtherWork\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TExamTeacherMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TExamTeacherMapper.insertTExamTeacher-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_exam_teacher          ( user_id,             user_name,             create_by,             create_time,             update_by,             update_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value\n; Field \'exam_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'exam_id\' doesn\'t have a default value', '2020-12-05 06:16:43');
INSERT INTO `sys_oper_log` VALUES ('32', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"1\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:17:27');
INSERT INTO `sys_oper_log` VALUES ('33', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"1\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:19:10');
INSERT INTO `sys_oper_log` VALUES ('34', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"女老师\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"female\"],\"sex\":[\"1\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:20:34');
INSERT INTO `sys_oper_log` VALUES ('35', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"1\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"男老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:20:47');
INSERT INTO `sys_oper_log` VALUES ('36', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '研发部门', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:21:23');
INSERT INTO `sys_oper_log` VALUES ('37', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"男老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:21:49');
INSERT INTO `sys_oper_log` VALUES ('38', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"10\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"男老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:26:09');
INSERT INTO `sys_oper_log` VALUES ('39', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"2\"],\"examName\":[\"800米\"],\"sex\":[\"0\"],\"remark\":[\"女生必测\"],\"teacherIds\":[\"4\"],\"teacherNames\":[\"女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:26:20');
INSERT INTO `sys_oper_log` VALUES ('40', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"仰卧起坐\"],\"sex\":[\"1\"],\"remark\":[\"女生必测\"],\"teacherIds\":[\"4\"],\"teacherNames\":[\"女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:26:36');
INSERT INTO `sys_oper_log` VALUES ('41', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"2\"],\"examName\":[\"800米\"],\"sex\":[\"1\"],\"remark\":[\"女生必测\"],\"teacherIds\":[\"4\"],\"teacherNames\":[\"女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:35:49');
INSERT INTO `sys_oper_log` VALUES ('42', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"9\"],\"examName\":[\"引体向上\"],\"sex\":[\"0\"],\"remark\":[\"男同学\"],\"teacherIds\":[\"3\"],\"teacherNames\":[\"男老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:38:36');
INSERT INTO `sys_oper_log` VALUES ('43', '考试类别', '5', 'com.ruoyi.web.controller.system.TExamController.export()', 'POST', '1', 'admin', '研发部门', '/system/exam/export', '127.0.0.1', '内网IP', '{\"examName\":[\"\"],\"userName\":[\"\"],\"sex\":[\"\"],\"updateBy\":[\"\"],\"beginUpdateTime\":[\"\"],\"endUpdateTime\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"4cac4c83-3710-4c66-928a-b3666be3cc81_exam.xlsx\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:38:57');
INSERT INTO `sys_oper_log` VALUES ('44', '考试类别', '5', 'com.ruoyi.web.controller.system.TExamController.export()', 'POST', '1', 'admin', '研发部门', '/system/exam/export', '127.0.0.1', '内网IP', '{\"examName\":[\"\"],\"userName\":[\"\"],\"sex\":[\"\"],\"updateBy\":[\"\"],\"beginUpdateTime\":[\"\"],\"endUpdateTime\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\r\n  \"msg\" : \"4c59dd38-e64c-450a-a0df-3f417610a097_exam.xlsx\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:46:19');
INSERT INTO `sys_oper_log` VALUES ('45', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:48:03');
INSERT INTO `sys_oper_log` VALUES ('46', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"男学生\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"steudent1\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:49:36');
INSERT INTO `sys_oper_log` VALUES ('47', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"xx大学\"],\"orderNum\":[\"0\"],\"leader\":[\"xx\"],\"phone\":[\"15888888888\"],\"email\":[\"xx@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:58:48');
INSERT INTO `sys_oper_log` VALUES ('48', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"xx大学\"],\"deptName\":[\"学院1\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:59:06');
INSERT INTO `sys_oper_log` VALUES ('49', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"学院1\"],\"deptName\":[\"大一\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 06:59:50');
INSERT INTO `sys_oper_log` VALUES ('50', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"学院1\"],\"deptName\":[\"大二\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:00:13');
INSERT INTO `sys_oper_log` VALUES ('51', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"学院1\"],\"deptName\":[\"大一\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:00:19');
INSERT INTO `sys_oper_log` VALUES ('52', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"学院1\"],\"deptName\":[\"大三\"],\"orderNum\":[\"3\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:00:24');
INSERT INTO `sys_oper_log` VALUES ('53', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"106\"],\"parentId\":[\"101\"],\"parentName\":[\"学院1\"],\"deptName\":[\"大四\"],\"orderNum\":[\"4\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:00:34');
INSERT INTO `sys_oper_log` VALUES ('54', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:00:38');
INSERT INTO `sys_oper_log` VALUES ('55', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"通信1班\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:01:12');
INSERT INTO `sys_oper_log` VALUES ('56', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"通信2班\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:01:31');
INSERT INTO `sys_oper_log` VALUES ('57', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"110\"],\"userName\":[\"男学生\"],\"dept.deptName\":[\"通信1班\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"steudent1\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:02:23');
INSERT INTO `sys_oper_log` VALUES ('58', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '大一', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_score\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:06:22');
INSERT INTO `sys_oper_log` VALUES ('59', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '大一', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_score\"],\"tableComment\":[\"考试成绩表\"],\"className\":[\"TScore\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"10\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"考试成绩ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"scoreId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"11\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id(学生id)\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"12\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"userName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"13\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"考试类别id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"examId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"14\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"考试名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"examName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"15\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"考试成绩', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:10:45');
INSERT INTO `sys_oper_log` VALUES ('60', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '大一', '/tool/gen/download/t_score', '127.0.0.1', '内网IP', null, 'null', '0', null, '2020-12-05 07:10:49');
INSERT INTO `sys_oper_log` VALUES ('61', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,1062,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4\"]}', 'null', '1', '不允许操作超级管理员角色', '2020-12-05 07:14:33');
INSERT INTO `sys_oper_log` VALUES ('62', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩录入\"],\"url\":[\"/system/score/scoreAdd\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:34:49');
INSERT INTO `sys_oper_log` VALUES ('63', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1064\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩录入\"],\"url\":[\"/system/score/scoreAdd\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:35:45');
INSERT INTO `sys_oper_log` VALUES ('64', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '大一', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"女同学\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"student2\"],\"sex\":[\"1\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 07:55:29');
INSERT INTO `sys_oper_log` VALUES ('65', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '大一', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"deptId\":[\"110\"],\"userName\":[\"女同学\"],\"dept.deptName\":[\"通信1班\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"student2\"],\"sex\":[\"1\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 08:04:00');
INSERT INTO `sys_oper_log` VALUES ('66', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '大一', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"10\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3,4\"],\"teacherNames\":[\"男老师,女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 08:11:55');
INSERT INTO `sys_oper_log` VALUES ('67', '考试类别', '3', 'com.ruoyi.web.controller.system.TExamController.remove()', 'POST', '1', 'admin', '大一', '/system/exam/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 08:12:15');
INSERT INTO `sys_oper_log` VALUES ('68', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测1000米\"],\"teacherIds\":[\"3,4\"],\"teacherNames\":[\"男老师,女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 08:14:25');
INSERT INTO `sys_oper_log` VALUES ('69', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '大一', '/system/dept/remove/102', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-05 13:32:39');
INSERT INTO `sys_oper_log` VALUES ('70', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '大一', '/system/dept/remove/108', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:32:43');
INSERT INTO `sys_oper_log` VALUES ('71', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '大一', '/system/dept/remove/109', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:32:45');
INSERT INTO `sys_oper_log` VALUES ('72', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '大一', '/system/dept/remove/102', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:32:48');
INSERT INTO `sys_oper_log` VALUES ('73', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"身高\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:34:10');
INSERT INTO `sys_oper_log` VALUES ('74', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"体重\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:34:23');
INSERT INTO `sys_oper_log` VALUES ('75', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"肺活量\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:34:35');
INSERT INTO `sys_oper_log` VALUES ('76', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"立定跳远\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:34:46');
INSERT INTO `sys_oper_log` VALUES ('77', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"50米跑\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:35:02');
INSERT INTO `sys_oper_log` VALUES ('78', '考试类别', '1', 'com.ruoyi.web.controller.system.TExamController.addSave()', 'POST', '1', 'admin', '大一', '/system/exam/add', '127.0.0.1', '内网IP', '{\"examName\":[\"坐位体前屈\"],\"sex\":[\"2\"],\"remark\":[\"男女共同测试科目\"],\"teacherIds\":[\"\"],\"teacherNames\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:35:12');
INSERT INTO `sys_oper_log` VALUES ('79', '考试类别', '2', 'com.ruoyi.web.controller.system.TExamController.editSave()', 'POST', '1', 'admin', '大一', '/system/exam/edit', '127.0.0.1', '内网IP', '{\"examId\":[\"12\"],\"examName\":[\"1000米\"],\"sex\":[\"0\"],\"remark\":[\"男生必测\"],\"teacherIds\":[\"3,4\"],\"teacherNames\":[\"男老师,女老师\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-05 13:35:25');
INSERT INTO `sys_oper_log` VALUES ('80', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:51:57');
INSERT INTO `sys_oper_log` VALUES ('81', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:52:32');
INSERT INTO `sys_oper_log` VALUES ('82', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063,1071\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:53:46');
INSERT INTO `sys_oper_log` VALUES ('83', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1071\"],\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:edi\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:54:56');
INSERT INTO `sys_oper_log` VALUES ('84', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063,1071\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:55:18');
INSERT INTO `sys_oper_log` VALUES ('85', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1071\"],\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:55:33');
INSERT INTO `sys_oper_log` VALUES ('86', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063,1071\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-06 14:55:43');
INSERT INTO `sys_oper_log` VALUES ('87', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1064', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 09:37:28');
INSERT INTO `sys_oper_log` VALUES ('88', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩录入\"],\"url\":[\"/system/scoreAdd\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 09:38:11');
INSERT INTO `sys_oper_log` VALUES ('89', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"学生成绩录入\"],\"url\":[\"/system/score/scoreAdd\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 09:41:33');
INSERT INTO `sys_oper_log` VALUES ('90', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"待体测学生\"],\"url\":[\"/system/score/unfinishStudents\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 10:26:03');
INSERT INTO `sys_oper_log` VALUES ('91', '考试成绩', '2', 'com.ruoyi.web.controller.system.TScoreController.editSave()', 'POST', '1', 'admin', '大一', '/system/score/edit', '127.0.0.1', '内网IP', '{\"scoreId\":[\"131\"],\"userName\":[\"steudent1\"],\"loginName\":[\"\"],\"score\":[\"90\"],\"schoolYear\":[\"2020\"],\"semester\":[\"1\"],\"remark\":[\"\"],\"examId\":[\"9\"],\"examName\":[\"引体向上\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',\n            user_name = \'steudent1\',\n            exam_id = 9,\n            exam\' at line 2\r\n### The error may exist in file [E:\\OtherCode\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TScoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TScoreMapper.updateTScore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update t_score          SET login_name,             user_name = ?,             exam_id = ?,             exam_name = ?,             score = ?,             school_year = ?,             semester = ?,                                       update_by = ?,             update_time = ?,             remark = ?          where score_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',\n            user_name = \'steudent1\',\n            exam_id = 9,\n            exam\' at line 2\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',\n            user_name = \'steudent1\',\n            exam_id = 9,\n            exam\' at line 2', '2020-12-07 10:40:11');
INSERT INTO `sys_oper_log` VALUES ('92', '考试成绩', '2', 'com.ruoyi.web.controller.system.TScoreController.editSave()', 'POST', '1', 'female', null, '/system/score/edit', '127.0.0.1', '内网IP', '{\"scoreId\":[\"805\"],\"userName\":[\"男学生\"],\"loginName\":[\"steudent1\"],\"score\":[\"90\"],\"schoolYear\":[\"2020\"],\"remark\":[\"优秀\"],\"examId\":[\"12\"],\"examName\":[\"1000米\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 14:23:41');
INSERT INTO `sys_oper_log` VALUES ('93', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063,1071,1072\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 14:24:42');
INSERT INTO `sys_oper_log` VALUES ('94', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"全部学生成绩\"],\"url\":[\"/system/score/scoreAll\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 14:29:35');
INSERT INTO `sys_oper_log` VALUES ('95', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1073,1063,1071,1072\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 14:29:47');
INSERT INTO `sys_oper_log` VALUES ('96', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"测试在哪显示\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p>hello world</p>\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 15:20:16');
INSERT INTO `sys_oper_log` VALUES ('97', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"测试在哪显示啊哈哈哈\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈<br></p>\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 15:21:09');
INSERT INTO `sys_oper_log` VALUES ('98', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"我的成绩\"],\"url\":[\"/system/score/myScore\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 16:11:40');
INSERT INTO `sys_oper_log` VALUES ('99', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1074\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 16:14:56');
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1074\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:export\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 16:15:58');
INSERT INTO `sys_oper_log` VALUES ('101', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1074,1075\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-07 16:16:24');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成绩管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:06:19');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1076\"],\"menuType\":[\"C\"],\"menuName\":[\"考试类别\"],\"url\":[\"/system/exam\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:08:47');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1076\"],\"menuType\":[\"C\"],\"menuName\":[\"考试成绩录入\"],\"url\":[\"/system/score/scoreAdd\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:10:47');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1078\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:11:04');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1079\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:11:26');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1076\"],\"menuType\":[\"C\"],\"menuName\":[\"全部学生成绩\"],\"url\":[\"/system/score/scoreAll\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:12:08');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1076\"],\"menuType\":[\"C\"],\"menuName\":[\"待体测学生\"],\"url\":[\"/system/score/unfinishStudents\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:13:03');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1080', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:13:50');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1078\"],\"menuType\":[\"F\"],\"menuName\":[\"考试成绩修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:14:40');
INSERT INTO `sys_oper_log` VALUES ('111', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,1063,1071,1073,1072,1076,1078,1083,1081,1082\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:15:09');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1076\"],\"menuType\":[\"C\"],\"menuName\":[\"我的成绩\"],\"url\":[\"/system/score/myScore\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:16:03');
INSERT INTO `sys_oper_log` VALUES ('113', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1076,1084\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:16:20');
INSERT INTO `sys_oper_log` VALUES ('114', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"教师\"],\"roleKey\":[\"system:score:*\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1076,1078,1083,1081,1082\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:16:34');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1062', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:52:40');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1074', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-13 08:52:46');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '大一', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1084\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:score:export\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:53:29');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1075', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:01');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1074', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:07');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1070', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:14');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1071', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:21');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1063', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:27');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1073', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:32');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1072', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-13 08:54:37');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2020-12-03 14:10:38', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2020-12-03 14:10:38', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2020-12-03 14:10:38', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2020-12-03 14:10:38', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2020-12-03 14:10:39', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2020-12-03 14:10:39', '', null, '普通角色');
INSERT INTO `sys_role` VALUES ('3', '教师', 'system:score:*', '3', '1', '0', '0', 'admin', '2020-12-04 13:23:27', 'admin', '2020-12-13 08:16:34', '');
INSERT INTO `sys_role` VALUES ('4', '学生', 'student', '4', '1', '0', '0', 'admin', '2020-12-05 06:48:03', 'admin', '2020-12-13 08:16:20', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');
INSERT INTO `sys_role_menu` VALUES ('3', '1076');
INSERT INTO `sys_role_menu` VALUES ('3', '1078');
INSERT INTO `sys_role_menu` VALUES ('3', '1081');
INSERT INTO `sys_role_menu` VALUES ('3', '1082');
INSERT INTO `sys_role_menu` VALUES ('3', '1083');
INSERT INTO `sys_role_menu` VALUES ('4', '1076');
INSERT INTO `sys_role_menu` VALUES ('4', '1084');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '系统管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-12-13 16:56:31', '2020-12-03 14:10:38', 'admin', '2020-12-03 14:10:38', '', '2020-12-13 08:56:30', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2020-12-03 14:10:38', '2020-12-03 14:10:38', 'admin', '2020-12-03 14:10:38', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('3', null, 'male', '男老师', '00', '', '', '0', '', 'e9ea4f438fee5dab8e48f8d21baa1d61', '00693b', '0', '0', '127.0.0.1', '2020-12-04 21:29:46', null, 'admin', '2020-12-04 13:24:00', 'admin', '2020-12-04 15:55:12', '');
INSERT INTO `sys_user` VALUES ('4', null, 'female', '女老师', '00', '', '', '1', '', '61ec7e2bfb48c9f469ff09c946cfd459', 'f10a3d', '0', '0', '127.0.0.1', '2020-12-13 16:56:05', null, 'admin', '2020-12-05 06:20:34', '', '2020-12-13 08:56:04', null);
INSERT INTO `sys_user` VALUES ('5', '110', 'student1', '男学生', '00', '', '', '0', '', 'e2311e77e5fe2695c908aca54a9decb5', '3bfac4', '0', '0', '127.0.0.1', '2020-12-07 16:15:06', null, 'admin', '2020-12-05 06:49:36', 'admin', '2020-12-07 16:15:06', '');
INSERT INTO `sys_user` VALUES ('6', '110', 'student2', '女同学', '00', '', '', '1', '', '494510fc2458813babf786ce2809b314', '731520', '0', '0', '127.0.0.1', '2020-12-13 16:41:53', null, 'admin', '2020-12-05 07:55:29', 'admin', '2020-12-13 08:41:51', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(11) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('d7dcf3de-50d7-444d-9281-dfdd5e57661d', 'admin', '大一', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-12-13 16:56:29', '2020-12-13 16:56:31', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '3');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '4');

-- ----------------------------
-- Table structure for t_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_exam`;
CREATE TABLE `t_exam` (
  `exam_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '考试类别ID',
  `exam_name` varchar(30) NOT NULL COMMENT '考试名称',
  `sex` varchar(255) DEFAULT '0' COMMENT '适用性别（0男 1女 2未知）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='考试类别表';

-- ----------------------------
-- Records of t_exam
-- ----------------------------
INSERT INTO `t_exam` VALUES ('2', '800米', '1', 'admin', '2020-12-04 17:25:58', 'admin', '2020-12-05 14:35:53', '女生必测');
INSERT INTO `t_exam` VALUES ('9', '引体向上', '0', 'admin', '2020-12-05 14:15:57', 'admin', '2020-12-05 14:38:39', '男同学');
INSERT INTO `t_exam` VALUES ('11', '仰卧起坐', '1', 'admin', '2020-12-05 14:26:40', 'admin', '2020-12-05 14:26:40', '女生必测');
INSERT INTO `t_exam` VALUES ('12', '1000米', '0', 'admin', '2020-12-05 16:14:29', 'admin', '2020-12-05 21:35:28', '男生必测');
INSERT INTO `t_exam` VALUES ('13', '身高', '2', 'admin', '2020-12-05 21:34:14', 'admin', '2020-12-05 21:34:14', '男女共同测试科目');
INSERT INTO `t_exam` VALUES ('14', '体重', '2', 'admin', '2020-12-05 21:34:26', 'admin', '2020-12-05 21:34:26', '男女共同测试科目');
INSERT INTO `t_exam` VALUES ('15', '肺活量', '2', 'admin', '2020-12-05 21:34:39', 'admin', '2020-12-05 21:34:39', '男女共同测试科目');
INSERT INTO `t_exam` VALUES ('16', '立定跳远', '2', 'admin', '2020-12-05 21:34:50', 'admin', '2020-12-05 21:34:50', '男女共同测试科目');
INSERT INTO `t_exam` VALUES ('17', '50米跑', '2', 'admin', '2020-12-05 21:35:05', 'admin', '2020-12-05 21:35:05', '男女共同测试科目');
INSERT INTO `t_exam` VALUES ('18', '坐位体前屈', '2', 'admin', '2020-12-05 21:35:15', 'admin', '2020-12-05 21:35:15', '男女共同测试科目');

-- ----------------------------
-- Table structure for t_exam_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_exam_teacher`;
CREATE TABLE `t_exam_teacher` (
  `connect_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exam_id` bigint(20) NOT NULL COMMENT '考试类别ID',
  `exam_name` varchar(60) DEFAULT NULL COMMENT '考试名称',
  `user_id` bigint(20) NOT NULL COMMENT '教师ID',
  `user_name` varchar(60) DEFAULT NULL COMMENT '教师姓名',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`connect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='考试类别教师关系表';

-- ----------------------------
-- Records of t_exam_teacher
-- ----------------------------
INSERT INTO `t_exam_teacher` VALUES ('10', '11', '仰卧起坐', '4', '女老师', 'admin', '2020-12-05 14:26:40', 'admin', '2020-12-05 14:26:40');
INSERT INTO `t_exam_teacher` VALUES ('11', '2', '800米', '4', '女老师', 'admin', '2020-12-05 14:35:53', 'admin', '2020-12-05 14:35:53');
INSERT INTO `t_exam_teacher` VALUES ('12', '9', '引体向上', '3', '男老师', 'admin', '2020-12-05 14:38:39', 'admin', '2020-12-05 14:38:39');
INSERT INTO `t_exam_teacher` VALUES ('17', '12', '1000米', '3', '男老师', 'admin', '2020-12-05 21:35:28', 'admin', '2020-12-05 21:35:28');
INSERT INTO `t_exam_teacher` VALUES ('18', '12', '1000米', '4', '女老师', 'admin', '2020-12-05 21:35:28', 'admin', '2020-12-05 21:35:28');

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `score_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '考试成绩ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id(学生id)',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户姓名',
  `exam_id` bigint(20) DEFAULT NULL COMMENT '考试类别id',
  `exam_name` varchar(30) DEFAULT NULL COMMENT '考试名称',
  `score` varchar(30) DEFAULT NULL COMMENT '考试成绩',
  `school_year` varchar(90) DEFAULT NULL COMMENT '学年',
  `semester` varchar(10) DEFAULT '1' COMMENT '学期',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8mb4 COMMENT='考试成绩表';

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('803', '5', 'steudent1', '男学生', '9', '引体向上', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('804', '5', 'steudent1', '男学生', '9', '引体向上', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('805', '5', 'steudent1', '男学生', '12', '1000米', '90', '2020', '1', '系统生成', '2020-12-07 14:06:02', 'female', '2020-12-07 14:23:41', '优秀');
INSERT INTO `t_score` VALUES ('806', '5', 'steudent1', '男学生', '12', '1000米', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('807', '5', 'steudent1', '男学生', '13', '身高', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('808', '5', 'steudent1', '男学生', '13', '身高', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('809', '5', 'steudent1', '男学生', '14', '体重', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('810', '5', 'steudent1', '男学生', '14', '体重', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('811', '5', 'steudent1', '男学生', '15', '肺活量', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('812', '5', 'steudent1', '男学生', '15', '肺活量', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('813', '5', 'steudent1', '男学生', '16', '立定跳远', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('814', '5', 'steudent1', '男学生', '16', '立定跳远', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('815', '5', 'steudent1', '男学生', '17', '50米跑', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('816', '5', 'steudent1', '男学生', '17', '50米跑', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('817', '5', 'steudent1', '男学生', '18', '坐位体前屈', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('818', '5', 'steudent1', '男学生', '18', '坐位体前屈', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('819', '6', 'student2', '女同学', '2', '800米', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('820', '6', 'student2', '女同学', '2', '800米', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('821', '6', 'student2', '女同学', '11', '仰卧起坐', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('822', '6', 'student2', '女同学', '11', '仰卧起坐', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('823', '6', 'student2', '女同学', '13', '身高', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('824', '6', 'student2', '女同学', '13', '身高', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('825', '6', 'student2', '女同学', '14', '体重', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('826', '6', 'student2', '女同学', '14', '体重', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('827', '6', 'student2', '女同学', '15', '肺活量', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('828', '6', 'student2', '女同学', '15', '肺活量', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('829', '6', 'student2', '女同学', '16', '立定跳远', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('830', '6', 'student2', '女同学', '16', '立定跳远', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('831', '6', 'student2', '女同学', '17', '50米跑', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('832', '6', 'student2', '女同学', '17', '50米跑', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('833', '6', 'student2', '女同学', '18', '坐位体前屈', null, '2020', '1', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
INSERT INTO `t_score` VALUES ('834', '6', 'student2', '女同学', '18', '坐位体前屈', null, '2020', '2', '系统生成', '2020-12-07 14:06:02', '系统生成', '2020-12-07 14:06:02', null);
