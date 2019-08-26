/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2019/8/26 ����һ 13:49:01                       */
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
'������Ա';

comment on column c_p.c_p_id is
'������Ա����';

comment on column c_p.team_id is
'��������';

comment on column c_p.address is
'��ַ';

comment on column c_p.phone is
'�绰';

comment on column c_p.occupation is
'ְҵ';

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
'����������Ϣ
�����ֶ�,©д�';

comment on column car_message.m_id is
'������Ϣ��id';

comment on column car_message.m_company is
'������˾
';

comment on column car_message.m_name is
'��������';

comment on column car_message.m_long is
'��ܳ���';

comment on column car_message.m_plate is
'����';

comment on column car_message.m_car is
'�����ͺ�';

comment on column car_message.m_colour is
'������ɫ';

comment on column car_message.m_source is
'������Դ';

comment on column car_message.m_engine is
'�������� 1';

comment on column car_message.fuel is
'��������';

comment on column car_message.make_name is
'���쳧����';

comment on column car_message.tyre is
'�����̥��';

comment on column car_message.tyre_size is
'��̥���';

comment on column car_message.distance is
'�־�';

comment on column car_message.felly is
'���ֳߴ�';

comment on column car_message.m_check is
'�˶�������';

comment on column car_message.m_type is
'������ʽ';

comment on column car_message.m_company_2 is
'����ʡ��˾';

comment on column car_message.beng is
'�Ƿ���� 1�� 2 ��';

comment on column car_message.oil is
'��Ʒ����';

comment on column car_message.coding is
'��������';

comment on column car_message.car_type is
'�������� 
1��������
2.������';

comment on column car_message.m_code is
'ʶ�����';

comment on column car_message.m_engine_2 is
'�������ͺ�';

comment on column car_message.chassis is
'���̺�';

comment on column car_message.mass is
'������';

comment on column car_message.buy is
'�������÷�ʽ  1�ǹ��� 2������';

comment on column car_message.nature is
'�������� 1���� 2 ����';

comment on column car_message.m1 is
'�����ֶ�';

comment on column car_message.m2 is
'�����ֶ�';

comment on column car_message.m3 is
'�����ֶ�';

comment on column car_message.m4 is
'�����ֶ�';

comment on column car_message.m5 is
'�����ֶ�';

comment on column car_message.m6 is
'�����ֶ�';

comment on column car_message.m7 is
'�����ֶ�';

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
'������Ϣ';

comment on column car_team.team_id is
'����ID';

comment on column car_team.m_id is
'������Ϣ��id';

comment on column car_team.team_name is
'��������';

comment on column car_team.company is
'������˾';

comment on column car_team.fax is
'����';

comment on column car_team.phone is
'�绰';

comment on column car_team.address is
'��ַ';

comment on column car_team.team_remark is
'��ע';

comment on column car_team.remark_1 is
'��ע';

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
'������Ϣ';

comment on column distribution.dis_id is
'���͵�����';

comment on column distribution.team_id is
'����ID';

comment on column distribution.order_id is
'���ɳ��ҵ�����
';

comment on column distribution.odd_num is
'����';

comment on column distribution.state is
'״̬';

comment on column distribution.oils is
'��Ʒ';

comment on column distribution.oils_depot is
'�����Ϳ�';

comment on column distribution.Receiving is
'�����Ϳ�';

comment on column distribution.udate is
'��ʼ����';

comment on column distribution.edate is
'��ֹ����';

comment on column distribution.car_num is
'����';

comment on column distribution.driver is
'����ʻ';

comment on column distribution.copilot is
'����ʻ';

comment on column distribution.type is
'����';

comment on column distribution.specification is
'���';

comment on column distribution.weight is
'����';

comment on column distribution.volume is
'���';

comment on column distribution.Pay_cranes is
'���ͺ�λ';

comment on column distribution.postage is
'�ʷ�';

comment on column distribution.distance is
'�˾�';

comment on column distribution.Attribute_19discharge is
'�涨ж��ʱ��';

comment on column distribution.charge is
'�涨װ��ʱ��';

comment on column distribution.compartment is
'�����';

comment on column distribution.temperature is
'���¶�';

comment on column distribution.density is
'�ܶ�';

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
'��ʻԱ��';

comment on column driver.driver_id is
'��ʻԱ����';

comment on column driver.team_id is
'��������';

