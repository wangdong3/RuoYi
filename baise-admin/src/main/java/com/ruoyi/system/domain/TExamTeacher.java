package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 考试类别教师关系对象 t_exam_teacher
 * 
 * @author ruoyi
 * @date 2020-12-04
 */
@Data
public class TExamTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long connectId;

    /** 考试类别ID */
    @Excel(name = "考试类别ID")
    private Long examId;

    /** 考试名称 */
    @Excel(name = "考试名称")
    private String examName;

    /** 教师ID */
    @Excel(name = "教师ID")
    private Long userId;

    /** 教师姓名 */
    @Excel(name = "教师姓名")
    private String userName;

    public void setConnectId(Long connectId)
    {
        this.connectId = connectId;
    }

    public Long getConnectId() 
    {
        return connectId;
    }
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
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("connectId", getConnectId())
            .append("examId", getExamId())
            .append("examName", getExamName())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
