<%@page import="java.time.LocalDate,com.cg.bean.Employee"
errorPage="errorPage.jsp"
%>
<h1>
Hello,<%= request.getParameter("username") %><%--expressions --%>
</h1>
<hr>

<%! static int count=0; %>
<%= "Page Hit Count "+ ++count %>
<hr>Your host name : <%= request.getRemoteHost() %>
<hr>Your session ID : <%= session.getId() %>
<hr>
<a href="02declaration.jsp">Declaration</a>
<%
	String strUser=request.getParameter("username");
	session.setAttribute("sessionUser", strUser);
%>

 <!--Creating an Employee object and populating it'd properties --> 
 
 <%
  
    Employee employee=new Employee();
    employee.setEmpId(100);
    employee.setEmpName("Rama");
    employee.setEmpSal(55555.55);
 %>


 
 <h2>Displaying Employee Info-2(Tabular Display)</h2>

 <table border="1">
  <tr><th colspan="2">Employee Info</th></tr>
  <tr>
	  <th>Employee Id</th>
	  <th>Employee Name</th>
	  <th>Salary</th>
  </tr>
   <tr>
	  <td><%=employee.getEmpId() %></td>
	  <td><%=employee.getEmpName() %></td>
	  <td><%=employee.getEmpSal() %></td>
  </tr>
 
 </table> 
