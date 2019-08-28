package com.zhg.javakc.modules.purchasing.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

//采购
public class LeadEntity extends BaseEntity<LeadEntity> {
  //主表
  private String leadId;
  //创建时间
  private Date leadDate;
  //数量
  private int leadCont;
  //铅封使用方式1.回封 2,区封
  private String leadUse;
  //铅封的类型1一次性2固定铅封
  private String leadType;
  //申请状态 1待审核，2待验收，3已验收
  private String leadState;
  //手机号
  private String leadPhone;
  //邮编
  private String postcode;
  //地址
  private String address;
  //申请号
  private String apply;
  //申请人
  private String userName;
  //内部外部
  private String insideAndOutside;
  //备用字段
  private String lead3;
  private String lead4;
  private String lead5;
  //申请单位
  private String oilsDepot;
  //条数
  private int count ;

  public int getCount(){
      return  count;
  }

  public void setCount(int count){
        this.count=count;
  }

  public String getLeadId() {
    return leadId;
  }

  public void setLeadId(String leadId) {
    this.leadId = leadId;
  }


  public Date getLeadDate() {
    return leadDate;
  }

  public void setLeadDate(Date leadDate) {
    this.leadDate = leadDate;
  }


  public int getLeadCont() {
    return leadCont;
  }

  public void setLeadCont(int leadCont) {
    this.leadCont = leadCont;
  }


  public String getLeadUse() {
    return leadUse;
  }

  public void setLeadUse(String leadUse) {
    this.leadUse = leadUse;
  }


  public String getLeadType() {
    return leadType;
  }

  public void setLeadType(String leadType) {
    this.leadType = leadType;
  }


  public String getLeadState() {
    return leadState;
  }

  public void setLeadState(String leadState) {
    this.leadState = leadState;
  }


  public String getLeadPhone() {
    return leadPhone;
  }

  public void setLeadPhone(String leadPhone) {
    this.leadPhone = leadPhone;
  }


  public String getPostcode() {
    return postcode;
  }

  public void setPostcode(String postcode) {
    this.postcode = postcode;
  }


  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }


  public String getApply() {
    return apply;
  }

  public void setApply(String apply) {
    this.apply = apply;
  }


  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getInsideAndOutside() {
    return insideAndOutside;
  }

  public void setInsideAndOutside(String insideAndOutside) {
    this.insideAndOutside = insideAndOutside;
  }


  public String getLead3() {
    return lead3;
  }

  public void setLead3(String lead3) {
    this.lead3 = lead3;
  }


  public String getLead4() {
    return lead4;
  }

  public void setLead4(String lead4) {
    this.lead4 = lead4;
  }


  public String getLead5() {
    return lead5;
  }

  public void setLead5(String lead5) {
    this.lead5 = lead5;
  }


  public String getOilsDepot() {
    return oilsDepot;
  }

  public void setOilsDepot(String oilsDepot) {
    this.oilsDepot = oilsDepot;
  }

}
