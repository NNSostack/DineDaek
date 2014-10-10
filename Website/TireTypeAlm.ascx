<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TireTypeAlm.ascx.cs" Inherits="TireTypeAlm" %>

<asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="OnTireTypeServerValidate" Display="Dynamic" ErrorMessage="Du skal vælge en dæktype"></asp:CustomValidator>
<asp:Label ID="Label5" runat="server" Text="Dæktype" AssociatedControlID="ddTireType" />
<asp:DropDownList runat="server" ID="ddTireType">
    <asp:ListItem Text="Vælg dæktype..." />
    <asp:ListItem Text="Vinterdæk" />
    <asp:ListItem Text="Sommerdæk" />
    <asp:ListItem Text="Helårsdæk" />
</asp:DropDownList>


<div class="clearfix"></div>


<asp:Label ID="Label3" runat="server" Text="Dækmærke" AssociatedControlID="ddTireMake" />
<asp:DropDownList runat="server" ID="ddTireMake">
    <asp:ListItem Text="Alle" />
    <asp:ListItem Text="Accelera" />
    <asp:ListItem Text="Achilles" />
    <asp:ListItem Text="Aeolus" />
    <asp:ListItem Text="Atturo" />
    <asp:ListItem Text="Avon" />
    <asp:ListItem Text="BF Goodrich" />
    <asp:ListItem Text="Bandag" />
    <asp:ListItem Text="Barum" />
    <asp:ListItem Text="Bridgestone" />
    <asp:ListItem Text="Continental" />
    <asp:ListItem Text="Cooper" />
    <asp:ListItem Text="Dayton" />
    <asp:ListItem Text="Debica" />
    <asp:ListItem Text="Double Star" />
    <asp:ListItem Text="Dunlop" />
    <asp:ListItem Text="Duro" />
    <asp:ListItem Text="Durun" />
    <asp:ListItem Text="Effiplus" />
    <asp:ListItem Text="Event Tyres" />
    <asp:ListItem Text="Falken" />
    <asp:ListItem Text="Federal" />
    <asp:ListItem Text="Firestone" />
    <asp:ListItem Text="Fulda" />
    <asp:ListItem Text="GT Radial" />
    <asp:ListItem Text="General" />
    <asp:ListItem Text="Gerutti" />
    <asp:ListItem Text="Gislaved" />
    <asp:ListItem Text="GoldenTyre" />
    <asp:ListItem Text="Goodride" />
    <asp:ListItem Text="Goodyear" />
    <asp:ListItem Text="Hankook" />
    <asp:ListItem Text="Heidenau" />
    <asp:ListItem Text="Heissrunderneuerung BRW" />
    <asp:ListItem Text="High Performer" />
    <asp:ListItem Text="Import" />
    <asp:ListItem Text="Infinity" />
    <asp:ListItem Text="Insa Turbo" />
    <asp:ListItem Text="Interstate" />
    <asp:ListItem Text="Kaltrunderneuerung" />
    <asp:ListItem Text="Kelly" />
    <asp:ListItem Text="Kenda" />
    <asp:ListItem Text="King Meiler" />
    <asp:ListItem Text="Kingstar" />
    <asp:ListItem Text="Kleber" />
    <asp:ListItem Text="Kormoran" />
    <asp:ListItem Text="Kumho" />
    <asp:ListItem Text="Leao" />
    <asp:ListItem Text="Linglong" />
    <asp:ListItem Text="Maloya" />
    <asp:ListItem Text="Marangoni" />
    <asp:ListItem Text="Marshal" />
    <asp:ListItem Text="Matador" />
    <asp:ListItem Text="Maxxis" />
    <asp:ListItem Text="Mentor" />
    <asp:ListItem Text="Michelin" />
    <asp:ListItem Text="Michelin Collection" />
    <asp:ListItem Text="Michelin Collection Tubes" />
    <asp:ListItem Text="Michelin Remix" />
    <asp:ListItem Text="Mickey Thompson" />
    <asp:ListItem Text="Nankang" />
    <asp:ListItem Text="Nexen" />
    <asp:ListItem Text="Nokian" />
    <asp:ListItem Text="Nortenha" />
    <asp:ListItem Text="Novex" />
    <asp:ListItem Text="Ovation" />
    <asp:ListItem Text="Petlas" />
    <asp:ListItem Text="Pirelli" />
    <asp:ListItem Text="Pneumant" />
    <asp:ListItem Text="Recip" />
    <asp:ListItem Text="Riken" />
    <asp:ListItem Text="Roadstone" />
    <asp:ListItem Text="Rockstone" />
    <asp:ListItem Text="Rotalla" />
    <asp:ListItem Text="Sagitar" />
    <asp:ListItem Text="Sailun" />
    <asp:ListItem Text="Sava" />
    <asp:ListItem Text="Semperit" />
    <asp:ListItem Text="Sonny" />
    <asp:ListItem Text="Star Performer" />
    <asp:ListItem Text="Starco" />
    <asp:ListItem Text="Starfire" />
    <asp:ListItem Text="Sunny" />
    <asp:ListItem Text="Teamstar" />
    <asp:ListItem Text="Tigar" />
    <asp:ListItem Text="Torque" />
    <asp:ListItem Text="Toyo" />
    <asp:ListItem Text="Unigrip" />
    <asp:ListItem Text="Uniroyal" />
    <asp:ListItem Text="Vredestein" />
    <asp:ListItem Text="Westlake" />
    <asp:ListItem Text="Winter Tact" />
    <asp:ListItem Text="Yokohama" />
    <asp:ListItem Text="Zeetex" />