comment on column driver.picture is
'��Ƭ';

comment on column driver.address is
'��ͥ��ַ';

comment on column driver.license is
'��ʻ֤��';

comment on column driver.sex is
'�Ա�';

comment on column driver.state is
'��ְ״̬ 1 ��ְ 2 δ��ְ';

comment on column driver.native is
'����';

comment on column driver.grade is
'�����ȼ�1 A�� 2 B�� 3C��';

comment on column driver.phone is
'�绰';

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
'���Ź���';

comment on column grante.grant_id is
'���Ź�������';

comment on column grante.inventory_id is
'��������';

comment on column grante.order_id is
'���ɳ��ҵ�����
';

comment on column grante.grant_unit is
'���ŵ�λ';

comment on column grante.grant_date is
'��������';

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
'Ǧ���ջ���';

comment on column indent.indent_id is
'�ջ��������';

comment on column indent.order_id is
'���ɳ��ҵ�����
';

comment on column indent.number_id is
'�εĺ��������';

comment on column indent.indent_date is
'�ջ�����';

comment on column indent.indent_1 is
'�����ֶ�';

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
'�����';

comment on column inspect.inspect_id is
'�������';

comment on column inspect.driver_id is
'����';

comment on column inspect.inspect_date is
'ʱ��';

comment on column inspect.site is
'�ص�';

comment on column inspect.content is
'����';

comment on column inspect.marks is
'�۷����';

comment on column inspect.organization is
'������';

comment on column inspect.abarbeitung is
'�������';

comment on column inspect.result is
'���';

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
'����';

comment on column inventory.inventory_id is
'��������';

comment on column inventory.num is
'���';

comment on column inventory.state is
'ʹ��״̬
1����
2��ʹ��';

comment on column inventory.send is
'���͵�id';

comment on column inventory.motorcade is
'��������';

comment on column inventory.sealing is
'ʩ��λ��';

comment on column inventory.sealing_unti is
'ʩ�ⵥλ';

comment on column inventory.seal_unti is
'��ⵥλ';

comment on column inventory.in_state is
'״̬';

comment on column inventory.remarks is
'��ע';

comment on column inventory.inventory_1 is
'��ע';

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
'�ɹ���';

comment on column lead.lead_id is
'Ǧ��id';

comment on column lead.lead_date is
'��������';

comment on column lead.lead_cont is
'��������';

comment on column lead.lead_use is
'Ǧ��ʹ�÷�ʽ';

comment on column lead.lead_type is
'Ǧ������� 1.�ط� 2,����';

comment on column lead.lead_state is
'����״̬ 1����ˣ�2�����գ�3������';

comment on column lead.lead_phone is
'�ֻ���';

comment on column lead.postcode is
'�ʱ�';

comment on column lead.address is
'��ַ';

comment on column lead.apply is
'�����';

comment on column lead.lead1 is
'�����ֶ�';

comment on column lead.oils_depot is
'���뵥λ';

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
'�Ŷ�';

comment on column lead_number.number_id is
'�εĺ��������';

comment on column lead_number.number_begin is
'��ʼ���';

comment on column lead_number.number_end is
'��ֹ���';

comment on column lead_number.number_2 is
'�����ֶ�';

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
'������';

comment on column orderr.order_id is
'���ɳ��ҵ�����
';

comment on column orderr.lead_id is
'Ǧ��id';

comment on column orderr.order_describe is
'�������ҵ�����
';

comment on column orderr.order_batch is
'�������κ�';

comment on column orderr.order_date is
'��������
';

comment on column orderr.order_number is
'��������';

comment on column orderr.order_state is
'����״̬
1�����ɶ�����2�����ѷ�����3����������';

comment on column orderr.order_1 is
'�����ֶ�';

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
'��ѵ��˾';

comment on column train.train_id is
'��ѵ��˾������';

comment on column train.driver_id is
'��ʻԱ����';

comment on column train.train_date is
'��ѵʱ��';

comment on column train.train_address is
'��ѵ�ص�';

comment on column train.train_name is
'��ѵ����';

comment on column train.begin is
'��ʼʱ��';

comment on column train.end is
'����ʱ��';

comment on column train.train_type is
'��ѵ����';

comment on column train.lecturer is
'��ʦ';

comment on column train.content is
'����';

comment on column train.flag is
'���
1.���
2.δ���';

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

