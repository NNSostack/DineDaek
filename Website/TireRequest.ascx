<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TireRequest.ascx.cs" Inherits="TireRequest" %>
<%@ Register Src="~/TireType.ascx" TagPrefix="trancku" TagName="tireType" %>

<style type="text/css">

    .modal-body {
        max-height: 150px;
    }
    

    .floatleft {
        float: left;
    }

    .dd {
        float: left;
        width: 65px;
    }

    .lineheight {
        line-height: 30px;
    }

    .count {
        width: 70px;
    }
</style>


<asp:PlaceHolder runat="server" Visible="false" ID="thanx">

    <div id="thanks">
        Tak for din forespørgsel. Vi vender tilbage snarest.
    </div>
</asp:PlaceHolder>

<asp:Panel runat="server" DefaultButton="send" ID="form">
    <div class="modal">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="window.location='?start'" >×</button>
            <h2>Forespørg på dæk</h2>
        </div>

        <div class="modal-body">

            <div class="inputs">

                <trancku:tireType runat="server" ID="tireType" />

                <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="<br/>Du skal indtaste dit navn" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="name" Text="Dit navn*" />
                <asp:TextBox runat="server" ID="name" />

                <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="<br/>Du skal indtaste din email" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator runat="server" OnServerValidate="OnServerValidate" Display="Dynamic" ErrorMessage="<br/>Den indtastede email er ikke gyldig"></asp:CustomValidator>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="email" Text="Din email*" />
                <asp:TextBox runat="server" ID="email" />

                <asp:Label ID="Label4" runat="server" AssociatedControlID="comment" Text="Evt. kommentar" />
                <asp:TextBox runat="server" ID="comment" TextMode="MultiLine" />

                <asp:TextBox runat="server" ID="hidden" Style="display: none;" />
            </div>


            <div class="clearfix"></div>
        </div>
        <div class="modal-footer">

            <div class="buttons">
                <asp:Button runat="server" CssClass="btn btn-primary"  Text="Send" Style="float: right;" CausesValidation="true" OnClick="OnClick" ID="send" />
            </div>
        </div>
    </div>
</asp:Panel>
