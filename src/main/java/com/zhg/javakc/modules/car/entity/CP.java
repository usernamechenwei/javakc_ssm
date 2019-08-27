package com.zhg.javakc.modules.car.entity;


public class CP {
  /**
   * 车队人员
   */
  private String c_p_id; //车队人员主键
  private String address;//地址
  private int phone;//电话
  private String occupation;//职业
  //车队信息
  private CarTeam carTeam;

  public String getC_p_id() {
    return c_p_id;
  }

  public String getAddress() {
    return address;
  }

  public int getPhone() {
    return phone;
  }

  public String getOccupation() {
    return occupation;
  }

  public CarTeam getCarTeam() {
    return carTeam;
  }

  public void setC_p_id(String c_p_id) {
    this.c_p_id = c_p_id;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public void setPhone(int phone) {
    this.phone = phone;
  }

  public void setOccupation(String occupation) {
    this.occupation = occupation;
  }

  public void setCarTeam(CarTeam carTeam) {
    this.carTeam = carTeam;
  }
}
