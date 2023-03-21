<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>
<%@ include file="../inc/header_link.jsp"%>
</head>
<body class="hold-transition">
	<div class="wrapper p-5">
		<!-- 로그인 폼  Card Begin -->
		<div class="card card-info">
		    <div class="card-header">
		        <h3 class="card-title">관리자 로그인</h3>
		    </div>
		    <!-- /.card-header -->
		    <!-- form start -->
		    <form class="form-horizontal" id="form1">
		        <div class="card-body">
		            <div class="form-group row">
		                <div class="col">
		                    <input type="text" class="form-control" placeholder="관리자 ID" name="admin_id">
		                </div>
		            </div>
		            <div class="form-group row">
		                <div class="col">
		                    <input type="password" class="form-control" placeholder="Password" name="admin_pass">
		                </div>
		            </div>
		        </div>
		        <!-- /.card-body -->
		        <div class="card-footer">
		            <button type="button" class="btn btn-info" id="bt_login">로그인</button>
		            <button type="button" class="btn btn-default float-right">메인으로</button>
		        </div>
		        <!-- /.card-footer -->
		    </form>
		</div>		
		<!-- 로그인 폼  Card End -->
	</div>
	<!-- ./wrapper -->
	<%@ include file="../inc/footer_link.jsp" %>
<script type="text/javascript">
//비동기 방식으로 하는 로그인 
function login(){
	let formData = $("#form1").serialize();
	$.ajax({
		url:"/admin/rest/login/admin",
		type:"POST",
		data: formData,
		success:function(result, status, xhr){
			alert(result.msg);
			location.href="/admin/main"
		},
		
		error:function(xhr, status, err){
			let json = JSON.parse(xhr.responseText);
			alert(json.msg);
		}
	});
}

$(function(){
	$("#bt_login").click(function(){
		login();		
	});
});

</script>
</body>
</html>







