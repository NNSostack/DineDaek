<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Biler.aspx.cs" Inherits="Biler" %>

<%@ Register Src="~/Dba/DbaList.ascx" TagPrefix="uc1" TagName="DbaList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="container" Runat="Server">
    <div class="row">
        <uc1:DbaList runat="server" ID="DbaList" />
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="boxes" Runat="Server">
</asp:Content>

