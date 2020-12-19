package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.system.domain.TExamTeacher;
import com.ruoyi.system.mapper.SysUserMapper;
import com.ruoyi.system.mapper.TExamTeacherMapper;
import com.ruoyi.system.service.ITExamTeacherService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 考试类别教师关系Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Service
public class TExamTeacherServiceImpl implements ITExamTeacherService 
{
    @Autowired
    private TExamTeacherMapper tExamTeacherMapper;

    @Autowired
    private SysUserMapper sysUserMapper;

    /**
     * 查询考试类别教师关系
     * 
     * @param connectId 考试类别教师关系ID
     * @return 考试类别教师关系
     */
    @Override
    public TExamTeacher selectTExamTeacherById(Long connectId)
    {
        return tExamTeacherMapper.selectTExamTeacherById(connectId);
    }

    /**
     * 查询考试类别教师关系列表
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 考试类别教师关系
     */
    @Override
    public List<TExamTeacher> selectTExamTeacherList(TExamTeacher tExamTeacher)
    {
        return tExamTeacherMapper.selectTExamTeacherList(tExamTeacher);
    }

    /**
     * 新增考试类别教师关系
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 结果
     */
    @Override
    public int insertTExamTeacher(TExamTeacher tExamTeacher)
    {
        tExamTeacher.setCreateTime(DateUtils.getNowDate());
        return tExamTeacherMapper.insertTExamTeacher(tExamTeacher);
    }

    /**
     * 修改考试类别教师关系
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 结果
     */
    @Override
    public int updateTExamTeacher(TExamTeacher tExamTeacher)
    {
        tExamTeacher.setUpdateTime(DateUtils.getNowDate());
        return tExamTeacherMapper.updateTExamTeacher(tExamTeacher);
    }

    /**
     * 删除考试类别教师关系对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTExamTeacherByIds(String ids)
    {
        return tExamTeacherMapper.deleteTExamTeacherByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除考试类别教师关系信息
     * 
     * @param connectId 考试类别教师关系ID
     * @return 结果
     */
    @Override
    public int deleteTExamTeacherById(Long connectId)
    {
        return tExamTeacherMapper.deleteTExamTeacherById(connectId);
    }

    @Override
    public List<SysUser> selectTExamTeachersWithSelected(Long examId) {
        TExamTeacher tExamTeacher = new TExamTeacher();
        tExamTeacher.setExamId(examId);
        List<SysUser> allExamTeachers = sysUserMapper.selectUsersByTeacherRole();
        List<TExamTeacher> examTeacherList = tExamTeacherMapper.selectTExamTeacherList(tExamTeacher);
        if(CollectionUtils.isNotEmpty(examTeacherList) && CollectionUtils.isNotEmpty(allExamTeachers)){
            allExamTeachers.stream().forEach(all->{
                examTeacherList.stream().forEach(e->{
                    if(e.getUserId().equals(all.getUserId())){
                        all.setSelected(true);
                    }
                });
            });
        }
        return allExamTeachers;
    }
}
