package com.system.service;

import com.system.pojo.*;

import java.util.List;

public interface AdminService {

    List<ReportInfo> loadReportInfoData(ReportInfo reportInfo);

    List<ReportDetail> loadReportDetailData(String reportId);

    List<Leave> loadLeaveList() throws Exception;
    
    //分页获取
    List<ReportInfo> findReportInfoByPaging(int toPageNo, String createDate, Integer departmentId);
    
    int getReportInfoCount(String createDate, Integer departmentId);
    
    Boolean recostExpense();
    
}