</asp:DropDownList>

<div class="clearfix"></div>
<asp:Label ID="Label1" runat="server" Text="Dækdimmensioner" CssClass="floatleft" AssociatedControlID="tireDim" />
<div class="clearfix"></div>
<asp:DropDownList runat="server" CssClass="dd" ID="tireDim">
    <asp:ListItem Text="T125" />

    <asp:ListItem Text="T185" />

    <asp:ListItem Text="T155" />

    <asp:ListItem Text="T135" />

    <asp:ListItem Text="T145" />

    <asp:ListItem Text="T115" />

    <asp:ListItem Text="4.00/4.50" />

    <asp:ListItem Text="4.00" />

    <asp:ListItem Text="4.00x19" />

    <asp:ListItem Text="4.25x19" />

    <asp:ListItem Text="4.50x17" />

    <asp:ListItem Text="4.50x19" />

    <asp:ListItem Text="4.75/5.25" />

    <asp:ListItem Text="4.75/5.00" />

    <asp:ListItem Text="4.75x16" />

    <asp:ListItem Text="4.75x18" />

    <asp:ListItem Text="5.00x21" />

    <asp:ListItem Text="5.00x17" />

    <asp:ListItem Text="5.00x19" />

    <asp:ListItem Text="5.00" />

    <asp:ListItem Text="5.00x16" />

    <asp:ListItem Text="5.25x18" />

    <asp:ListItem Text="5.25/6.00" />

    <asp:ListItem Text="5.50/6.00" />

    <asp:ListItem Text="5.50x16" />

    <asp:ListItem Text="5.50" />

    <asp:ListItem Text="5.50x18" />

    <asp:ListItem Text="5.50x20" />

    <asp:ListItem Text="5.50x17" />

    <asp:ListItem Text="5.70x16" />

    <asp:ListItem Text="5.90" />

    <asp:ListItem Text="6.00x16" />

    <asp:ListItem Text="6.00x17" />

    <asp:ListItem Text="6.00x19" />

    <asp:ListItem Text="6.00x21" />

    <asp:ListItem Text="6.00/6.50" />

    <asp:ListItem Text="6.00" />

    <asp:ListItem Text="6.00x18" />

    <asp:ListItem Text="6.00x20" />

    <asp:ListItem Text="6.20" />

    <asp:ListItem Text="6.40" />

    <asp:ListItem Text="6.40/7.00" />

    <asp:ListItem Text="6.50" />

    <asp:ListItem Text="6.50x17" />

    <asp:ListItem Text="6.50/7.00" />

    <asp:ListItem Text="6.50x18" />

    <asp:ListItem Text="6.50x20" />

    <asp:ListItem Text="6.50x16" />

    <asp:ListItem Text="6.70" />

    <asp:ListItem Text="6.70x16" />

    <asp:ListItem Text="7.00" />

    <asp:ListItem Text="7.00x20" />

    <asp:ListItem Text="7.00x17" />

    <asp:ListItem Text="7.00x19" />

    <asp:ListItem Text="7.00x21" />

    <asp:ListItem Text="7.00x18" />

    <asp:ListItem Text="7.25" />

    <asp:ListItem Text="7.50" />

    <asp:ListItem Text="10" />

    <asp:ListItem Text="11x45" />

    <asp:ListItem Text="12x45" />

    <asp:ListItem Text="12" />

    <asp:ListItem Text="13" />

    <asp:ListItem Text="13x45" />

    <asp:ListItem Text="14" />

    <asp:ListItem Text="14x45" />

    <asp:ListItem Text="15x50" />

    <asp:ListItem Text="15" />

    <asp:ListItem Text="15/16x45" />

    <asp:ListItem Text="15/16" />

    <asp:ListItem Text="16x50" />

    <asp:ListItem Text="17" />

    <asp:ListItem Text="17x50" />

    <asp:ListItem Text="17x400" />

    <asp:ListItem Text="28x9.00" />

    <asp:ListItem Text="30x6.75" />

    <asp:ListItem Text="30x9.50" />

    <asp:ListItem Text="31x10.50" />

    <asp:ListItem Text="31x11.50" />

    <asp:ListItem Text="32x10.50" />

    <asp:ListItem Text="32x4,5" />

    <asp:ListItem Text="32x11.50" />

    <asp:ListItem Text="33x12.50" />

    <asp:ListItem Text="33x6.75" />

    <asp:ListItem Text="33x5" />

    <asp:ListItem Text="33x10.50" />

    <asp:ListItem Text="33x4" />

    <asp:ListItem Text="35x12.50" />

    <asp:ListItem Text="37x12.50" />

    <asp:ListItem Text="115x400" />

    <asp:ListItem Text="125x400" />

    <asp:ListItem Text="125" />

    <asp:ListItem Text="130/140x40" />

    <asp:ListItem Text="130/140" />

    <asp:ListItem Text="130" />

    <asp:ListItem Text="135" />

    <asp:ListItem Text="135x400" />

    <asp:ListItem Text="140" />

    <asp:ListItem Text="145x400" />

    <asp:ListItem Text="145" />

    <asp:ListItem Text="150/160" />

    <asp:ListItem Text="150" />

    <asp:ListItem Text="150/160x40" />

    <asp:ListItem Text="155x400" />

    <asp:ListItem Text="155" />

    <asp:ListItem Text="160" />

    <asp:ListItem Text="165" />

    <asp:ListItem Text="165x400" />

    <asp:ListItem Text="170" />

    <asp:ListItem Text="175" />

    <asp:ListItem Text="180" />

    <asp:ListItem Text="185x16" />

    <asp:ListItem Text="185x400" />

    <asp:ListItem Text="185" />

    <asp:ListItem Text="190" />

    <asp:ListItem Text="195" Selected="True" />

    <asp:ListItem Text="200" />

    <asp:ListItem Text="205" />

    <asp:ListItem Text="210" />

    <asp:ListItem Text="215" />

    <asp:ListItem Text="220" />

    <asp:ListItem Text="225" />

    <asp:ListItem Text="230" />

    <asp:ListItem Text="235" />

    <asp:ListItem Text="240" />

    <asp:ListItem Text="245" />

    <asp:ListItem Text="255" />

    <asp:ListItem Text="260" />

    <asp:ListItem Text="265" />

    <asp:ListItem Text="270" />

    <asp:ListItem Text="275" />

    <asp:ListItem Text="280" />

    <asp:ListItem Text="285" />

    <asp:ListItem Text="295" />

    <asp:ListItem Text="300" />

    <asp:ListItem Text="305" />

    <asp:ListItem Text="315" />

    <asp:ListItem Text="325" />

    <asp:ListItem Text="335" />

    <asp:ListItem Text="345" />

    <asp:ListItem Text="355" />

    <asp:ListItem Text="385" />

    <asp:ListItem Text="400" />

    <asp:ListItem Text="425" />

    <asp:ListItem Text="445" />

    <asp:ListItem Text="475" />

    <asp:ListItem Text="550" />

    <asp:ListItem Text="600" />

    <asp:ListItem Text="650" />

    <asp:ListItem Text="700" />

    <asp:ListItem Text="715x115" />

    <asp:ListItem Text="720x120" />

    <asp:ListItem Text="730x130" />

    <asp:ListItem Text="750x85" />

    <asp:ListItem Text="750" />

    <asp:ListItem Text="760x90" />

    <asp:ListItem Text="765x105" />

    <asp:ListItem Text="775x145" />

    <asp:ListItem Text="820x120" />

    <asp:ListItem Text="835x135" />

    <asp:ListItem Text="880x120" />

    <asp:ListItem Text="895x135" />

    <asp:ListItem Text="935x135" />

