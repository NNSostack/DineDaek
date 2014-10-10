<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/TireRequest.ascx" TagPrefix="trancku" TagName="TireRequest" %>


<asp:Content runat="server"  ContentPlaceHolderID="boxes">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible='<%# Request.QueryString["type"] != null || Request.QueryString["special"] != null %>'>
        <trancku:tireRequest runat="server"  />  
    </asp:PlaceHolder> 
</asp:Content> 

<asp:Content runat="server" ContentPlaceHolderID="container">
    <div class="row">
            <div class="span12 show-grid text-center"><h2>Danmarks billigste dæk.</h2>Garanteret
            </div>
            <div class="span4 show-grid">
                <div class="modal-header text-center" onclick="window.location = '?type=winter'" style="cursor:pointer;">
                    <h2>Vinterdæk</h2>
                </div>
                
            </div>
            <div class="span4 show-grid">
            
                <div class="modal-header text-center" onclick="window.location = '?type=summer'" style="cursor:pointer;">
                    <h2>Sommerdæk</h2>
                </div>
                
            </div>
            <div class="span4 show-grid">
            
                
                <div class="modal-header text-center" onclick="window.location = '?type=allyear'" style="cursor:pointer;">
                    <h2>Helårsdæk</h2>
                </div>
                

            </div>
            <div class="span4 show-grid">
            
                
                <div class="modal-header text-center" onclick="window.location = '?special=1'" style="cursor:pointer;">
                    <h2>Specialdæk</h2>
                    <p>Traktor, lastbil og læsser</p>
                </div>
                

            </div>
        </div>

</asp:Content> 
