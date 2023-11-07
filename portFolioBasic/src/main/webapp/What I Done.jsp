<%@page import="portFolioBasicData.HistoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, portFolioBasicData.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m" class="portFolioBasicData.HistoryBean" scope="page" />
<jsp:setProperty name="m" property="*" />
<%
HistoryDAO memberDAO = new HistoryDAO();
//memberDAO.addMember(m);
List membersList = memberDAO.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록창</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Shortcut</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
					</li>
					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">
							Navigator
						</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="Profile.html">Profile</a></li>
							<li><a class="dropdown-item" href="What I Got.html">What I Got</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
						</ul>
					</li>
					
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
		<%
		 for( int i = 0; i < membersList.size(); i++ ) {
		      HistoryBean bean = (HistoryBean) membersList.get(i);
		%>
		<br><br><br><br><br>
		<table align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">Order</td>
			<td width="7%">From</td>
			<td width="5%">To</td>
			<td width="11%">Where</td>
			<td width="5%">What</td>
		</tr>
		<tr align="center">
			<td><%=bean.getId1()%></td>
			<td><%=bean.getId2()%></td>
			<td><%=bean.getId3()%></td>
			<td><%=bean.getId4()%></td>
			<td><%=bean.getId5()%></td>
		</tr>
		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>
	</table>
	<%
		 }
	%>
	<br><br><br><br><br>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>
