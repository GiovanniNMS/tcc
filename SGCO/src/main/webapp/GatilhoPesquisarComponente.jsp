<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@ page import="java.util.*" %> 
<%@ page import="tabelas.TbComponentes" %>
<%@ page import="dao.ComponentesDao" %>

<jsp:useBean id="c" class="tabelas.TbComponentes" />
<jsp:setProperty property="*" name="c" />

<%
    // Recuperar par�metros da requisi��o
    String tipoPesquisa = request.getParameter("tipoPesquisa");
    String valorPesquisa = request.getParameter("valorPesquisa");

    // Lista para armazenar os resultados da pesquisa
    TbComponentes componentes = null;

    // Verificar se os par�metros de pesquisa est�o presentes
    if (tipoPesquisa != null && valorPesquisa != null) {
        if (tipoPesquisa.equals("Codigo")) {
            // Tratar a pesquisa por C�digo (supondo que o m�todo seja est�tico)
            int valorPesquisaInt = Integer.parseInt(valorPesquisa);
             componentes = ComponentesDao.getRegistroByCodigo(valorPesquisaInt);
             response.sendRedirect("ConsultarComponentes.jsp");
        } else if (tipoPesquisa.equals("Descricao")) {
            // Tratar a pesquisa por Descri��o (supondo que o m�todo seja est�tico)
             componentes = ComponentesDao.getRegistroByNome(valorPesquisa);
             response.sendRedirect("ConsultarComponentes.jsp");

        } else if (tipoPesquisa.equals("CirurgiaUtilizada")) {
            // Tratar a pesquisa por Cirurgia Utilizada (supondo que o m�todo seja est�tico)
             componentes = ComponentesDao.getRegistroByCirurgiaUtilizada(valorPesquisa);
             response.sendRedirect("ConsultarComponentes.jsp");

        }
    }

    // Definir a lista como um atributo de solicita��o para uso no JSP
    
%>
