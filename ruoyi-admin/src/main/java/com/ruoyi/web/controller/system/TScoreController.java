package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TExam;
import com.ruoyi.system.domain.TScore;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITExamService;
import com.ruoyi.system.service.ITScoreService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 考试成绩Controller
 * 
 * @author ruoyi
 * @date 2020-12-05
 */
@Controller
@RequestMapping("/system/score")
public class TScoreController extends BaseController
{
    private String prefix = "system/score";

    @Autowired
    private ITScoreService tScoreService;

    @Autowired
    private ITExamService examService;

    @Autowired
    private ISysUserService sysUserService;

    @GetMapping()
    public String score()
    {
        return prefix + "/score";
    }

    @GetMapping("/scoreAdd")
    public String scoreAdd()
    {
        return prefix + "/scoreAdd";
    }

    /**
     * 查询负责的学生列表
     */
    @PostMapping("/listResponsibleStudents")
    @ResponseBody
    public TableDataInfo listResponsibleStudents(TScore tScore)
    {
        startPage();
        List<TScore> list = tScoreService.listResponsibleStudents(tScore);
        return getDataTable(list);
    }

    /**
     * 查询考试成绩列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TScore tScore)
    {
        startPage();
        List<TScore> list = tScoreService.selectTScoreList(tScore);
        return getDataTable(list);
    }

    /**
     * 导出考试成绩列表
     */
    @RequiresPermissions("system:score:export")
    @Log(title = "考试成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TScore tScore)
    {
        List<TScore> list = tScoreService.selectTScoreList(tScore);
        ExcelUtil<TScore> util = new ExcelUtil<TScore>(TScore.class);
        return util.exportExcel(list, "score");
    }

    /**
     * 新增考试成绩
     */
    @GetMapping("/add")
    public String add(ModelMap modelMap)
    {
        List<TExam> examList = examService.selectTExamList(new TExam());
        modelMap.put("tExam",examList);
        return prefix + "/add";
    }

    /**
     * 新增保存考试成绩
     */
    @Log(title = "考试成绩", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TScore tScore)
    {
        return toAjax(tScoreService.insertTScore(tScore));
    }

    /**
     * 修改考试成绩
     */
    @GetMapping("/edit/{scoreId}")
    public String edit(@PathVariable("scoreId") Long scoreId, ModelMap mmap)
    {
        TScore tScore = tScoreService.selectTScoreById(scoreId);
        mmap.put("tScore", tScore);
        SysUser sysUser = sysUserService.selectUserById(tScore.getUserId());
        if(sysUser != null){
            TExam exam = new TExam();
            exam.setSex(sysUser.getSex());
            List<TExam> examList = examService.selectTExamListBySex(exam,tScore.getExamId());
            mmap.put("tExam", examList);
        }
        return prefix + "/edit";
    }

    /**
     * 修改保存考试成绩
     */
    @Log(title = "考试成绩", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TScore tScore)
    {
        return toAjax(tScoreService.updateTScore(tScore));
    }

    /**
     * 删除考试成绩
     */
    @Log(title = "考试成绩", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tScoreService.deleteTScoreByIds(ids));
    }
}
