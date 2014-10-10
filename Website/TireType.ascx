<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TireType.ascx.cs" Inherits="TireType" %>

<%@ Register Src="~/TireTypeAlm.ascx" TagName="tireTypeAlm" TagPrefix="trancku" %>
<%@ Register Src="~/TireTypeSpecial.ascx" TagName="tireTypeSpecial" TagPrefix="trancku" %>  

<trancku:tireTypeAlm runat="server" ID="alm" Visible='<%# Request.QueryString["type"] != null %>' />
<trancku:tireTypeSpecial runat="server" ID="special" Visible='<%# Request.QueryString["special"] != null %>' />