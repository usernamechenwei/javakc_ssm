<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>数据字典添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/test/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>数据字典基本信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">名称</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="testName" placeholder="姓名"/>
                          </div>
                          <label class="col-sm-2 control-label" for="">年龄</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="number" max="80" min="10" name="testAge" placeholder="年龄"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="">性别</label>
                          <div class="col-sm-4">
                          <zhg:select codeTp="sex" cls="form-control" def="true" name="testSex" ></zhg:select>
                          </div>
                           <label class="col-sm-2 control-label" for="">出生日期</label>
                           <div class="col-sm-4">
                               <input class="form-control" type="date"  name="testDate" />
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