/*
Navicat MySQL Data Transfer

Source Server         : 虚拟机
Source Server Version : 50728
Source Host           : 192.168.2.103:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-12-20 20:13:21
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

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
INSERT INTO `sys_logininfor` VALUES ('291', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-14 13:30:30');
INSERT INTO `sys_logininfor` VALUES ('292', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-14 13:41:39');
INSERT INTO `sys_logininfor` VALUES ('293', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-14 13:51:29');
INSERT INTO `sys_logininfor` VALUES ('294', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 12:05:24');
INSERT INTO `sys_logininfor` VALUES ('295', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 12:12:15');
INSERT INTO `sys_logininfor` VALUES ('296', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-19 13:07:12');
INSERT INTO `sys_logininfor` VALUES ('297', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:07:20');
INSERT INTO `sys_logininfor` VALUES ('298', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:08:30');
INSERT INTO `sys_logininfor` VALUES ('299', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:10:07');
INSERT INTO `sys_logininfor` VALUES ('300', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:12:54');
INSERT INTO `sys_logininfor` VALUES ('301', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:16:58');
INSERT INTO `sys_logininfor` VALUES ('302', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-19 13:18:41');
INSERT INTO `sys_logininfor` VALUES ('303', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:18:43');
INSERT INTO `sys_logininfor` VALUES ('304', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 13:23:52');
INSERT INTO `sys_logininfor` VALUES ('305', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 14:45:42');
INSERT INTO `sys_logininfor` VALUES ('306', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-19 14:49:35');
INSERT INTO `sys_logininfor` VALUES ('307', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 14:52:22');
INSERT INTO `sys_logininfor` VALUES ('308', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 16:45:22');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 16:55:21');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 16:57:47');
INSERT INTO `sys_logininfor` VALUES ('311', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 17:03:53');
INSERT INTO `sys_logininfor` VALUES ('312', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-19 17:04:20');
INSERT INTO `sys_logininfor` VALUES ('313', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 17:04:40');
INSERT INTO `sys_logininfor` VALUES ('314', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 17:08:08');
INSERT INTO `sys_logininfor` VALUES ('315', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-19 17:09:23');
INSERT INTO `sys_logininfor` VALUES ('316', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 11:54:59');
INSERT INTO `sys_logininfor` VALUES ('317', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 11:56:44');
INSERT INTO `sys_logininfor` VALUES ('318', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 11:56:46');
INSERT INTO `sys_logininfor` VALUES ('319', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 11:57:50');
INSERT INTO `sys_logininfor` VALUES ('320', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-20 11:57:52');
INSERT INTO `sys_logininfor` VALUES ('321', 'student1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-12-20 11:57:57');
INSERT INTO `sys_logininfor` VALUES ('322', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 11:58:02');
INSERT INTO `sys_logininfor` VALUES ('323', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 11:59:25');
INSERT INTO `sys_logininfor` VALUES ('324', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 11:59:31');
INSERT INTO `sys_logininfor` VALUES ('325', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:00:37');
INSERT INTO `sys_logininfor` VALUES ('326', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:00:39');
INSERT INTO `sys_logininfor` VALUES ('327', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:05:36');
INSERT INTO `sys_logininfor` VALUES ('328', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:05:41');
INSERT INTO `sys_logininfor` VALUES ('329', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:05:45');
INSERT INTO `sys_logininfor` VALUES ('330', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:05:47');
INSERT INTO `sys_logininfor` VALUES ('331', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:09:34');
INSERT INTO `sys_logininfor` VALUES ('332', 'fenale', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-12-20 12:09:38');
INSERT INTO `sys_logininfor` VALUES ('333', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:09:40');
INSERT INTO `sys_logininfor` VALUES ('334', 'female', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:10:33');
INSERT INTO `sys_logininfor` VALUES ('335', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:10:37');
INSERT INTO `sys_logininfor` VALUES ('336', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:11:10');
INSERT INTO `sys_logininfor` VALUES ('337', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:11:12');
INSERT INTO `sys_logininfor` VALUES ('338', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:11:25');
INSERT INTO `sys_logininfor` VALUES ('339', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:11:29');
INSERT INTO `sys_logininfor` VALUES ('340', 'student2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-20 12:12:32');
INSERT INTO `sys_logininfor` VALUES ('341', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-20 12:12:33');

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
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', 'fa fa-user-o', 'admin', '2020-12-03 14:10:39', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', 'fa fa-user-secret', 'admin', '2020-12-03 14:10:39', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', 'fa fa-th-list', 'admin', '2020-12-03 14:10:39', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', 'fa fa-outdent', 'admin', '2020-12-03 14:10:39', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2020-12-03 14:10:39', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', 'fa fa-sun-o', 'admin', '2020-12-03 14:10:39', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', 'menuItem', 'C', '0', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2020-12-03 14:10:39', 'admin', '2020-12-20 12:09:29', '通知公告菜单');
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
  `notice_content` text COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2020-12-03 14:10:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2020-12-03 14:10:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('3', '测试在哪显示', '1', '<p>hello world</p>', '0', 'admin', '2020-12-07 15:20:15', '', null, null);
INSERT INTO `sys_notice` VALUES ('4', '测试在哪显示啊哈哈哈', '2', '<p>测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈测试在哪显示啊哈哈哈<br></p>', '0', 'admin', '2020-12-07 15:21:09', '', null, null);
INSERT INTO `sys_notice` VALUES ('5', '哈哈哈哈哈哈', '1', '<p><img src=\"http://localhost:8980/profile/upload/2020/12/14/3aa13af2-fdfd-4d4d-bbf5-89c85b86979c.jpg\" data-filename=\"/profile/upload/2020/12/14/3aa13af2-fdfd-4d4d-bbf5-89c85b86979c.jpg\" style=\"width: 690px;\"><br></p>', '0', 'admin', '2020-12-14 13:36:04', '', null, null);
INSERT INTO `sys_notice` VALUES ('6', '反倒是不包含地方', '2', '<p>手动阀奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥</p>', '0', 'admin', '2020-12-14 13:43:57', '', null, null);
INSERT INTO `sys_notice` VALUES ('7', '百度文章摘抄', '1', '<p style=\"margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">据国家民族事务委员会官网12月14日消息：日前，中共中央决定：巴特尔同志不再兼任国家民族事务委员会党组书记职务，陈小江同志任国家民族事务委员会党组书记。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">巴特尔，蒙古族，1955年2月生，辽宁康平人，1981年12月加入中国共产党，1973年1月参加工作，中央党校研究生学历，经济学硕士。</span></p><div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; text-align: start;\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics2.baidu.com/feed/35a85edf8db1cb13f81373806a5eeb4992584b39.jpeg?token=0461faa3614e953ec512e2d1100e545a&amp;s=ACC4854E461E35DC1374E53A03003053\" data-loaded=\"0\" style=\"width: 600px; display: block;\"></div><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p bjh-text-align-center\">资料图</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">他曾长期任职内蒙古，先后担任乌海市委书记，自治区党委常委、纪委书记等职，2008年任内蒙古自治区党委副书记、自治区政府代主席，次年任主席。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2016年，巴特尔调任国家民族事务委员会主任、党组书记，中央统战部副部长，2018年任十三届全国政协副主席。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">陈小江生于1962年6月，1984年从武汉水利电力学院毕业后进入中国电力报社，后任中国水利报社总编室主任、中国水利报社总编辑（副局级）等职，1995年出任中国水利报社社长兼总编辑，1996年任中国水利报社社长、党委书记。</span></p><div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; text-align: start;\"><img class=\"normal\" width=\"500px\" data-loadfunc=\"0\" src=\"https://pics0.baidu.com/feed/96dda144ad3459827a3de877bdfe8caacaef84b6.jpeg?token=3ca8e0b028f179a9bc75b9387c6749be&amp;s=FB28B1441F40204D44C28A880300F08F\" data-loaded=\"0\" style=\"display: block; margin: 0px auto;\"></div><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p bjh-text-align-center\">资料图</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1998年，陈小江任水利部直属机关党委常务副书记，2000年卸任中国水利报社社长、党委书记，继续担任水利部直属机关党委常务副书记，其间，于2001年至2004年挂职任甘肃省政府副秘书长、办公厅主任。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2008年，陈小江任水利部办公厅主任，2009年1月任水利部党组成员兼办公厅主任。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2011年，陈小江任黄河水利委员会主任、党组书记，任职4年，于2015年调任中央纪委宣传部部长（副部长级）。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2016年，陈小江调任辽宁省委常委、省纪委书记，1年后，2017年4月调任监察部副部长，同年10月任中央纪委副书记，监察部副部长，2018年任中央纪委副书记、国家监委副主任，至此番调整。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">巴特尔简历</span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">巴特尔，男，蒙古族，1955年2月生，辽宁康平人，1981年12月加入中国共产党，1973年1月参加工作，中央党校研究生学历，经济学硕士。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1973—1978年 内蒙古自治区鄂温克旗乌兰牧骑工作</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1978—1980年 海拉尔蒙古族师范学校蒙文大专班学习</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1980—1983年 内蒙古自治区呼伦贝尔盟党校教师(其间：1982.02-1983.07在内蒙古党校师资班学习)</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1983—1984年 共青团内蒙古自治区呼伦贝尔盟委员会书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1984—1986年 共青团内蒙古自治区委员会副书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1986—1992年 共青团内蒙古自治区委员会书记(其间：1988.02—1988.07在中央党校中青年干部培训班学习;1989.11—1990.11在日本国海外技术者研修协会东京研修中心学习经济管理;1991.04—1992.04挂职任北京市朝阳区区长助理)</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1992—1994年 内蒙古自治区乌海市委副书记(正厅级)</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1994—1994年 内蒙古自治区乌海市委书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1994—1998年 内蒙古自治区乌海市委书记、市长</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1998—1999年 内蒙古自治区乌海市委书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">（1995—1998年 在复旦大学经济学院政治经济学专业研究生课程进修班学习，获经济学硕士学位）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1999—1999年 内蒙古自治区乌海市委书记、市人大常委会主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1999—2001年 内蒙古自治区党委常委、自治区纪律检查委员会书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2001—2008年 内蒙古自治区党委副书记、自治区纪律检查委员会书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2008—2009年 内蒙古自治区党委副书记、自治区政府代主席</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2009—2016年 内蒙古自治区党委副书记、自治区政府主席、党组书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">（2006—2009年 在中央党校省部级干部在职研究生班政治学专业学习）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2016—2018年 国家民族事务委员会主任、党组书记，中央统战部副部长</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2018— 十三届全国政协副主席，中央统战部副部长，国家民族事务委员会党组书记、主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2020年12月不再兼任国家民族事务委员会党组书记<span class=\"bjh-br\"></span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">中共第十五届中央候补委员，十八届、十九届中央委员。中共第十六届、十七届中央纪委委员。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">第十三届全国政协副主席。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size: 18px; font-weight: 700;\">陈小江简历</span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">陈小江，男，汉族，1962年6月生，浙江龙游人，1984年8月参加工作，1983年1月入党，武汉水利电力学院电力工程系电力系统及其自动化专业毕业，大学学历，高级编辑。<span class=\"bjh-br\"></span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1980.09—1984.08 武汉水利电力学院电力工程系电力系统及其自动化专业学习<span class=\"bjh-br\"></span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1984.08—1986.12 中国电力报社编辑</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1986.12—1989.08 中国水利电力报社电力室编辑、副主任，总编室副主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1989.08—1993.08 中国水利报社总编室主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1993.08—1995.05 中国水利报社总编辑（副局级）（其间：1993.11—1994.01水利部第一期青干班学习）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1995.05—1996.04 中国水利报社社长兼总编辑</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1996.04—1998.09 中国水利报社社长、党委书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">1998.09—2000.03 水利部直属机关党委常务副书记，中国水利报社社长、党委书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2000.03—2008.03 水利部直属机关党委常务副书记（其间：2001.11—2004.03挂职任甘肃省政府副秘书长、办公厅主任〈2003.02兼〉）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2008.03—2009.01 水利部办公厅主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2009.01—2011.03 水利部党组成员兼办公厅主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2011.03—2015.07 黄河水利委员会主任、党组书记（其间：2015.03—2015.06中央党校省部级干部中国特色社会主义理论体系高级研修班学习）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2015.07—2016.04 中央纪委宣传部部长（副部长级）</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2016.04—2017.04 辽宁省委常委、省纪委书记</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2017.04—2017.10 监察部副部长</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2017.10—2018.03 中央纪委副书记，监察部副部长</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2018.03— 中央纪委副书记，国家监委副主任</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">2020年12月任国家民族事务委员会党组书记。<span class=\"bjh-br\"></span></span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\"><span class=\"bjh-p\">第十九届中央纪委委员、常委、副书记。</span></p>', '0', 'admin', '2020-12-14 14:00:13', '', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

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
INSERT INTO `sys_oper_log` VALUES ('125', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"哈哈哈哈哈哈\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p><img src=\\\"http://localhost:8980/profile/upload/2020/12/14/3aa13af2-fdfd-4d4d-bbf5-89c85b86979c.jpg\\\" data-filename=\\\"/profile/upload/2020/12/14/3aa13af2-fdfd-4d4d-bbf5-89c85b86979c.jpg\\\" style=\\\"width: 690px;\\\"><br></p>\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-14 13:36:04');
INSERT INTO `sys_oper_log` VALUES ('126', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"反倒是不包含地方\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"<p>手动阀奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥奥</p>\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-14 13:43:57');
INSERT INTO `sys_oper_log` VALUES ('127', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"百度文章摘抄\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p style=\\\"margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">据国家民族事务委员会官网12月14日消息：日前，中共中央决定：巴特尔同志不再兼任国家民族事务委员会党组书记职务，陈小江同志任国家民族事务委员会党组书记。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">巴特尔，蒙古族，1955年2月生，辽宁康平人，1981年12月加入中国共产党，1973年1月参加工作，中央党校研究生学历，经济学硕士。</span></p><div class=\\\"img-container\\\" style=\\\"margin-top: 30px; font-family: arial; font-size: 12px; text-align: start;\\\"><img class=\\\"large\\\" data-loadfunc=\\\"0\\\" src=\\\"https://pics2.baidu.com/feed/35a85edf8db1cb13f81373806a5eeb4992584b39.jpeg?token=0461faa3614e953ec512e2d1100e545a&amp;s=ACC4854E461E35DC1374E53A03003053\\\" data-loaded=\\\"0\\\" style=\\\"width: 600px; display: block;\\\"></div><p style=\\\"margin-top: 26px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p bjh-text-align-center\\\">资料图</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">他曾长期任职内蒙古，先后担任乌海市委书记，自治区党委常委、纪委书记等职，2008年任内蒙古自治区党委副书记、自治区政府代主席，次年任主席。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">2016年，巴特尔调任国家民族事务委员会主任、党组书记，中央统战部副部长，2018年任十三届全国政协副主席。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">陈小江生于1962年6月，1984年从武汉水利电力学院毕业后进入中国电力报社，后任中国水利报社总编室主任、中国水利报社总编辑（副局级）等职，1995年出任中国水利报社社长兼总编辑，1996年任中国水利报社', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\r\n### The error may exist in file [D:\\Code\\OtherWork\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\SysNoticeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysNoticeMapper.insertNotice-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_notice (     notice_title,       notice_type,       notice_content,       status,             create_by,      create_time    )values(     ?,       ?,       ?,       ?,             ?,      sysdate()   )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1\n; Data truncation: Data too long for column \'notice_content\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'notice_content\' at row 1', '2020-12-14 13:59:27');
INSERT INTO `sys_oper_log` VALUES ('128', '通知公告', '1', 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', '1', 'admin', '大一', '/system/notice/add', '127.0.0.1', '内网IP', '{\"noticeTitle\":[\"百度文章摘抄\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"<p style=\\\"margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">据国家民族事务委员会官网12月14日消息：日前，中共中央决定：巴特尔同志不再兼任国家民族事务委员会党组书记职务，陈小江同志任国家民族事务委员会党组书记。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">巴特尔，蒙古族，1955年2月生，辽宁康平人，1981年12月加入中国共产党，1973年1月参加工作，中央党校研究生学历，经济学硕士。</span></p><div class=\\\"img-container\\\" style=\\\"margin-top: 30px; font-family: arial; font-size: 12px; text-align: start;\\\"><img class=\\\"large\\\" data-loadfunc=\\\"0\\\" src=\\\"https://pics2.baidu.com/feed/35a85edf8db1cb13f81373806a5eeb4992584b39.jpeg?token=0461faa3614e953ec512e2d1100e545a&amp;s=ACC4854E461E35DC1374E53A03003053\\\" data-loaded=\\\"0\\\" style=\\\"width: 600px; display: block;\\\"></div><p style=\\\"margin-top: 26px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p bjh-text-align-center\\\">资料图</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">他曾长期任职内蒙古，先后担任乌海市委书记，自治区党委常委、纪委书记等职，2008年任内蒙古自治区党委副书记、自治区政府代主席，次年任主席。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">2016年，巴特尔调任国家民族事务委员会主任、党组书记，中央统战部副部长，2018年任十三届全国政协副主席。</span></p><p style=\\\"margin-top: 22px; margin-bottom: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\\\"><span class=\\\"bjh-p\\\">陈小江生于1962年6月，1984年从武汉水利电力学院毕业后进入中国电力报社，后任中国水利报社总编室主任、中国水利报社总编辑（副局级）等职，1995年出任中国水利报社社长兼总编辑，1996年任中国水利报社', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-14 14:00:13');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/104', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 12:55:58');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1020', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 12:56:04');
INSERT INTO `sys_oper_log` VALUES ('131', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', 'null', '1', '不允许操作超级管理员角色', '2020-12-19 12:56:18');
INSERT INTO `sys_oper_log` VALUES ('132', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:56:38');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1020', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:56:53');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1021', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:57:11');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1022', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:57:22');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1023', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:57:30');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1024', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:57:38');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/104', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 12:57:47');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/110', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 13:00:08');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1050', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 13:00:13');
INSERT INTO `sys_oper_log` VALUES ('141', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:00:28');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1050', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:00:41');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1051', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:00:47');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1052', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:00:53');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1053', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:00:59');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1054', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:01:10');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1055', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:01:17');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1056', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:01:22');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/110', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:01:28');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/114', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 13:02:19');
INSERT INTO `sys_oper_log` VALUES ('151', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,112,113\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:02:44');
INSERT INTO `sys_oper_log` VALUES ('152', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/114', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:02:59');
INSERT INTO `sys_oper_log` VALUES ('153', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/4', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:04');
INSERT INTO `sys_oper_log` VALUES ('154', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1057', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:15');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1058', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:20');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1059', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:25');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1060', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:31');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1061', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:37');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/115', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:42');
INSERT INTO `sys_oper_log` VALUES ('160', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/111', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:03:59');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-bullhorn\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:05:20');
INSERT INTO `sys_oper_log` VALUES ('162', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-server\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:05:35');
INSERT INTO `sys_oper_log` VALUES ('163', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"116\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"系统接口\"],\"url\":[\"/tool/swagger\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:swagger:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-gg\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:05:43');
INSERT INTO `sys_oper_log` VALUES ('164', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"113\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"缓存监控\"],\"url\":[\"/monitor/cache\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:cache:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-cube\"],\"visible\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:05:51');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/116', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:13:21');
INSERT INTO `sys_oper_log` VALUES ('166', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/3', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:13:25');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/112', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2020-12-19 13:13:47');
INSERT INTO `sys_oper_log` VALUES ('168', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:13:58');
INSERT INTO `sys_oper_log` VALUES ('169', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/113', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:11');
INSERT INTO `sys_oper_log` VALUES ('170', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/112', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:16');
INSERT INTO `sys_oper_log` VALUES ('171', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1049', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:27');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1048', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:33');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1047', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:38');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/109', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:43');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/2', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:14:47');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1043', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:15');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1044', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:22');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1039', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:30');
INSERT INTO `sys_oper_log` VALUES ('179', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1045', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:37');
INSERT INTO `sys_oper_log` VALUES ('180', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1040', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:48');
INSERT INTO `sys_oper_log` VALUES ('181', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1041', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:17:54');
INSERT INTO `sys_oper_log` VALUES ('182', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1042', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:18:00');
INSERT INTO `sys_oper_log` VALUES ('183', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/500', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:18:06');
INSERT INTO `sys_oper_log` VALUES ('184', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/1046', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:18:18');
INSERT INTO `sys_oper_log` VALUES ('185', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/501', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:18:24');
INSERT INTO `sys_oper_log` VALUES ('186', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '大一', '/system/menu/remove/108', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-19 13:18:29');
INSERT INTO `sys_oper_log` VALUES ('187', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,1076,1077,1081,1082\"]}', 'null', '1', '不允许操作超级管理员角色', '2020-12-20 12:04:50');
INSERT INTO `sys_oper_log` VALUES ('188', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '大一', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-bullhorn\"],\"visible\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-20 12:09:29');
INSERT INTO `sys_oper_log` VALUES ('189', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '大一', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"学生\"],\"roleKey\":[\"student\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1076,1084,1085\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-20 12:11:23');

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
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2020-12-03 14:10:39', 'admin', '2020-12-19 13:13:58', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '教师', 'system:score:*', '3', '1', '0', '0', 'admin', '2020-12-04 13:23:27', 'admin', '2020-12-13 08:16:34', '');
INSERT INTO `sys_role` VALUES ('4', '学生', 'student', '4', '1', '0', '0', 'admin', '2020-12-05 06:48:03', 'admin', '2020-12-20 12:11:23', '');

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
INSERT INTO `sys_role_menu` VALUES ('3', '1076');
INSERT INTO `sys_role_menu` VALUES ('3', '1078');
INSERT INTO `sys_role_menu` VALUES ('3', '1081');
INSERT INTO `sys_role_menu` VALUES ('3', '1082');
INSERT INTO `sys_role_menu` VALUES ('3', '1083');
INSERT INTO `sys_role_menu` VALUES ('4', '1076');
INSERT INTO `sys_role_menu` VALUES ('4', '1084');
INSERT INTO `sys_role_menu` VALUES ('4', '1085');

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
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '系统管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-12-20 20:12:34', '2020-12-03 14:10:38', 'admin', '2020-12-03 14:10:38', '', '2020-12-20 12:12:33', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2020-12-03 14:10:38', '2020-12-03 14:10:38', 'admin', '2020-12-03 14:10:38', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('3', null, 'male', '男老师', '00', '', '', '0', '', 'e9ea4f438fee5dab8e48f8d21baa1d61', '00693b', '0', '0', '127.0.0.1', '2020-12-04 21:29:46', null, 'admin', '2020-12-04 13:24:00', 'admin', '2020-12-04 15:55:12', '');
INSERT INTO `sys_user` VALUES ('4', null, 'female', '女老师', '00', '', '', '1', '', '61ec7e2bfb48c9f469ff09c946cfd459', 'f10a3d', '0', '0', '127.0.0.1', '2020-12-20 20:09:41', null, 'admin', '2020-12-05 06:20:34', '', '2020-12-20 12:09:40', null);
INSERT INTO `sys_user` VALUES ('5', '110', 'student1', '男学生', '00', '', '', '0', '', 'e2311e77e5fe2695c908aca54a9decb5', '3bfac4', '0', '0', '127.0.0.1', '2020-12-07 16:15:06', null, 'admin', '2020-12-05 06:49:36', 'admin', '2020-12-07 16:15:06', '');
INSERT INTO `sys_user` VALUES ('6', '110', 'student2', '女同学', '00', '', '', '1', '', '494510fc2458813babf786ce2809b314', '731520', '0', '0', '127.0.0.1', '2020-12-20 20:11:30', null, 'admin', '2020-12-05 07:55:29', 'admin', '2020-12-20 12:11:29', '');

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
INSERT INTO `sys_user_online` VALUES ('dfa7bbd1-bfbf-4d14-9966-cc892ace039c', 'admin', '大一', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-12-20 20:12:33', '2020-12-20 20:12:34', '1800000');

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