</asp:DropDownList>
<div class="floatleft lineheight">&nbsp;/&nbsp;</div>

<asp:DropDownList runat="server" CssClass="dd" ID="tireDim2">



    <asp:ListItem Text="25" />

    <asp:ListItem Text="30" />

    <asp:ListItem Text="35" />

    <asp:ListItem Text="40" />

    <asp:ListItem Text="45" />

    <asp:ListItem Text="50" />

    <asp:ListItem Text="55" />

    <asp:ListItem Text="60" />

    <asp:ListItem Text="65" Selected="True" />

    <asp:ListItem Text="70" />

    <asp:ListItem Text="75" />

    <asp:ListItem Text="80" />

    <asp:ListItem Text="82" />

    <asp:ListItem Text="85" />

    <asp:ListItem Text="90" />

    <asp:ListItem Text="100" />

    <asp:ListItem Text="140" />

    <asp:ListItem Text="160" />

    <asp:ListItem Text="450" />

    <asp:ListItem Text="500" />

    <asp:ListItem Text="525" />

    <asp:ListItem Text="600" />

    <asp:ListItem Text="620" />

    <asp:ListItem Text="650" />

    <asp:ListItem Text="700" />

</asp:DropDownList>
<div class="floatleft lineheight">&nbsp;/&nbsp;</div>


