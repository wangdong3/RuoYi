package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TScoreMapper;
import com.ruoyi.system.domain.TScore;
import com.ruoyi.system.service.ITScoreService;
import com.ruoyi.common.core.text.Convert;

/**
 * 考试成绩Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-04
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
}
