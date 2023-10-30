package com.system.dao;

import com.system.pojo.ReportInfo;
import java.util.List;
import java.util.Map;

public interface ReportInfoMapper {
	
	//分页查询
    List<ReportInfo> findByPaging(Map<String,Object> paramMap);
    
    int getReportInfoCount(Map<String,Object> paramMap);
    
    int deleteByPrimaryKey(Integer reportId);

    int insert(ReportInfo record);

    int insertSelective(ReportInfo record);

    ReportInfo selectByPrimaryKey(Integer reportId);

    int updateByPrimaryKeySelective(ReportInfo record);

    int updateByPrimaryKey(ReportInfo record);

    List<ReportInfo> selectReportInfoDataAll(Map<String,Object> paramMap);

    List<ReportInfo> selectReportInfoData(Map<String,Object> paramMap);

    void executeReportProc(Map<String,Object> paramMap);
    
}