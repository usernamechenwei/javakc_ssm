/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2019/8/26 星期一 13:49:01                       */
/*==============================================================*/


alter table c_p
   drop constraint FK_C_P_REFERENCE_CAR_TEAM;

alter table car_team
   drop constraint FK_CAR_TEAM_REFERENCE_CAR_MESS;

alter table distribution
   drop constraint FK_DISTRIBU_REFERENCE_CAR_TEAM;

alter table distribution
   drop constraint FK_DISTRIBU_REFERENCE_ORDERR;

alter table driver
   drop constraint FK_DRIVER_REFERENCE_CAR_TEAM;

alter table grante
   drop constraint FK_GRANTE_REFERENCE_INVENTOR;

alter table grante
   drop constraint FK_GRANTE_REFERENCE_ORDERR;

alter table indent
   drop constraint FK_INDENT_REFERENCE_ORDERR;

alter table indent
   drop constraint FK_INDENT_REFERENCE_LEAD_NUM;

alter table inspect
   drop constraint FK_INSPECT_REFERENCE_DRIVER;

alter table orderr
   drop constraint FK_ORDERR_REFERENCE_LEAD;

alter table train
   drop constraint FK_TRAIN_REFERENCE_DRIVER;

drop table c_p cascade constraints;

drop table car_message cascade constraints;

drop table car_team cascade constraints;

drop table distribution cascade constraints;

drop table driver cascade constraints;

drop table grante cascade constraints;

drop table indent cascade constraints;

drop table inspect cascade constraints;

drop table inventory cascade constraints;

drop table lead cascade constraints;

drop table lead_number cascade constraints;

drop table orderr cascade constraints;

drop table train cascade constraints;

/*==============================================================*/
/* Table: c_p                                                   */
/*==============================================================*/
create table c_p  (
   c_p_id               VARCHAR2(32)                    not null,
   team_id              VARCHAR2(32),
   address              VARCHAR2(50),
   phone                NUMBER,
   occupation           VARCHAR2(32),
   c_p_1                VARCHAR2(32),
   c_p_2                VARCHAR2(32),
   c_p_3                VARCHAR2(32),
   constraint PK_C_P primary key (c_p_id)
);

comment on table c_p is
'车队人员';

comment on column c_p.c_p_id is
'车队人员主键';

comment on column c_p.team_id is
'车队主键';

comment on column c_p.address is
'地址';

comment on column c_p.phone is
'电话';

comment on column c_p.occupation is
'职业';

/*==============================================================*/
/* Table: car_message                                           */
/*==============================================================*/
create table car_message  (
   m_id                 VARCHAR2(32)                    not null,
   m_company            VARCHAR2(50),
   m_name               VARCHAR2(50),
   m_long               NUMBER,
   m_plate              VARCHAR2(50),
   m_car                VARCHAR2(50),
   m_colour             VARCHAR2(50),
   m_source             VARCHAR2(50),
   m_engine             VARCHAR2(50),
   fuel                 VARCHAR2(50),
   make_name            VARCHAR2(50),
   tyre                 VARCHAR2(50),
   tyre_size            VARCHAR2(50),
   distance             VARCHAR2(50),
   felly                VARCHAR2(50),
   m_check              VARCHAR2(50),
   m_type               VARCHAR2(50),
   m_company_2          VARCHAR2(50),
   beng                 NUMBER,
   oil                  VARCHAR2(50),
   coding               VARCHAR2(50),
   car_type             NUMBER,
   m_code               VARCHAR2(50),
   m_engine_2           VARCHAR2(50),
   chassis              VARCHAR2(50),
   mass                 VARCHAR2(50),
   buy                  NUMBER,
   nature               NUMBER,
   m1                   VARCHAR2(50),
   m2                   VARCHAR2(50),
   m3                   VARCHAR2(50),
   m4                   VARCHAR2(50),
   m5                   VARCHAR2(50),
   m6                   VARCHAR2(50),
   m7                   VARCHAR2(50),
   constraint PK_CAR_MESSAGE primary key (m_id)
);

comment on table car_message is
'车辆基本信息
备用字段,漏写填补';

comment on column car_message.m_id is
'车辆信息的id';

