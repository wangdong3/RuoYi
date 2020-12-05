package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.system.domain.TScore;
import com.ruoyi.system.mapper.TScoreMapper;
import com.ruoyi.system.service.ITScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 考试成绩Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-05
 */
@Service
public class TScoreServiceImpl implements ITScoreService 
{
    @Autowired
    private TScoreMapper tScoreMapper;

    /**
     * 查询考试成绩
     * 
     * @param scoreId 考试成绩ID
     * @return 考试成绩
     */
    @Override
    public TScore selectTScoreById(Long scoreId)
    {
        return tScoreMapper.selectTScoreById(scoreId);
    }

    /**
     * 查询考试成绩列表
     * 
     * @param tScore 考试成绩
     * @return 考试成绩
     */
    @Override
    public List<TScore> selectTScoreList(TScore tScore)
    {
        return tScoreMapper.selectTScoreList(tScore);
    }

    /**
     * 新增考试成绩
     * 
     * @param tScore 考试成绩
     * @return 结果
     */
    @Override
    public int insertTScore(TScore tScore)
    {
        tScore.setCreateTime(DateUtils.getNowDate());
        tScore.setCreateBy(ShiroUtils.getLoginName());
        tScore.setUpdateBy(ShiroUtils.getLoginName());
        tScore.setUpdateTime(DateUtils.getNowDate());
        return tScoreMapper.insertTScore(tScore);
    }

    /**
     * 修改考试成绩
     * 
     * @param tScore 考试成绩
     * @return 结果
     */
    @Override
    public int updateTScore(TScore tScore)
    {
        tScore.setUpdateTime(DateUtils.getNowDate());
        tScore.setUpdateBy(ShiroUtils.getLoginName());
        return tScoreMapper.updateTScore(tScore);
    }

    /**
     * 删除考试成绩对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTScoreByIds(String ids)
    {
        return tScoreMapper.deleteTScoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除考试成绩信息
     * 
     * @param scoreId 考试成绩ID
     * @return 结果
     */
    @Override
    public int deleteTScoreById(Long scoreId)
    {
        return tScoreMapper.deleteTScoreById(scoreId);
    }

    @Override
    public List<TScore> listResponsibleStudents(TScore tScore) {
        Long currentUsetId = ShiroUtils.getUserId();
        return tScoreMapper.listResponsibleStudents(tScore,currentUsetId);
    }

    @Override
    public void insertTScoreWithTimeAndUser(TScore tScore2) {
        tScoreMapper.insertTScore(tScore2);
    }
}
