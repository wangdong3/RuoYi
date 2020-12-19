package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TScore;

/**
 * 考试成绩Service接口
 * 
 * @author ruoyi
 * @date 2020-12-05
 */
public interface ITScoreService 
{
    /**
     * 查询考试成绩
     * 
     * @param scoreId 考试成绩ID
     * @return 考试成绩
     */
    public TScore selectTScoreById(Long scoreId);

    /**
     * 查询考试成绩列表
     * 
     * @param tScore 考试成绩
     * @return 考试成绩集合
     */
    public List<TScore> selectTScoreList(TScore tScore);

    /**
     * 新增考试成绩
     * 
     * @param tScore 考试成绩
     * @return 结果
     */
    public int insertTScore(TScore tScore);

    /**
     * 修改考试成绩
     * 
     * @param tScore 考试成绩
     * @return 结果
     */
    public int updateTScore(TScore tScore);

    /**
     * 批量删除考试成绩
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTScoreByIds(String ids);

    /**
     * 删除考试成绩信息
     * 
     * @param scoreId 考试成绩ID
     * @return 结果
     */
    public int deleteTScoreById(Long scoreId);

    /**
     * 查询负责的学生列表
     * @param tScore
     * @return
     */
    List<TScore> listResponsibleStudents(TScore tScore);

    void insertTScoreWithTimeAndUser(TScore tScore2);

    /**
     * 查询待体测的学生列表
     * @param tScore
     * @return
     */
    List<TScore> listUnfinishStudents(TScore tScore);

    /**
     * 学生查询个人成绩
     * @param tScore
     * @return
     */
    List<TScore> listMyScore(TScore tScore);
}
