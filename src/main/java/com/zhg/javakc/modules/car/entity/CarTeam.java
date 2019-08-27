package com.zhg.javakc.modules.car.entity;


import com.zhg.javakc.base.entity.BaseEntity;

public class CarTeam extends BaseEntity<CarTeam> {
  /**
   * 车队信息
   */
  private String team_id;//车队ID
  private String team_name;//车队名称
  private String company;//所属公司
  private String fax;//传真
  private int phone;//电话
  private String address;//地址
  private String team_remark;//备注

  public String getTeam_remark() {
    return team_remark;
  }

  public void setTeam_remark(String team_remark) {
    this.team_remark = team_remark;
  }

  public String getTeam_id() {
    return team_id;
  }

  public String getTeam_name() {
    return team_name;
  }

  public String getCompany() {
    return company;
  }

  public String getFax() {
    return fax;
  }

  public int getPhone() {
    return phone;
  }

  public String getAddress() {
    return address;
  }


  public void setTeam_id(String team_id) {
    this.team_id = team_id;
  }

  public void setTeam_name(String team_name) {
    this.team_name = team_name;
  }

  public void setCompany(String company) {
    this.company = company;
  }

  public void setFax(String fax) {
    this.fax = fax;
  }

  public void setPhone(int phone) {
    this.phone = phone;
  }

  public void setAddress(String address) {
    this.address = address;
  }
}
