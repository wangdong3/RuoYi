package com.ruoyi.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 考试成绩对象 t_score
 * 
 * @author ruoyi
 * @date 2020-12-05
 */
@Data
public class TScore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 考试成绩ID */
    private Long scoreId;

    /** 用户id(学生id) */
//    @Excel(name = "用户id(学生id)")
    private Long userId;

    /** 学号 */
    @Excel(name = "学号")
    private String loginName;

    /** 用户姓名 */
    @Excel(name = "用户姓名")
    private String userName;

    /** 考试类别id */
    @Excel(name = "考试类别id")
    private Long examId;

    /** 考试名称 */
    @Excel(name = "考试名称")
    private String examName;

    /** 考试成绩 */
    @Excel(name = "考试成绩")
    private String score;

    /** 学年 */
    @Excel(name = "学年")
    private String schoolYear;

    /** 学期 */
    @Excel(name = "学期")
    private String semester;

    public void setScoreId(Long scoreId) 
    {
        this.scoreId = scoreId;
    }

    public Long getScoreId() 
    {
        return scoreId;
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
    public void setScore(String score) 
    {
        this.score = score;
    }

    public String getScore() 
    {
        return score;
    }
    public void setSchoolYear(String schoolYear) 
    {
        this.schoolYear = schoolYear;
    }

    public String getSchoolYear() 
    {
        return schoolYear;
    }
    public void setSemester(String semester) 
    {
        this.semester = semester;
    }

    public String getSemester() 
    {
        return semester;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("scoreId", getScoreId())
            .append("userId", getUserId())
            .append("userName", getUserName())
            .append("examId", getExamId())
            .append("examName", getExamName())
            .append("score", getScore())
            .append("schoolYear", getSchoolYear())
            .append("semester", getSemester())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
