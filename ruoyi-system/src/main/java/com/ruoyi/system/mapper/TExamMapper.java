package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TExam;

/**
 * 考试类别Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
public interface TExamMapper 
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
     * 删除考试类别
     * 
     * @param examId 考试类别ID
     * @return 结果
     */
    public int deleteTExamById(Long examId);

    /**
     * 批量删除考试类别
     * 
     * @param examIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteTExamByIds(String[] examIds);
}
