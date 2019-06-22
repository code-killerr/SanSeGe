<%@page import="java.util.List"%>
<%@page import="com.sansege.enuity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
          <%
					UserEntity UserEntity = (UserEntity)session.getAttribute("userDate");
				    if(UserEntity != null){
				    	if("admin".equals(UserEntity.getUserName())){}
			%>
			<a href="SelectAll">查询所有用户信息</a>
			
			<hr/>
			<table style="width: 80%; height=: auto; margin:0,auto;">
					<tr>
						<td>用户ID</td>
						<td>用户名</td>
						<td>密码</td>
						<td>头像</td>
						<td>个人简介</td>
						<td>手机号</td>
						<td>email</td>
						<td>操作</td>
					</tr>
					
						<% List<UserEntity> list = (List)session.getAttribute("list");
									if(list != null && list.size()>0){
										for(UserEntity li : list){
						%>
						<tr>
							<td><%=li.getUseId() %></td>
							<td><%=li.getUserName() %></td>
							<td><%=li.getUserPassword() %></td>
							<td><%=li.getUserHeadpic() %></td>
							<td><%=li.getUserIntroduce() %></td>
							<td><%=li.getUserPhone() %></td>
							<td><%=li.getUserEmail() %></td>
							<td><a href="DeleteUser?userid=<%=li.getUseId()%>">删除</a>修改 </td>
						<% 			}
									}
						%>
					
					</tr>
			</table>
				<%
						} else{
			%>
						<p> 请先登录</p>
			<% 
				} 
			%>


</body>
</html>