package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TScore;
import org.apache.ibatis.annotations.Param;

/**
 * 考试成绩Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-05
 */
public interface TScoreMapper 
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
     * 删除考试成绩
     * 
     * @param scoreId 考试成绩ID
     * @return 结果
     */
    public int deleteTScoreById(Long scoreId);

    /**
     * 批量删除考试成绩
     * 
     * @param scoreIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteTScoreByIds(String[] scoreIds);

    List<TScore> listResponsibleStudents(TScore tScore);

    List<TScore> listUnfinishStudents(TScore tScore);

    List<TScore> listMyScore(TScore tScore);
}
