<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>新增铅封采购</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/lead/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>铅封采购基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">申请数量</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="number"min="1" max="2000000000" name="leadCont" placeholder="姓名"/>
                          </div>
                          <label class="col-sm-2 control-label" for="">申请状态</label>
                          <div class="col-sm-4">
                              <zhg:select codeTp="lead_state" cls="form-control" def="true" name="leadState" ></zhg:select>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">申请人手机号</label>
                          <div class="col-sm-4">
                              <input class="form-control" type="text"  name="leadPhone" />
                          </div>
                           <label class="col-sm-2 control-label" for="">铅封使用方式</label>
                           <div class="col-sm-4">
                               <zhg:select codeTp="leadType" cls="form-control" def="true" name="leadType"></zhg:select>
                           </div>
                       </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="">铅封类型</label>
                            <div class="col-sm-4">
                                <zhg:select codeTp="leadUse" cls="form-control" def="true" name="leadUse" ></zhg:select>
                            </div>
                            <label class="col-sm-2 control-label" for="">内部/外部</label>
                            <div class="col-sm-4">
                                <zhg:select codeTp="insideAndOutside" cls="form-control" def="true" name="insideAndOutside" ></zhg:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="">邮政编码</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="postcode" />
                            </div>
                            <label class="col-sm-2 control-label" for="">邮寄地址</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="address" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="">申请人</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="userName" />
                            </div>
                            <label class="col-sm-2 control-label" for="">申请单位</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="oilsDepot" />
                            </div>
                        </div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for=""></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for=""></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>