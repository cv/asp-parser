require 'rubygems'
require 'citrus'

p Citrus.load('asp')

p ASP.parse('').get
p ASP.parse('asd').get
p ASP.parse('<% %>').get
p ASP.parse('<% a %>').get
p ASP.parse('asd <% a %> asd').get
p ASP.parse("asd \n<% a %> asd").get
p ASP.parse("asd \n<% a > 5 %> asd").get
p ASP.parse("asd \n<% a \n> 5 %> \nasd").get
p ASP.parse("asd <% first %>\n<% second %> \nasd").get

p ASP.parse(<<ASP).get
<%@ LANGUAGE = VBScript %>
<% Option Explicit %>
<html><head><title>A Larger Sample</title></head>
<body>
<% Dim varFoo
varFoo = Date()
%>
Lorem ipsum <%= varFoo %>
dolor <%=varFoo%> sit amet <% Response.Write("Bar") %>
</body></html>
ASP