comment on column car_message.m_company is
'车辆公司
';

comment on column car_message.m_name is
'车辆名称';

comment on column car_message.m_long is
'软管长度';

comment on column car_message.m_plate is
'车牌';

comment on column car_message.m_car is
'车辆型号';

comment on column car_message.m_colour is
'车辆颜色';

comment on column car_message.m_source is
'车辆来源';

comment on column car_message.m_engine is
'发动机号 1';

comment on column car_message.fuel is
'颜料种类';

comment on column car_message.make_name is
'制造厂名称';

comment on column car_message.tyre is
'落地轮胎数';

comment on column car_message.tyre_size is
'轮胎规格';

comment on column car_message.distance is
'轮距';

comment on column car_message.felly is
'外轮尺寸';

comment on column car_message.m_check is
'核定载质量';

comment on column car_message.m_type is
'驱动形式';

comment on column car_message.m_company_2 is
'所属省公司';

comment on column car_message.beng is
'是否带泵 1是 2 否';

comment on column car_message.oil is
'油品编码';

comment on column car_message.coding is
'车辆编码';

comment on column car_message.car_type is
'车辆类型 
1非生产车
2.生产车';

comment on column car_message.m_code is
'识别代码';

comment on column car_message.m_engine_2 is
'发动机型号';

comment on column car_message.chassis is
'底盘号';

comment on column car_message.mass is
'总质量';

comment on column car_message.buy is
'车辆够得方式  1是购买 2是其他';

comment on column car_message.nature is
'车辆性质 1自由 2 其他';

comment on column car_message.m1 is
'备用字段';

comment on column car_message.m2 is
'备用字段';

comment on column car_message.m3 is
'备用字段';

comment on column car_message.m4 is
'备用字段';

comment on column car_message.m5 is
'备用字段';

comment on column car_message.m6 is
'备用字段';

comment on column car_message.m7 is
'备用字段';

/*==============================================================*/
/* Table: car_team                                              */
/*==============================================================*/
create table car_team  (
   team_id              VARCHAR2(32)                    not null,
   m_id                 VARCHAR2(32),
   team_name            VARCHAR2(50),
   company              VARCHAR2(50),
   fax                  VARCHAR2(250),
   phone                NUMBER,
   address              VARCHAR2(250),
   team_remark          VARCHAR2(250),
   remark_1             VARCHAR2(250),
   remark_2             VARCHAR2(32),
   remark_3             VARCHAR2(32),
   remark_4             VARCHAR2(32),
   constraint PK_CAR_TEAM primary key (team_id)
);

comment on table car_team is
'车队信息';

comment on column car_team.team_id is
'车队ID';

comment on column car_team.m_id is
'车辆信息的id';

comment on column car_team.team_name is
'车队名称';

comment on column car_team.company is
'所属公司';

comment on column car_team.fax is
'传真';

comment on column car_team.phone is
'电话';

comment on column car_team.address is
'地址';

comment on column car_team.team_remark is
'备注';

comment on column car_team.remark_1 is
'备注';

/*==============================================================*/
/* Table: distribution                                          */
/*==============================================================*/
create table distribution  (
   dis_id               VARCHAR2(32)                    not null,
   team_id              VARCHAR2(32),
   order_id             VARCHAR2(32),
   odd_num              VARCHAR2(32),
   state                VARCHAR2(32),
   oils                 VARCHAR2(32),
   oils_depot           VARCHAR2(32),
   Receiving            VARCHAR2(32),
   udate                VARCHAR2(32),
   edate                VARCHAR2(32),
   car_num              VARCHAR2(32),
   driver               VARCHAR2(32),
   copilot              VARCHAR2(32),
   type                 VARCHAR2(32),
   specification        VARCHAR2(32),
   weight               VARCHAR2(32),
   volume               VARCHAR2(32),
   Pay_cranes           VARCHAR2(32),
   postage              VARCHAR2(32),
   distance             VARCHAR2(32),
   Attribute_19discharge VARCHAR2(32),
   charge               VARCHAR2(32),
   compartment          VARCHAR2(32),
   temperature          VARCHAR2(32),
   density              VARCHAR2(32),
   constraint PK_DISTRIBUTION primary key (dis_id)
);

