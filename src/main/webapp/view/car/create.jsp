<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>新增车队信息</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/car/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>车队信息添加</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">车队名称:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="team_name" placeholder="车队名称"/>
                          </div>
                          <label class="col-sm-2 control-label" for="">所属公司</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="company" placeholder="所属公司"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">传真:</label>
                          <div class="col-sm-4">
                              <input class="form-control" type="text" name="fax" placeholder="传真"/>
                          </div>
                           <label class="col-sm-2 control-label" for="">电话:</label>
                           <div class="col-sm-4">
                               <input class="form-control" type="number"  name="phone" />
                           </div>
                       </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="">地址:</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="address" placeholder="传真"/>
                            </div>
                            <label class="col-sm-2 control-label" for="">备注:</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text"  name="team_remark" />
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
                              	<input type="reset" value="清空" class="btn btn-danger" id="resetForm"/>
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