<asp:DropDownList runat="server" CssClass="dd" ID="tireDim3">

    <asp:ListItem Text="6" />

    <asp:ListItem Text="8" />

    <asp:ListItem Text="9" />

    <asp:ListItem Text="10" />

    <asp:ListItem Text="12" />

    <asp:ListItem Text="13" />

    <asp:ListItem Text="14" />

    <asp:ListItem Text="14.5" />

    <asp:ListItem Text="15" Selected="True" />

    <asp:ListItem Text="15.3" />

    <asp:ListItem Text="16" />

    <asp:ListItem Text="16.5" />

    <asp:ListItem Text="17" />

    <asp:ListItem Text="17.5" />

    <asp:ListItem Text="18" />

    <asp:ListItem Text="19" />

    <asp:ListItem Text="20" />

    <asp:ListItem Text="21" />

    <asp:ListItem Text="22" />

    <asp:ListItem Text="22.5" />

    <asp:ListItem Text="23" />

    <asp:ListItem Text="24" />

    <asp:ListItem Text="26" />

    <asp:ListItem Text="28" />

    <asp:ListItem Text="30" />

    <asp:ListItem Text="40" />

    <asp:ListItem Text="45" />

    <asp:ListItem Text="85" />

    <asp:ListItem Text="90" />

    <asp:ListItem Text="105" />

    <asp:ListItem Text="115" />

    <asp:ListItem Text="120" />

    <asp:ListItem Text="130" />

    <asp:ListItem Text="135" />

    <asp:ListItem Text="145" />

    <asp:ListItem Text="340" />

    <asp:ListItem Text="365" />

    <asp:ListItem Text="390" />

    <asp:ListItem Text="400" />

    <asp:ListItem Text="415" />

    <asp:ListItem Text="420A" />

</asp:DropDownList>

<div class="clearfix"></div>
<asp:Label ID="Label2" runat="server" Text="Antal" AssociatedControlID="count" />
<asp:DropDownList runat="server" ID="count" CssClass="count">
    <asp:ListItem Text="1" />

    <asp:ListItem Text="2" />

    <asp:ListItem Text="3" />

    <asp:ListItem Text="4" Selected="True" />

    <asp:ListItem Text="5" />

    <asp:ListItem Text="6" />

    <asp:ListItem Text="7" />

    <asp:ListItem Text="8" />

    <asp:ListItem Text="9" />
    <asp:ListItem Text="10" />

    <asp:ListItem Text="11" />

    <asp:ListItem Text="12" />

    <asp:ListItem Text="13" />

    <asp:ListItem Text="14" />

    <asp:ListItem Text="15" />

    <asp:ListItem Text="16" />

</asp:DropDownList>

