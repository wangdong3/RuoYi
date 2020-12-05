package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.domain.TExamTeacher;

/**
 * 考试类别教师关系Service接口
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
public interface ITExamTeacherService 
{
    /**
     * 查询考试类别教师关系
     * 
     * @param connectId 考试类别教师关系ID
     * @return 考试类别教师关系
     */
    public TExamTeacher selectTExamTeacherById(Long connectId);

    /**
     * 查询考试类别教师关系列表
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 考试类别教师关系集合
     */
    public List<TExamTeacher> selectTExamTeacherList(TExamTeacher tExamTeacher);

    /**
     * 新增考试类别教师关系
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 结果
     */
    public int insertTExamTeacher(TExamTeacher tExamTeacher);

    /**
     * 修改考试类别教师关系
     * 
     * @param tExamTeacher 考试类别教师关系
     * @return 结果
     */
    public int updateTExamTeacher(TExamTeacher tExamTeacher);

    /**
     * 批量删除考试类别教师关系
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTExamTeacherByIds(String ids);

    /**
     * 删除考试类别教师关系信息
     * 
     * @param connectId 考试类别教师关系ID
     * @return 结果
     */
    public int deleteTExamTeacherById(Long connectId);

    List<SysUser> selectTExamTeachersWithSelected(Long examId);
}
