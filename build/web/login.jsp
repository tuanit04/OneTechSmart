<%@page import="util.StringUtil"%>
?<!-- Thi?t k? nguyên m?u giao di?n login -->

<html>
	<head>
		<title>??ng nh?p</title>
		<link href="styles/login.css" rel="stylesheet" style="text/css"/>
		<script language="JavaScript" src="js/login.js"></script>
		
	
	</head>
	
	
	<body>
		<div id="loginview" class="loginview">
			<form name="frmLogin" action="login" method="post">
				<table cellspacing=0>
					<tr>
						<th colspan=2>??ng nh?p</th>
					</tr>
					
					<tr>
						<td class="lc">Tên ??ng nh?p:</td>
                                                <td><input type="text" size="25" name="username" value="<%=StringUtil.getString(request.getParameter("username"))%>"/></td>
					</tr>
					
					<tr>
						<td class="lc">M?t kh?u:</td>
                                                <td><input type="password" size="25" name="password" value="<%=StringUtil.getString(request.getParameter("password"))%>"/></td>
					</tr>
					
					<tr>
						<td class="lc">
							<input type="checkbox" id="chkSave"/>
						</td>
						<td>
							<label for="chkSave">
								L?u thông tin ??ng nh?p?
							</label>
						</td>
					</tr>
					
					<tr>
						<td colspan=2 align="center">
							<a href="#">Quên m?t kh?u?</a>&nbsp;|&nbsp;
							<a href="#">Tài kho?n?</a>
						</td>
					</tr>
					
					<tr>
						<td colspan=2 align="center">
                                                    <input type="submit" value="??ng nh?p" />
							<input type="button" value="Thoát"/>
						</td>
					</tr>
					
					<tr>
						<td colspan=2 align="right">
							<a href="#">English</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>

</html>