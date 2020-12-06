package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 考试类别对象 t_exam
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Data
public class TExam extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 考试类别ID */
    private Long examId;

    /** 考试名称 */
    @Excel(name = "考试名称")
    private String examName;

    @Excel(name = "适用性别")
    private String sex;

    private String beginUpdateTime;

    private String endUpdateTime;

    private Long[] teacherIds;

    private String [] teacherNames;

    @Excel(name = "教师姓名")
    private String userName;

    private Long userId;

    private boolean selected;

    public void setExamId(Long examId) 
    {
        this.examId = examId;
    }

    public Long getExamId() 
    {
        return examId;
    }
    public void setExamName(String examName) 
    {
        this.examName = examName;
    }

    public String getExamName() 
    {
        return examName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("examId", getExamId())
            .append("examName", getExamName())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
