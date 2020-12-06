package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TExam;

/**
 * 考试类别Service接口
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
public interface ITExamService 
{
    /**
     * 查询考试类别
     * 
     * @param examId 考试类别ID
     * @return 考试类别
     */
    public TExam selectTExamById(Long examId);

    /**
     * 查询考试类别列表
     * 
     * @param tExam 考试类别
     * @return 考试类别集合
     */
    public List<TExam> selectTExamList(TExam tExam);

    /**
     * 新增考试类别
     * 
     * @param tExam 考试类别
     * @return 结果
     */
    public int insertTExam(TExam tExam);

    /**
     * 修改考试类别
     * 
     * @param tExam 考试类别
     * @return 结果
     */
    public int updateTExam(TExam tExam);

    /**
     * 批量删除考试类别
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTExamByIds(String ids);

    /**
     * 删除考试类别信息
     * 
     * @param examId 考试类别ID
     * @return 结果
     */
    public int deleteTExamById(Long examId);

    /**
     * 根据性别查询出要体测的项目
     * @param exam
     * @return
     */
    List<TExam> selectTExamListBySex(TExam exam,Long examId);
}
