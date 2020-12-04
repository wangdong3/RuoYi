package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.system.domain.TExam;
import com.ruoyi.system.mapper.TExamMapper;
import com.ruoyi.system.service.ITExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 考试类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Service
public class TExamServiceImpl implements ITExamService 
{
    @Autowired
    private TExamMapper tExamMapper;

    /**
     * 查询考试类别
     * 
     * @param examId 考试类别ID
     * @return 考试类别
     */
    @Override
    public TExam selectTExamById(Long examId)
    {
        return tExamMapper.selectTExamById(examId);
    }

    /**
     * 查询考试类别列表
     * 
     * @param tExam 考试类别
     * @return 考试类别
     */
    @Override
    public List<TExam> selectTExamList(TExam tExam)
    {
        return tExamMapper.selectTExamList(tExam);
    }

    /**
     * 新增考试类别
     * 
     * @param tExam 考试类别
     * @return 结果
     */
    @Override
    public int insertTExam(TExam tExam)
    {
        tExam.setCreateBy(ShiroUtils.getLoginName());
        tExam.setUpdateBy(ShiroUtils.getLoginName());
        tExam.setCreateTime(DateUtils.getNowDate());
        tExam.setUpdateTime(DateUtils.getNowDate());
        return tExamMapper.insertTExam(tExam);
    }

    /**
     * 修改考试类别
     * 
     * @param tExam 考试类别
     * @return 结果
     */
    @Override
    public int updateTExam(TExam tExam)
    {
        tExam.setUpdateBy(ShiroUtils.getLoginName());
        tExam.setUpdateTime(DateUtils.getNowDate());
        return tExamMapper.updateTExam(tExam);
    }

    /**
     * 删除考试类别对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTExamByIds(String ids)
    {
        return tExamMapper.deleteTExamByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除考试类别信息
     * 
     * @param examId 考试类别ID
     * @return 结果
     */
    @Override
    public int deleteTExamById(Long examId)
    {
        return tExamMapper.deleteTExamById(examId);
    }
}
