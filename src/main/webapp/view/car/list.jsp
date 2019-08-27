<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>车队信息</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<div class="alert alert-success" role="alert">车队管理>>车队信息查看</div>
					<!-- ------------按钮组 start------------ -->
					<div class="col-sm-8">
						<div class="col-sm-4">车辆牌照:<input class="form-control" id="search" name="dataName" value="" type="text" placeholder=""/></div>
						<div class="col-sm-4">车队名称:<input class="form-control" id="search1" name="dataName" value="" type="text" placeholder=""/></div>
						<div class="col-sm-4">所属公司:<input class="form-control" id="search2" name="dataName" value="" type="text" placeholder=""/></div>

					</div>
	                <div class="col-sm-4">
						<div class="col-sm-4">
							<div class="btn-group hidden-xs" role="group">
								<button type="button" class="btn btn-primary" data-toggle="modal" id="create1" name="test/create.jsp">
									<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>查询
								</button>
							 </div>
						</div>
						<div class="col-sm-4">
							<div class="btn-group hidden-xs" role="group">
								<button type="button" class="btn btn-danger" data-toggle="modal" id="delete1" name="car/delete.do">
									<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>清空
								</button>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="btn-group hidden-xs" role="group">
								<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="car/create.jsp">
									<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
								</button>
							</div>
						</div>
	                </div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>车队名称</th>
					                <th>所属公司</th>
					                <th>传真</th>
					                <th>电话</th>
					                <th>车队地址</th>
					                <th>查看车队人员</th>
					                <th>修改</th>
					                <th>添加车队人员</th>
					                <th>车队信息</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" id="" name="ids" value="${e.team_id}"/></td>
						              <%--  <input type="hidden2" name="team_id" value="${e.team_id}"/>--%>
						                <td>${e.team_name}</td>
						                <td>${e.company}</td>
						                <td>${e.fax}</td>
						                <td>${e.phone}</td>
						                <td>${e.address}</td>
						                <td><button type="button" class="btn btn-primary btn-xs">查看车队人员</button></td>
						                <td><button type="button" class="btn btn-primary btn-xs"  id="update" name="car/load.do">修改</button></td>
						                <td><button type="button" class="btn btn-primary btn-xs">添加车队人员</button></td>
						                <td><button type="button" class="btn btn-primary btn-xs">车队信息</button></td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page">${page}
					<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" id="delete" name="car/delete.do">
						<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
					</button></div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
</html>