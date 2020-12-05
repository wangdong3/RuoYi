package com.ruoyi.system.task;

import com.ruoyi.common.constant.SexConstants;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.TExam;
import com.ruoyi.system.domain.TScore;
import com.ruoyi.system.service.ISysDictDataService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITExamService;
import com.ruoyi.system.service.ITScoreService;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Administrator on 2020/12/5.
 */
@Component("generateStudentsScores")
public class GenerateStudentsScores {

    @Autowired
    private ISysDictDataService sysDictDataService;

    @Autowired
    private ISysUserService sysUserService;

    @Autowired
    private ITScoreService scoreService;

    @Autowired
    private ITExamService examService;

    /**
     * 每年的第一天生成所有的学生成绩数据
     * 根据字典表中配置的学期数生成对应的数据，即配了几个学期则生成几条数据,
     */
//    @Scheduled(cron = "1 0 0 1 1 ? *")
    @Scheduled(cron = "0 0/1 * * * ? ")
    @Transactional(rollbackFor = Exception.class)
    private void generateStudentsScoreList(){
        //查询学生角色的用户
        List<SysUser> sysUserList = sysUserService.selectStudentsUser();
        if(CollectionUtils.isEmpty(sysUserList)){
            return;
        }
        SysDictData sysDictData = new SysDictData();
        sysDictData.setDictType("sys_semester");
        //查询字典中配置了几个学期
        List<SysDictData> sysDictDataList = sysDictDataService.selectDictDataList(sysDictData);
        //查询出所有的体测项目
        List<TExam> examList = examService.selectTExamList(new TExam());
        if(CollectionUtils.isEmpty(examList)){
            return;
        }
        //男生体测项目
        List<TExam> maleExamList = examList.stream().filter(e-> StringUtils.equalsAny(e.getSex(), SexConstants.MALE,SexConstants.UNKNOWN)).collect(Collectors.toList());
        //女生体测项目
        List<TExam> femaleExamList = examList.stream().filter(e-> StringUtils.equalsAny(e.getSex(),SexConstants.FEMALE,SexConstants.UNKNOWN)).collect(Collectors.toList());
        for(SysUser sysUser:sysUserList){
            //男
            if(StringUtils.equals(sysUser.getSex(),SexConstants.MALE)){
                for(TExam exam:maleExamList){
                    TScore tScore = new TScore();
                    tScore.setExamId(exam.getExamId());
                    tScore.setExamName(exam.getExamName());
                    tScore.setUserId(sysUser.getUserId());
                    tScore.setUserName(sysUser.getLoginName());
                    tScore.setSchoolYear(DateFormatUtils.format(new Date(),"yyyy"));
                    tScore.setUpdateTime(DateUtils.getNowDate());
                    tScore.setUpdateBy("系统生成");
                    tScore.setCreateTime(DateUtils.getNowDate());
                    tScore.setCreateBy("系统生成");
                    for(int i = 0;i < sysDictDataList.size();i++){
                        tScore.setSemester(String.valueOf(i+1));
                        scoreService.insertTScoreWithTimeAndUser(tScore);
                    }
                }
            }
            //女
            if(StringUtils.equals(sysUser.getSex(),SexConstants.FEMALE)){
                for(TExam exam:femaleExamList){
                    TScore tScore = new TScore();
                    tScore.setExamId(exam.getExamId());
                    tScore.setExamName(exam.getExamName());
                    tScore.setUserId(sysUser.getUserId());
                    tScore.setUserName(sysUser.getLoginName());
                    tScore.setSchoolYear(DateFormatUtils.format(new Date(),"yyyy"));
                    tScore.setUpdateTime(DateUtils.getNowDate());
                    tScore.setUpdateBy("系统生成");
                    tScore.setCreateTime(DateUtils.getNowDate());
                    tScore.setCreateBy("系统生成");
                    for(int i = 0;i < sysDictDataList.size();i++){
                        tScore.setSemester(String.valueOf(i+1));
                        scoreService.insertTScoreWithTimeAndUser(tScore);
                    }
                }
            }
        }
    }
}