comment on table distribution is
'配送信息';

comment on column distribution.dis_id is
'配送单主键';

comment on column distribution.team_id is
'车队ID';

comment on column distribution.order_id is
'生成厂家的主键
';

comment on column distribution.odd_num is
'单号';

comment on column distribution.state is
'状态';

comment on column distribution.oils is
'油品';

comment on column distribution.oils_depot is
'付油油库';

comment on column distribution.Receiving is
'收油油库';

comment on column distribution.udate is
'开始日期';

comment on column distribution.edate is
'终止日期';

comment on column distribution.car_num is
'车号';

comment on column distribution.driver is
'主驾驶';

comment on column distribution.copilot is
'副驾驶';

comment on column distribution.type is
'类型';

comment on column distribution.specification is
'规格';

comment on column distribution.weight is
'重量';

comment on column distribution.volume is
'体积';

comment on column distribution.Pay_cranes is
'付油鹤位';

comment on column distribution.postage is
'邮费';

comment on column distribution.distance is
'运距';

comment on column distribution.Attribute_19discharge is
'规定卸油时间';

comment on column distribution.charge is
'规定装油时间';

comment on column distribution.compartment is
'隔箱号';

comment on column distribution.temperature is
'视温度';

comment on column distribution.density is
'密度';

/*==============================================================*/
/* Table: driver                                                */
/*==============================================================*/
create table driver  (
   driver_id            VARCHAR2(32)                    not null,
   team_id              VARCHAR2(32),
   picture              VARCHAR2(500),
   address              VARCHAR2(50),
   license              NUMBER,
   sex                  VARCHAR2(3),
   state                NUMBER,
   native               VARCHAR2(50),
   grade                NUMBER,
   phone                NUMBER,
   constraint PK_DRIVER primary key (driver_id)
);

comment on table driver is
'驾驶员表';

comment on column driver.driver_id is
'驾驶员主键';

comment on column driver.team_id is
'车队主键';

comment on column driver.picture is
'照片';

comment on column driver.address is
'家庭地址';

comment on column driver.license is
'驾驶证号';

comment on column driver.sex is
'性别';

comment on column driver.state is
'在职状态 1 在职 2 未入职';

comment on column driver.native is
'籍贯';

comment on column driver.grade is
'技术等级1 A本 2 B本 3C本';

comment on column driver.phone is
'电话';

/*==============================================================*/
/* Table: grante                                                */
/*==============================================================*/
create table grante  (
   grant_id             VARCHAR2(32)                    not null,
   inventory_id         VARCHAR2(32),
   order_id             VARCHAR2(32),
   grant_unit           VARCHAR2(50),
   grant_date           DATE,
   constraint PK_GRANTE primary key (grant_id)
);

comment on table grante is
'发放管理';

comment on column grante.grant_id is
'发放管理主键';

comment on column grante.inventory_id is
'库存表主键';

comment on column grante.order_id is
'生成厂家的主键
';

comment on column grante.grant_unit is
'发放单位';

comment on column grante.grant_date is
'发放日期';

/*==============================================================*/
/* Table: indent                                                */
/*==============================================================*/
create table indent  (
   indent_id            VARCHAR2(32)                    not null,
   order_id             VARCHAR2(32),
   number_id            VARCHAR2(32),
   indent_date          DATE,
   indent_1             VARCHAR2(32),
   indent_2             VARCHAR2(32),
   indent_3             VARCHAR2(32),
   indent_4             VARCHAR2(32),
   indent_5             VARCHAR2(32),
   constraint PK_INDENT primary key (indent_id)
);

comment on table indent is
'铅封收货表';

comment on column indent.indent_id is
'收货表的主键';

comment on column indent.order_id is
'生成厂家的主键
';

comment on column indent.number_id is
'段的号码的主键';

comment on column indent.indent_date is
'收货日期';

comment on column indent.indent_1 is
'备用字段';

