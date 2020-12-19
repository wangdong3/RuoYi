package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TExamTeacher;
import org.apache.ibatis.annotations.Param;

/**
 * 考试类别教师关系Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
public interface TExamTeacherMapper 
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
     * 删除考试类别教师关系
     * 
     * @param connectId 考试类别教师关系ID
     * @return 结果
     */
    public int deleteTExamTeacherById(Long connectId);

    /**
     * 批量删除考试类别教师关系
     * 
     * @param connectIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteTExamTeacherByIds(String[] connectIds);

    void deleteTExamTeacherExamId(@Param("examId") Long examId);

    void deleteTExamTeacherExamIds(String[] idsArray);
}
