/*
 Navicat MySQL Data Transfer

 Source Server         : ouyang
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : attendance_system

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 11/10/2018 15:11:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department_code
-- ----------------------------
DROP TABLE IF EXISTS `department_code`;
CREATE TABLE `department_code`  (
  `DEPARTMENT_ID` int(11) NOT NULL COMMENT '部门代码',
  `DEPARTMENT_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`DEPARTMENT_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department_code
-- ----------------------------
INSERT INTO `department_code` VALUES (0, '管理员');
INSERT INTO `department_code` VALUES (1, '人事部');
INSERT INTO `department_code` VALUES (2, '技术部');

-- ----------------------------
-- Table structure for leave_record
-- ----------------------------
DROP TABLE IF EXISTS `leave_record`;
CREATE TABLE `leave_record`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录编号',
  `DEPARTMENT_ID` int(11) NULL DEFAULT NULL COMMENT '部门编号',
  `STAFF_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `HANIN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `LEAVE_START_TIME` datetime(0) NULL DEFAULT NULL COMMENT '假期开始时间',
  `LEAVE_END_TIME` datetime(0) NULL DEFAULT NULL COMMENT '假期结束时间',
  `APPLICATION_STATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请状态0.待审核1.通过2.不通过',
  `REASON` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假事由',
  `REPLY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批片语',
  `HANDLE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`RECORD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of leave_record
-- ----------------------------
INSERT INTO `leave_record` VALUES (18, 1, '1001', '2018-09-26 19:44:40', '2020-02-09 00:00:00', '2020-02-09 23:59:00', '0', '无', NULL, NULL);
INSERT INTO `leave_record` VALUES (19, 1, '1001', '2018-09-26 19:48:15', '2018-09-26 00:00:00', '2018-09-26 23:59:00', '0', '无', NULL, NULL);
INSERT INTO `leave_record` VALUES (20, 1, '1001', '2018-10-06 20:45:51', '2018-10-05 00:00:00', '2018-10-06 23:59:00', '0', '无', NULL, NULL);
INSERT INTO `leave_record` VALUES (21, 1, '1001', '2018-10-06 20:48:17', '2018-10-05 00:00:00', '2018-10-06 23:59:00', '1', '无', '批准', '2018-10-07 00:17:26');
INSERT INTO `leave_record` VALUES (22, 1, '1001', '2018-10-11 10:01:43', '2018-10-05 00:00:00', '2018-10-06 23:59:00', '0', '无', NULL, NULL);
INSERT INTO `leave_record` VALUES (23, 1, '1001', '2018-10-11 10:01:51', '2018-10-05 00:00:00', '2018-10-06 23:59:00', '0', '无', NULL, NULL);
INSERT INTO `leave_record` VALUES (24, 1, '1001', '2018-10-11 13:48:20', '2018-10-17 09:00:00', '2018-10-23 21:00:00', '1', '无', '', '2018-10-11 13:50:07');

-- ----------------------------
-- Table structure for report_detail
-- ----------------------------
DROP TABLE IF EXISTS `report_detail`;
CREATE TABLE `report_detail`  (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPORT_ID` int(11) NULL DEFAULT NULL,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `DEPARTMENT_ID` int(11) NULL DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STAFF_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STAFF_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DAY_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当天迟到人次统计',
  `DAY_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当天早退人次统计',
  `MONTH_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当月迟到人次统计',
  `MONTH_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当月早退人次统计',
  `YEAR_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当年迟到人次统计',
  `YEAR_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当年迟到人次统计',
  PRIMARY KEY (`DETAIL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of report_detail
-- ----------------------------
INSERT INTO `report_detail` VALUES (25, 9, '2018-10-02 00:00:00', 2, '技术部', '2000', 'manager2', 0, 0, 0, 0, 0, 0);
INSERT INTO `report_detail` VALUES (26, 9, '2018-10-02 00:00:00', 2, '技术部', '2001', 'staff2_1', 0, 0, 0, 0, 0, 0);
INSERT INTO `report_detail` VALUES (27, 9, '2018-10-02 00:00:00', 2, '技术部', '2002', 'staff2_2', 0, 0, 0, 0, 0, 0);
INSERT INTO `report_detail` VALUES (28, 10, '2018-10-02 00:00:00', 1, '人事部', '1000', 'manager1', 0, 0, 0, 0, 0, 0);
INSERT INTO `report_detail` VALUES (29, 10, '2018-10-02 00:00:00', 1, '人事部', '1001', 'staff1_1', 1, 0, 1, 0, 1, 6);
INSERT INTO `report_detail` VALUES (30, 10, '2018-10-02 00:00:00', 1, '人事部', '1002', 'staff1_2', 1, 0, 1, 0, 2, 2);
INSERT INTO `report_detail` VALUES (31, 10, '2018-10-02 00:00:00', 1, '人事部', '1003', 'staff1_3', 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for report_info
-- ----------------------------
DROP TABLE IF EXISTS `report_info`;
CREATE TABLE `report_info`  (
  `REPORT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL,
  `DEPARTMENT_ID` int(11) NULL DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DAY_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当天迟到人次统计',
  `DAY_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当天早退人次统计',
  `MONTH_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当月迟到人次统计',
  `MONTH_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当月早退人次统计',
  `YEAR_LATE_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当年迟到人次统计',
  `YEAR_EARLY_COUNT` int(10) NULL DEFAULT NULL COMMENT '部门当年迟到人次统计',
  PRIMARY KEY (`REPORT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of report_info
-- ----------------------------
INSERT INTO `report_info` VALUES (9, '2018-10-02 00:00:00', 2, '技术部', 0, 0, 0, 0, 0, 0);
INSERT INTO `report_info` VALUES (10, '2018-10-02 00:00:00', 1, '人事部', 2, 0, 2, 0, 3, 8);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `ROLE_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PERMISSIONS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (0, 'admin', '1.用户增加、查询、修改、删除2.签到、签退、请假数据查询3.Excel导出');
INSERT INTO `role` VALUES (1, 'manager', '1.编辑个人详细信息2.签到、签退3.请假审核4.数据查询');
INSERT INTO `role` VALUES (2, 'staff', '1.编辑个人详细信息2.签到、签退3数据查询4.请假申请');

-- ----------------------------
-- Table structure for sign_record
-- ----------------------------
DROP TABLE IF EXISTS `sign_record`;
CREATE TABLE `sign_record`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '签到记录编号',
  `DEPARTMENT_ID` int(11) NULL DEFAULT NULL COMMENT '部门编号',
  `STAFF_ID` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `SIGN_IN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '签到时间',
  `SIGN_IN_STATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1-迟到 0-正常 null-未签到',
  `SIGN_OUT_TIME` datetime(0) NULL DEFAULT NULL COMMENT '签退时间',
  `SIGN_OUT_STATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1-早退 0-正常 null-未签退',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`RECORD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sign_record
-- ----------------------------
INSERT INTO `sign_record` VALUES (1, 1, '1001', '2018-09-19 09:28:15', '0', '2018-09-19 17:28:42', '1', '2018-09-19 17:28:55');
INSERT INTO `sign_record` VALUES (2, 1, '1002', '2018-09-20 09:28:15', '0', '2018-09-20 17:28:42', '1', '2018-09-20 17:28:55');
INSERT INTO `sign_record` VALUES (3, 1, '1001', '2018-09-21 09:28:15', '0', '2018-09-21 17:28:42', '1', '2018-09-21 17:28:55');
INSERT INTO `sign_record` VALUES (4, 1, '1001', '2018-09-22 21:27:33', '0', '2018-09-22 17:28:42', '1', '2018-09-22 17:28:55');
INSERT INTO `sign_record` VALUES (5, 1, '1001', '2018-09-23 21:27:33', '0', '2018-09-23 17:28:42', '1', '2018-09-23 17:28:55');
INSERT INTO `sign_record` VALUES (6, 1, '1001', '2018-09-24 21:27:33', '0', '2018-09-24 17:28:42', '1', '2018-09-24 17:28:55');
INSERT INTO `sign_record` VALUES (7, 1, '1001', '2018-09-25 21:27:33', '0', '2018-09-25 17:28:42', '1', '2018-09-25 17:28:55');
INSERT INTO `sign_record` VALUES (8, 1, '1001', '2018-09-26 21:27:33', '0', '2018-09-26 18:48:09', '0', '2018-09-26 18:48:09');
INSERT INTO `sign_record` VALUES (9, 1, '1002', '2018-09-26 21:27:33', '1', '2018-09-26 16:12:30', '1', '2018-09-26 16:12:30');
INSERT INTO `sign_record` VALUES (10, 1, '1001', '2018-10-02 21:27:33', '1', '2018-10-02 21:34:17', '0', '2018-10-02 21:34:17');
INSERT INTO `sign_record` VALUES (11, 1, '1002', '2018-10-02 21:55:14', '1', '2018-10-02 21:55:21', '0', '2018-10-02 21:55:28');
INSERT INTO `sign_record` VALUES (12, 1, '1001', '2018-10-11 13:47:54', '1', '2018-10-11 13:47:58', '1', '2018-10-11 13:47:58');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `STAFF_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `STAFF_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `SEX` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `DEPARTMENT_ID` int(11) NULL DEFAULT NULL COMMENT '部门编号',
  `ROLE` int(11) NULL DEFAULT NULL COMMENT '权限',
  `GRADE` date NULL DEFAULT NULL COMMENT '入职日期',
  `BIRTHDAY` date NULL DEFAULT NULL COMMENT '出生日期',
  `TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `EMAIL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `HOBBY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`STAFF_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1000', 'manager1', '男', 1, 1, '2018-08-01', NULL, NULL, NULL, NULL, '123');
INSERT INTO `staff` VALUES ('10000', 'admin', '男', 0, 0, '2018-08-01', NULL, '', NULL, '', '123');
INSERT INTO `staff` VALUES ('1001', 'staff1_1', '女', 1, 2, '2018-09-01', '1970-12-19', '18717859002', '123@163.com', '无', '123');
INSERT INTO `staff` VALUES ('1002', 'staff1_2', '女', 1, 2, '2018-09-01', NULL, NULL, NULL, NULL, '123');
INSERT INTO `staff` VALUES ('1003', 'staff1_3', '男', 2, 2, '2018-10-11', '2018-10-17', '18717859002', NULL, NULL, '123');
INSERT INTO `staff` VALUES ('2000', 'manager2', '男', 2, 1, '2018-08-01', NULL, NULL, NULL, NULL, '123');
INSERT INTO `staff` VALUES ('2001', 'staff2_1', '男', 2, 2, '2018-09-01', NULL, NULL, NULL, NULL, '123');
INSERT INTO `staff` VALUES ('2002', 'staff2_2', '女', 2, 2, '2018-09-01', NULL, NULL, NULL, NULL, '123');

-- ----------------------------
-- Procedure structure for SIGN_REPORT_PROC
-- ----------------------------
DROP PROCEDURE IF EXISTS `SIGN_REPORT_PROC`;
delimiter ;;
CREATE PROCEDURE `SIGN_REPORT_PROC`(IN `PARAM_DATE` varchar(20),IN `DEPARTMENT` int)
BEGIN
	/*声明变量*/
	DECLARE V_DEPARTMENT INT;
	DECLARE V_DEPARTMENT_NAME CHAR(20);
	DECLARE V_STAFF_ID CHAR(20);
	DECLARE V_STAFF_NAME CHAR(20);
	DECLARE V_REPORT_ID INT;
	DECLARE V_DAY_LATE_COUNT, V_MONTH_LATE_COUNT, V_YEAR_LATE_COUNT INT DEFAULT 0;
	DECLARE V_DAY_EARLY_COUNT,V_MONTH_EARLY_COUNT, V_YEAR_EARLY_COUNT INT DEFAULT 0;
	
	
	/*声明游标*/
	DECLARE CURSOR_STAFF_ID CURSOR FOR SELECT STAFF_ID, STAFF_NAME FROM STAFF 
	WHERE DEPARTMENT_ID = DEPARTMENT;
	DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET V_STAFF_ID = NULL; 
	/*创建临时表*/  
	DROP TABLE IF EXISTS TEMP_REPORT;  
	CREATE TEMPORARY TABLE TEMP_REPORT
		(  
			RECORD_ID INT(11) NOT NULL,
			DEPARTMENT_ID INT(11), 
			STAFF_ID INT(11),
			SIGN_IN_TIME DATETIME,
			SIGN_IN_STATE VARCHAR(20),
			SIGN_OUT_TIME DATETIME,  
			SIGN_OUT_STATE VARCHAR(20),
			UPDATE_TIME DATETIME,
			PRIMARY KEY (RECORD_ID)  
		)ENGINE=InnoDB DEFAULT CHARSET=utf8; 
		
		INSERT INTO TEMP_REPORT 
		SELECT * FROM SIGN_RECORD 
		WHERE DEPARTMENT_ID = DEPARTMENT 
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m-%d') <= PARAM_DATE;
		
	/*按日统计*/
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m-%d') = PARAM_DATE AND SIGN_IN_STATE= '1' INTO V_DAY_LATE_COUNT;
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m-%d') = PARAM_DATE AND SIGN_OUT_STATE= '1' INTO V_DAY_EARLY_COUNT;
	
	/*按月统计*/		
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m') = SUBSTRING(PARAM_DATE,1,7) AND SIGN_IN_STATE= '1' 
		INTO V_MONTH_LATE_COUNT;
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m') = SUBSTRING(PARAM_DATE,1,7) AND SIGN_OUT_STATE= '1' 
		INTO V_MONTH_EARLY_COUNT;
		
	/*按年统计*/		
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y') = SUBSTRING(PARAM_DATE,1,4) AND SIGN_IN_STATE= '1' 
		INTO V_YEAR_LATE_COUNT;
	SELECT COUNT(*) FROM TEMP_REPORT WHERE (RECORD_ID IS NOT NULL AND RECORD_ID != '') 
		AND DATE_FORMAT(UPDATE_TIME,'%Y') = SUBSTRING(PARAM_DATE,1,4) AND SIGN_OUT_STATE= '1' 
		INTO V_YEAR_EARLY_COUNT;
	 
	/* 统计部门代码翻译 */
	SELECT DEPARTMENT_NAME FROM DEPARTMENT_CODE WHERE DEPARTMENT_ID=DEPARTMENT INTO V_DEPARTMENT_NAME;
	/* 保存统计数据 */
	INSERT INTO REPORT_INFO(CREATE_DATE, DEPARTMENT_ID, DEPARTMENT_NAME, DAY_LATE_COUNT, DAY_EARLY_COUNT, MONTH_LATE_COUNT, MONTH_EARLY_COUNT, YEAR_LATE_COUNT, YEAR_EARLY_COUNT) 
	VALUES (PARAM_DATE, DEPARTMENT, V_DEPARTMENT_NAME, V_DAY_LATE_COUNT, V_DAY_EARLY_COUNT, V_MONTH_LATE_COUNT, V_MONTH_EARLY_COUNT, V_YEAR_LATE_COUNT, V_YEAR_EARLY_COUNT);
		
		/* 获取自增的REPORT_ID */
	SET V_REPORT_ID = LAST_INSERT_ID(); 
	
	OPEN CURSOR_STAFF_ID;
	FETCH CURSOR_STAFF_ID INTO V_STAFF_ID, V_STAFF_NAME;
	WHILE (V_STAFF_ID IS NOT NULL)
	DO
	  /*按日统计*/
	  SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m-%d') = PARAM_DATE AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_IN_STATE= '1' INTO V_DAY_LATE_COUNT;
		SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m-%d') = PARAM_DATE AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_OUT_STATE= '1' INTO V_DAY_EARLY_COUNT;
		
		/*按月统计*/
	  SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m') = SUBSTRING(PARAM_DATE,1,7) AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_IN_STATE= '1' INTO V_MONTH_LATE_COUNT;
		SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y-%m') = SUBSTRING(PARAM_DATE,1,7) AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_OUT_STATE= '1' INTO V_MONTH_EARLY_COUNT;
		
		/*按年统计*/
	  SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y') = SUBSTRING(PARAM_DATE,1,4) AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_IN_STATE= '1' INTO V_YEAR_LATE_COUNT;
		SELECT COUNT(*) FROM TEMP_REPORT WHERE STAFF_ID=V_STAFF_ID  
		AND DATE_FORMAT(UPDATE_TIME,'%Y') = SUBSTRING(PARAM_DATE,1,4) AND DEPARTMENT_ID=DEPARTMENT 
		AND SIGN_OUT_STATE= '1' INTO V_YEAR_EARLY_COUNT;
		
		INSERT INTO REPORT_DETAIL(REPORT_ID, CREATE_DATE, DEPARTMENT_ID, DEPARTMENT_NAME, STAFF_ID,STAFF_NAME, 
		DAY_LATE_COUNT, DAY_EARLY_COUNT, MONTH_LATE_COUNT, MONTH_EARLY_COUNT, YEAR_LATE_COUNT, YEAR_EARLY_COUNT) 
		VALUES (V_REPORT_ID, PARAM_DATE, DEPARTMENT, V_DEPARTMENT_NAME, V_STAFF_ID, V_STAFF_NAME, V_DAY_LATE_COUNT, V_DAY_EARLY_COUNT, V_MONTH_LATE_COUNT, V_MONTH_EARLY_COUNT, V_YEAR_LATE_COUNT, V_YEAR_EARLY_COUNT);
		FETCH CURSOR_STAFF_ID INTO V_STAFF_ID, V_STAFF_NAME;
  END WHILE;
  CLOSE CURSOR_STAFF_ID;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
