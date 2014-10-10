<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DbaList.ascx.cs" Inherits="Dba_DbaList" %>

<asp:PlaceHolder runat="server" Visible="<%# dataSource.Count == 0  %>">
    <div class="row">
        <div class="span12 show-grid" style="padding: 10px;">
            <div class="span12">
                <h2>Ingen biler til salg i øjeblikket</h2>
            </div>
        </div>
    </div>
</asp:PlaceHolder>


<asp:Repeater runat="server" ID="list">
    <ItemTemplate>
        <div class="row" id="_<%# Eval("Id") %>">
            <div class="span12 show-grid" style="padding: 10px;">

                <div class="span1">
                    <a href="<%# Eval("Url") %>" onclick="$('<%# "#infoContainer" + Container.ItemIndex %>').slideToggle();return false;">
                        <img height="100" width="100" src="<%# ((Trancgu.Dba.Entities.ListItem)Container.DataItem).Image.Source %>"
                            alt="<%# ((Trancgu.Dba.Entities.ListItem)Container.DataItem).Image.Title %>" />
                    </a>
                </div>

                <div class="span6">
                    <div>
                        <a href="<%# Eval("Url") %>" onclick="$('<%# "#infoContainer" + Container.ItemIndex %>').slideToggle();return false;">
                            <%# Eval("Title") %>
                        </a>
                    </div>
                    <div>
                        Pris: <%# Eval("Price") %>
                        <%--<%# Eval("Date") %>--%>
                    </div>
                </div>

                <div class="span4">
                    <input type="button" value="Nummerplade info" style="height: 35px; width: 140px;" onclick="<%# "window.open('" + "http://www.nummerplade.net/soeg/?regnr=" + Eval("LicensePlate") + "')" %>" />
                    <asp:Button OnClientClick='<%# "window.location = \"?priceInfo=" + Eval("Id") + "#_" + Eval("Id") + "\";return false;"%>' runat="server" Text="Byttepris" Height="35" Width="80" />
                    <asp:Button OnClientClick='<%# "window.location = \"?contactInfo=" + Eval("Id") + "#_" + Eval("Id") + "\";return false;"%>' ID="Button2" runat="server" Text="Send kontaktinfo" Height="35" Width="140" />
                </div>
            </div>
        </div>

        <div class="row" style="display: none;" id="<%# "infoContainer" + Container.ItemIndex %>">
            <div class="span12 show-grid" style="padding: 10px;">
                <table class="table table-hover">
                    <asp:Repeater runat="server" DataSource='<%# Eval("Table") %>'>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# Eval("TableHeader") %>
                                </td>
                                <td>
                                    <%# Eval("TableData") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
                <%# Eval("Text") %>
            </div>

        </div>
    </ItemTemplate>

</asp:Repeater>

<asp:PlaceHolder runat="server" Visible='<%# Request.QueryString["contactInfo"] != null  %>'>
    <a id="contactInfoLink" style="display: none;" href="#contactInfo" />
    <script type="text/javascript">
        $(document).ready(function() {
            $("#contactInfoLink").fancybox(
                {
                    width: "350",
                    minHeight: "auto",
                    parent: "form:first" // jQuery selector
                }).trigger('click');
        });
    </script>


    <div id="contactInfo" style="display: none;">
        <div>
            <div class="modal-header">
                <h2>Send kontaktinfo</h2>
                <div class="formInfo">
                    <p>Send dine kontaktinfo og vi vil snarest vende tilbage på din forespørgsel</p>
                </div>
            </div>


            <div class="modal-body">

                <div class="inputs">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactName" ErrorMessage="Du skal skrive dit navn" Display="Dynamic" ValidationGroup="contactInfo" />

                    <asp:Label runat="server" AssociatedControlID="contactName">*Dit navn:</asp:Label>

                    <asp:TextBox runat="server" ID="contactName" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" ErrorMessage="<br/>Du skal skrive din email" Display="Dynamic" ValidationGroup="contactInfo" />

                    <asp:Label ID="Label2" runat="server" AssociatedControlID="contactEmail">*Din e-mailadresse:</asp:Label>

                    <asp:TextBox runat="server" ID="contactEmail" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contactComment" ErrorMessage="<br/>Du skal skrive et spørgsmål eller en kommentar" Display="Dynamic" ValidationGroup="contactInfo" />
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="contactComment">*Dit spørgsmål eller kommentar:</asp:Label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="contactComment" />
                </div>
            </div>

            <div class="modal-footer">

                <div class="buttons">
                    <asp:Button runat="server" Text="Send" OnClick="OnClick" ID="send" ValidationGroup="contactInfo" />
                </div>

            </div>


        </div>

    </div>
</asp:PlaceHolder>

<asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible='<%# Request.QueryString["priceInfo"] != null  %>'>
    <a id="priceInfoLink" style="display: none;" href="#priceInfo" />
    <script type="text/javascript">
        $(document).ready(function() {
            $("#priceInfoLink").fancybox(
                {
                    width: "350",
                    minHeight: "600",
                    parent: "form:first" // jQuery selector
                }).trigger('click');
        });
    </script>


    <div id="priceInfo" style="display: none;">
        <div>
            <div class="modal-header">
                <h2>Byttepris</h2>
                <div class="formInfo">
                    <p>Send info om byttebil og vi vender tilbage med en byttepris</p>
                </div>
            </div>


            <div class="modal-body">

                <div class="inputs">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="priceName" ErrorMessage="Du skal skrive dit navn" Display="Dynamic" ValidationGroup="priceInfo" />
                    <asp:Label runat="server" AssociatedControlID="priceName">*Dit navn:</asp:Label>
                    <asp:TextBox runat="server" ID="priceName" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="priceEmail" ErrorMessage="<br/>Du skal skrive din email" Display="Dynamic" ValidationGroup="priceInfo" />
                    <asp:Label runat="server" AssociatedControlID="priceEmail">*Din e-mailadresse:</asp:Label>
                    <asp:TextBox runat="server" ID="priceEmail" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="priceLicenseplate" ErrorMessage="<br/>Du skal indtaste nummerpladen på bilen" Display="Dynamic" ValidationGroup="priceInfo" />
                    <asp:Label ID="Label4" runat="server" AssociatedControlID="priceLicenseplate">*Nummerplade på bilen:</asp:Label>
                    <asp:TextBox runat="server" ID="priceLicenseplate" />


                    <asp:Label ID="Label7" runat="server" AssociatedControlID="priceFileUpload">Et billede af byttebilen:</asp:Label>
                    <asp:FileUpload runat="server" ID="priceFileUpload" />

                    <asp:Label ID="Label6" runat="server" AssociatedControlID="priceComment">Din kommentar:</asp:Label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="priceComment" />
                </div>
            </div>

            <div class="modal-footer">

                <div class="buttons">
                    <asp:Button runat="server" Text="Send" OnClick="OnClickPrice" ValidationGroup="priceInfo" />
                </div>

            </div>


        </div>

    </div>
</asp:PlaceHolder>



