<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	// 模板地址
	String templateUrl = request.getScheme() + "://" + request.getHeader("host") +request.getContextPath()+((Map<String,Object>)(((Map<String,Object>)request.getAttribute("init")).get("webSite"))).get("template");
	request.setAttribute("url", templateUrl);
	request.setAttribute("rurl",request.getScheme() + "://" + request.getHeader("host")+ request.getContextPath()+"/");
	String suffix="";
	if(request.getContextPath()+((Map<String,Object>)(((Map<String,Object>)request.getAttribute("init")).get("webSite"))).get("pseudo_static")!=null){
		suffix=".html";
	}
	request.setAttribute("suffix", suffix);
%>