/*==============================================================*/
/* Table: inspect                                               */
/*==============================================================*/
create table inspect  (
   inspect_id           VARCHAR2(32)                    not null,
   driver_id            VARCHAR2(32),
   inspect_date         DATE,
   site                 VARCHAR2(50),
   content              VARCHAR2(250),
   marks                NUMBER,
   organization         NUMBER,
   abarbeitung          NUMBER,
   result               NUMBER,
   constraint PK_INSPECT primary key (inspect_id)
);

comment on table inspect is
'稽查表';

comment on column inspect.inspect_id is
'检查主键';

comment on column inspect.driver_id is
'主键';

comment on column inspect.inspect_date is
'时间';

comment on column inspect.site is
'地点';

comment on column inspect.content is
'内容';

comment on column inspect.marks is
'扣分情况';

comment on column inspect.organization is
'检查机构';

comment on column inspect.abarbeitung is
'整改情况';

comment on column inspect.result is
'结果';

/*==============================================================*/
/* Table: inventory                                             */
/*==============================================================*/
create table inventory  (
   inventory_id         VARCHAR2(32)                    not null,
   num                  NUMBER,
   state                VARCHAR2(3),
   send                 VARCHAR2(32),
   motorcade            VARCHAR2(32),
   sealing              VARCHAR2(50),
   sealing_unti         VARCHAR2(50),
   seal_unti            VARCHAR2(50),
   in_state             VARCHAR2(3),
   remarks              VARCHAR2(50),
   inventory_1          VARCHAR2(50),
   inventory_2          VARCHAR2(50),
   inventory_3          VARCHAR2(50),
   inventory_4          VARCHAR2(50),
   inventory_5          VARCHAR2(50),
   constraint PK_INVENTORY primary key (inventory_id)
);

comment on table inventory is
'库存表';

comment on column inventory.inventory_id is
'库存表主键';

comment on column inventory.num is
'编号';

comment on column inventory.state is
'使用状态
1待用
2已使用';

comment on column inventory.send is
'配送单id';

comment on column inventory.motorcade is
'车队主键';

comment on column inventory.sealing is
'施封位置';

comment on column inventory.sealing_unti is
'施封单位';

comment on column inventory.seal_unti is
'拆封单位';

comment on column inventory.in_state is
'状态';

comment on column inventory.remarks is
'备注';

comment on column inventory.inventory_1 is
'备注';

/*==============================================================*/
/* Table: lead                                                  */
/*==============================================================*/
create table lead  (
   lead_id              VARCHAR2(32)                    not null,
   lead_date            DATE,
   lead_cont            NUMBER,
   lead_use             VARCHAR2(12),
   lead_type            NUMBER,
   lead_state           NUMBER,
   lead_phone           NUMBER,
   postcode             NUMBER,
   address              VARCHAR2(50),
   apply                NUMBER,
   lead1                VARCHAR2(32),
   lead2                VARCHAR2(32),
   lead3                VARCHAR2(32),
   lead4                VARCHAR2(32),
   lead5                VARCHAR2(32),
   oils_depot           VARCHAR2(32),
   constraint PK_LEAD primary key (lead_id)
);

comment on table lead is
'采购表';

comment on column lead.lead_id is
'铅封id';

comment on column lead.lead_date is
'申请日期';

comment on column lead.lead_cont is
'申请数量';

comment on column lead.lead_use is
'铅封使用方式';

comment on column lead.lead_type is
'铅封的类型 1.回封 2,区封';

comment on column lead.lead_state is
'申请状态 1待审核，2待验收，3已验收';

comment on column lead.lead_phone is
'手机号';

comment on column lead.postcode is
'邮编';

comment on column lead.address is
'地址';

comment on column lead.apply is
'申请号';

comment on column lead.lead1 is
'备用字段';

comment on column lead.oils_depot is
'申请单位';

/*==============================================================*/
/* Table: lead_number                                           */
/*==============================================================*/
create table lead_number  (
   number_id            VARCHAR2(32)                    not null,
   number_begin         NUMBER,
   number_end           NUMBER,
   number_2             VARCHAR2(32),
   number_3             VARCHAR2(32),
   number_4             VARCHAR2(32),
   number_5             VARCHAR2(32),
   constraint PK_LEAD_NUMBER primary key (number_id)
);

comment on table lead_number is
'号段';

