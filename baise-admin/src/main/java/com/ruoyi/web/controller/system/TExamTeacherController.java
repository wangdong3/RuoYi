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
import com.ruoyi.system.domain.TExamTeacher;
import com.ruoyi.system.service.ITExamTeacherService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 考试类别教师关系Controller
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Controller
@RequestMapping("/system/teacher")
public class TExamTeacherController extends BaseController
{
    private String prefix = "system/teacher";

    @Autowired
    private ITExamTeacherService tExamTeacherService;

    @RequiresPermissions("system:teacher:view")
    @GetMapping()
    public String teacher()
    {
        return prefix + "/teacher";
    }

    /**
     * 查询考试类别教师关系列表
     */
    @RequiresPermissions("system:teacher:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TExamTeacher tExamTeacher)
    {
        startPage();
        List<TExamTeacher> list = tExamTeacherService.selectTExamTeacherList(tExamTeacher);
        return getDataTable(list);
    }

    /**
     * 导出考试类别教师关系列表
     */
    @RequiresPermissions("system:teacher:export")
    @Log(title = "考试类别教师关系", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TExamTeacher tExamTeacher)
    {
        List<TExamTeacher> list = tExamTeacherService.selectTExamTeacherList(tExamTeacher);
        ExcelUtil<TExamTeacher> util = new ExcelUtil<TExamTeacher>(TExamTeacher.class);
        return util.exportExcel(list, "teacher");
    }

    /**
     * 新增考试类别教师关系
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存考试类别教师关系
     */
    @RequiresPermissions("system:teacher:add")
    @Log(title = "考试类别教师关系", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TExamTeacher tExamTeacher)
    {
        return toAjax(tExamTeacherService.insertTExamTeacher(tExamTeacher));
    }

    /**
     * 修改考试类别教师关系
     */
    @GetMapping("/edit/{connectId}")
    public String edit(@PathVariable("connectId") Long connectId, ModelMap mmap)
    {
        TExamTeacher tExamTeacher = tExamTeacherService.selectTExamTeacherById(connectId);
        mmap.put("tExamTeacher", tExamTeacher);
        return prefix + "/edit";
    }

    /**
     * 修改保存考试类别教师关系
     */
    @RequiresPermissions("system:teacher:edit")
    @Log(title = "考试类别教师关系", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TExamTeacher tExamTeacher)
    {
        return toAjax(tExamTeacherService.updateTExamTeacher(tExamTeacher));
    }

    /**
     * 删除考试类别教师关系
     */
    @RequiresPermissions("system:teacher:remove")
    @Log(title = "考试类别教师关系", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tExamTeacherService.deleteTExamTeacherByIds(ids));
    }
}
