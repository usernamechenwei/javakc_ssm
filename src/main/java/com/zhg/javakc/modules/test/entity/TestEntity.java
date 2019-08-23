package com.zhg.javakc.modules.test.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

/**
 * @Author lisiyu
 * @Date 19/8/22 - 11:52
 */
public class TestEntity extends BaseEntity<TestEntity> {

    /**
     * 主键
     */
    private String testId;
    /**
     * 姓名
     */
    private String testName;
    /**
     *  年龄
     */
    private int testAge;
    /**
     * 性别
     */
    private String testSex;
    /**
     * 生日
     */
    private Date testDate;

    public void setTestAge(int testAge){
        this.testAge=testAge;
    }

    public int getTestAge(){
        return testAge;
    }


    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestSex() {
        return testSex;
    }

    public void setTestSex(String testSex) {
        this.testSex = testSex;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
}