comment on column lead_number.number_id is
'段的号码的主键';

comment on column lead_number.number_begin is
'起始编号';

comment on column lead_number.number_end is
'终止编号';

comment on column lead_number.number_2 is
'备用字段';

/*==============================================================*/
/* Table: orderr                                                */
/*==============================================================*/
create table orderr  (
   order_id             VARCHAR2(32)                    not null,
   lead_id              VARCHAR2(32),
   order_describe       VARCHAR2(500),
   order_batch          NUMBER,
   order_date           DATE,
   order_number         NUMBER,
   order_state          NUMBER,
   order_1              VARCHAR2(32),
   order_2              VARCHAR2(32),
   order_4              VARCHAR2(32),
   order_5              VARCHAR2(32),
   order_3              VARCHAR2(32),
   constraint PK_ORDERR primary key (order_id)
);

comment on table orderr is
'订单表';

comment on column orderr.order_id is
'生成厂家的主键
';

comment on column orderr.lead_id is
'铅封id';

comment on column orderr.order_describe is
'生产厂家的描述
';

comment on column orderr.order_batch is
'订单批次号';

comment on column orderr.order_date is
'订单日期
';

comment on column orderr.order_number is
'订单数量';

comment on column orderr.order_state is
'申请状态
1待生成订单，2订单已发出，3订单已验收';

comment on column orderr.order_1 is
'备用字段';

/*==============================================================*/
/* Table: train                                                 */
/*==============================================================*/
create table train  (
   train_id             VARCHAR2(32)                    not null,
   driver_id            VARCHAR2(32),
   train_date           DATE,
   train_address        VARCHAR2(50),
   train_name           VARCHAR2(50),
   begin                DATE,
   end                  DATE,
   train_type           VARCHAR2(50),
   lecturer             VARCHAR2(25),
   content              VARCHAR2(250),
   flag                 NUMBER,
   constraint PK_TRAIN primary key (train_id)
);

comment on table train is
'培训公司';

comment on column train.train_id is
'培训公司的主键';

comment on column train.driver_id is
'驾驶员主键';

comment on column train.train_date is
'培训时间';

comment on column train.train_address is
'培训地点';

comment on column train.train_name is
'培训名称';

comment on column train.begin is
'开始时间';

comment on column train.end is
'结束时间';

comment on column train.train_type is
'培训类型';

comment on column train.lecturer is
'讲师';

comment on column train.content is
'内容';

comment on column train.flag is
'结果
1.完成
2.未完成';

alter table c_p
   add constraint FK_C_P_REFERENCE_CAR_TEAM foreign key (team_id)
      references car_team (team_id);

alter table car_team
   add constraint FK_CAR_TEAM_REFERENCE_CAR_MESS foreign key (m_id)
      references car_message (m_id);

alter table distribution
   add constraint FK_DISTRIBU_REFERENCE_CAR_TEAM foreign key (team_id)
      references car_team (team_id);

alter table distribution
   add constraint FK_DISTRIBU_REFERENCE_ORDERR foreign key (order_id)
      references orderr (order_id);

alter table driver
   add constraint FK_DRIVER_REFERENCE_CAR_TEAM foreign key (team_id)
      references car_team (team_id);

alter table grante
   add constraint FK_GRANTE_REFERENCE_INVENTOR foreign key (inventory_id)
      references inventory (inventory_id);

alter table grante
   add constraint FK_GRANTE_REFERENCE_ORDERR foreign key (order_id)
      references orderr (order_id);

alter table indent
   add constraint FK_INDENT_REFERENCE_ORDERR foreign key (order_id)
      references orderr (order_id);

alter table indent
   add constraint FK_INDENT_REFERENCE_LEAD_NUM foreign key (number_id)
      references lead_number (number_id);

alter table inspect
   add constraint FK_INSPECT_REFERENCE_DRIVER foreign key (driver_id)
      references driver (driver_id);

alter table orderr
   add constraint FK_ORDERR_REFERENCE_LEAD foreign key (lead_id)
      references lead (lead_id);

alter table train
   add constraint FK_TRAIN_REFERENCE_DRIVER foreign key (driver_id)
      references driver (driver_id);

