package com.ruoyi.web.controller.system;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TExam;
import com.ruoyi.system.service.ITExamService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 考试类别Controller
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Controller
@RequestMapping("/system/exam")
public class TExamController extends BaseController
{
    private String prefix = "system/exam";

    @Autowired
    private ITExamService tExamService;

    @RequiresPermissions("system:exam:view")
    @GetMapping()
    public String exam()
    {
        return prefix + "/exam";
    }

    /**
     * 查询考试类别列表
     */
    @RequiresPermissions("system:exam:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TExam tExam)
    {
        startPage();
        List<TExam> list = tExamService.selectTExamList(tExam);
        return getDataTable(list);
    }

    /**
     * 导出考试类别列表
     */
    @RequiresPermissions("system:exam:export")
    @Log(title = "考试类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TExam tExam)
    {
        List<TExam> list = tExamService.selectTExamList(tExam);
        ExcelUtil<TExam> util = new ExcelUtil<TExam>(TExam.class);
        return util.exportExcel(list, "exam");
    }

    /**
     * 新增考试类别
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存考试类别
     */
    @RequiresPermissions("system:exam:add")
    @Log(title = "考试类别", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TExam tExam)
    {
        return toAjax(tExamService.insertTExam(tExam));
    }

    /**
     * 修改考试类别
     */
    @GetMapping("/edit/{examId}")
    public String edit(@PathVariable("examId") Long examId, ModelMap mmap)
    {
        TExam tExam = tExamService.selectTExamById(examId);
        mmap.put("tExam", tExam);
        return prefix + "/edit";
    }

    /**
     * 修改保存考试类别
     */
    @RequiresPermissions("system:exam:edit")
    @Log(title = "考试类别", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TExam tExam)
    {
        return toAjax(tExamService.updateTExam(tExam));
    }

    /**
     * 删除考试类别
     */
    @RequiresPermissions("system:exam:remove")
    @Log(title = "考试类别", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tExamService.deleteTExamByIds(ids));
    }
}
