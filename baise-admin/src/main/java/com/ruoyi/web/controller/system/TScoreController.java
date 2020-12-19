package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.TExam;
import com.ruoyi.system.domain.TScore;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.ITExamService;
import com.ruoyi.system.service.ITScoreService;
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

    /**
     * 跳转到成绩录入
     * @return
     */
    @GetMapping("/scoreAdd")
    public String scoreAdd()
    {
        return prefix + "/scoreAdd";
    }

    /**
     * 跳转到未体测学生查询
     * @return
     */
    @GetMapping("/unfinishStudents")
    public String unfinishStudents()
    {
        return prefix + "/unfinishStudents";
    }

    /**
     * 全部学生成绩跳转
     * @return
     */
    @GetMapping("/scoreAll")
    public String allStudentsScore()
    {
        return prefix + "/scoreAll";
    }

    /**
     * 学生查询个人成绩
     * @return
     */
    @GetMapping("/myScore")
    public String myScore()
    {
        return prefix + "/myScore";
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
     * 学生查询个人成绩列表
     */
    @PostMapping("/listMyScore")
    @ResponseBody
    public TableDataInfo listMyScore(TScore tScore)
    {
        startPage();
        List<TScore> list = tScoreService.listMyScore(tScore);
        return getDataTable(list);
    }

    /**
     * 查询待体测学生列表
     */
    @PostMapping("/listUnfinishStudents")
    @ResponseBody
    public TableDataInfo listUnfinishStudents(TScore tScore)
    {
        startPage();
        List<TScore> list = tScoreService.listUnfinishStudents(tScore);
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
     * 导出考试成绩列表
     */
    @Log(title = "导出教师负责学生成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/exportResponsibleStudents")
    @ResponseBody
    public AjaxResult exportResponsibleStudents(TScore tScore)
    {
        List<TScore> list = tScoreService.listResponsibleStudents(tScore);
        ExcelUtil<TScore> util = new ExcelUtil<TScore>(TScore.class);
        return util.exportExcel(list, "教师负责学生成绩");
    }

    /**
     * 导出未体测学生列表
     */
    @Log(title = "导出未体测学生列表", businessType = BusinessType.EXPORT)
    @PostMapping("/exportUnfinishStudents")
    @ResponseBody
    public AjaxResult exportUnfinishStudents(TScore tScore)
    {
        List<TScore> list = tScoreService.listUnfinishStudents(tScore);
        ExcelUtil<TScore> util = new ExcelUtil<TScore>(TScore.class);
        return util.exportExcel(list, "待体测学生");
    }

    /**
     * 导出我的成绩列表
     */
    @Log(title = "导出我的成绩列表", businessType = BusinessType.EXPORT)
    @PostMapping("/exportMyscore")
    @ResponseBody
    public AjaxResult exportMyscore(TScore tScore)
    {
        List<TScore> list = tScoreService.listMyScore(tScore);
        ExcelUtil<TScore> util = new ExcelUtil<TScore>(TScore.class);
        return util.exportExcel(list, "我的成绩");
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
