<%@ page contentType="text/html;charset=GB2312"%>
<HTML>
	<HEAD>
		<TITLE>JSP进度条</TITLE>
	</HEAD>
	<BODY>
		<H2 ALIGN="CENTER">
			JSP进度条
		</H2>
		<TABLE WIDTH="60%" ALIGN="CENTER" BORDER=1>
			<TR>
				<%
					String str = request.getParameter("count");
					int count = 0;
					if (str != null)
						count = Integer.parseInt(str);
					for (int i = 1; i <= count; i++) {
				%>
				<TD WIDTH="10%" BGCOLOR="red">
					&nbsp;
				</TD>
				<%
					}
				%>
				<%
					for (int j = 100; j > count; j--) {
				%>
				<TD WIDTH="10%" BGCOLOR="black">
					&nbsp;
				</TD>
				<%
					}
				%>
			</TR>
		</TABLE>
		<H3 ALIGN="CENTER">
			已完成<%=count * 1%>%
		</H3>
	</BODY>
	<%
		count++;
		if (count <= 100) {
			//每隔一秒钟刷新一次
			String content = 1 + ";URL=progressbar.jsp?count=" + count;
			response.setHeader("Refresh", content);
		}
	%>
</HTML>


