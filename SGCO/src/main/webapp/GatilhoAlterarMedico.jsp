<%@page import="dao.MedicoDao"%>
<jsp:useBean id="m" class="tabelas.TbMedico"></jsp:useBean>
<jsp:setProperty property="*" name ="m"/>
<%
    int i = MedicoDao.updateMedico(m);
    response.sendRedirect("ConsultarMedico.jsp");
    
%>
