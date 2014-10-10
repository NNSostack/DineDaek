<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TireTypeSpecial.ascx.cs" Inherits="TireTypeSpecial" %>

<asp:Label ID="Label3" runat="server" Text="Dækmærke" AssociatedControlID="ddTireMake" />
<asp:DropDownList runat="server" ID="ddTireMake">
    <asp:ListItem Text="Alle" /><asp:ListItem Text="Agrostar" /><asp:ListItem Text="Alliance" /><asp:ListItem Text="Altura" /><asp:ListItem Text="Anlas" /><asp:ListItem Text="Armour" /><asp:ListItem Text="BKT" /><asp:ListItem Text="Belarus" /><asp:ListItem Text="Belshina" /><asp:ListItem Text="Boto" /><asp:ListItem Text="Bridgestone" /><asp:ListItem Text="Camac" /><asp:ListItem Text="Carlisle" /><asp:ListItem Text="Cheng Shin" /><asp:ListItem Text="Continental" /><asp:ListItem Text="Continental DEMO" /><asp:ListItem Text="Cultor" /><asp:ListItem Text="Debica" /><asp:ListItem Text="Deestone" /><asp:ListItem Text="Deli" /><asp:ListItem Text="Dneproshina" /><asp:ListItem Text="Double Coin" /><asp:ListItem Text="Dunlop" /><asp:ListItem Text="Duro" /><asp:ListItem Text="Elastomeric" /><asp:ListItem Text="Emrald" /><asp:ListItem Text="Euro-Grip" /><asp:ListItem Text="Farm King" /><asp:ListItem Text="Firestone" /><asp:ListItem Text="Fulda" /><asp:ListItem Text="Galaxy" /><asp:ListItem Text="Goodyear" /><asp:ListItem Text="Heidenau" /><asp:ListItem Text="Heidenau Spezialschlauch" /><asp:ListItem Text="Import" /><asp:ListItem Text="Ironman" /><asp:ListItem Text="Kenda" /><asp:ListItem Text="Kings Tire" /><asp:ListItem Text="Kleber" /><asp:ListItem Text="Maxxis" /><asp:ListItem Text="Michelin" /><asp:ListItem Text="Mitas" /><asp:ListItem Text="Petlas" /><asp:ListItem Text="Pirelli" /><asp:ListItem Text="Rekord" /><asp:ListItem Text="Rosava" /><asp:ListItem Text="Sava" /><asp:ListItem Text="Security" /><asp:ListItem Text="Seha" /><asp:ListItem Text="Sibur" /><asp:ListItem Text="Solid Plus" /><asp:ListItem Text="Solideal" /><asp:ListItem Text="Starco" /><asp:ListItem Text="Starmaxx" /><asp:ListItem Text="Stomil" /><asp:ListItem Text="Super King" /><asp:ListItem Text="Taifa" /><asp:ListItem Text="Taurus" /><asp:ListItem Text="Titan" /><asp:ListItem Text="Trayal" /><asp:ListItem Text="Trelleborg" /><asp:ListItem Text="Tyrex" /><asp:ListItem Text="VeeRubber" /><asp:ListItem Text="Voltyre" /><asp:ListItem Text="Vredestein" /><asp:ListItem Text="Xin" />
</asp:DropDownList>

<div class="clearfix"></div>
<asp:Label ID="Label1" runat="server" Text="Dækdimmensioner" CssClass="floatleft" AssociatedControlID="tireDim" />
<div class="clearfix"></div>
<asp:DropDownList runat="server" CssClass="dd" ID="tireDim">
<asp:ListItem Text="2.00" />

<asp:ListItem Text="2.25" />

<asp:ListItem Text="2.50" />

<asp:ListItem Text="2.75" />

<asp:ListItem Text="2.80" />

<asp:ListItem Text="3.00" />

<asp:ListItem Text="3.50" />

<asp:ListItem Text="4.00" />

<asp:ListItem Text="4.10" />

<asp:ListItem Text="4.40" />

<asp:ListItem Text="4.50" />

<asp:ListItem Text="4.80" />

<asp:ListItem Text="4.80/4.00" />

<asp:ListItem Text="5" />

<asp:ListItem Text="5.00" />

<asp:ListItem Text="5.20" />

<asp:ListItem Text="5.25" />

<asp:ListItem Text="5.30" />

<asp:ListItem Text="5.50" />

<asp:ListItem Text="5.60" />

<asp:ListItem Text="5.70" />

<asp:ListItem Text="5.90" />

<asp:ListItem Text="6.00" />

<asp:ListItem Text="6L" />

<asp:ListItem Text="6" />

<asp:ListItem Text="6x1.25" />

<asp:ListItem Text="6.40" />

<asp:ListItem Text="6.50" />

<asp:ListItem Text="6.70" />

<asp:ListItem Text="6.90" />

<asp:ListItem Text="7.00" />

<asp:ListItem Text="7" />

<asp:ListItem Text="7x1.75" />

<asp:ListItem Text="7.20" />

<asp:ListItem Text="7.50L" />

<asp:ListItem Text="7.50" />

<asp:ListItem Text="7.60" />

<asp:ListItem Text="8.00" />

<asp:ListItem Text="8" />

<asp:ListItem Text="8.0x75" />

<asp:ListItem Text="8x1.25" />

<asp:ListItem Text="8.15" />

<asp:ListItem Text="8.25" />

<asp:ListItem Text="8.3" />

<asp:ListItem Text="8.30" />

<asp:ListItem Text="8.50" />

<asp:ListItem Text="9.00" />

<asp:ListItem Text="9x3.50" />

<asp:ListItem Text="9" />

<asp:ListItem Text="9.50" />

<asp:ListItem Text="9.5L" />

<asp:ListItem Text="9.5" />

<asp:ListItem Text="10.00" />

<asp:ListItem Text="10.0" />

<asp:ListItem Text="10x3.60" />

<asp:ListItem Text="10" />

<asp:ListItem Text="10x4.50" />

<asp:ListItem Text="10.5" />

<asp:ListItem Text="11x6.00" />

<asp:ListItem Text="11" />

<asp:ListItem Text="11x7.00" />

<asp:ListItem Text="11x4.00" />

<asp:ListItem Text="11.00" />

<asp:ListItem Text="11x7.10" />

<asp:ListItem Text="11.2" />

<asp:ListItem Text="11.5" />

<asp:ListItem Text="11.50" />

<asp:ListItem Text="12.0x12.5" />

<asp:ListItem Text="12.0" />

<asp:ListItem Text="12" />

<asp:ListItem Text="12x5.00" />

<asp:ListItem Text="12.00" />

<asp:ListItem Text="12.4" />

<asp:ListItem Text="12.4/11" />

<asp:ListItem Text="12.5" />

<asp:ListItem Text="12.50x2.25" />

<asp:ListItem Text="12.50x1.75" />

<asp:ListItem Text="13.0" />

<asp:ListItem Text="13x5.00" />

<asp:ListItem Text="13.0x65" />

<asp:ListItem Text="13x6.00" />

<asp:ListItem Text="13x6.50" />

<asp:ListItem Text="13.00" />

<asp:ListItem Text="13" />

<asp:ListItem Text="13.5" />

<asp:ListItem Text="13.6" />

<asp:ListItem Text="14x4.00" />

<asp:ListItem Text="14.0" />

<asp:ListItem Text="14x5.50" />

<asp:ListItem Text="14.00" />

<asp:ListItem Text="14.5" />

<asp:ListItem Text="14.9" />

<asp:ListItem Text="15x6.00" />

<asp:ListItem Text="15.0" />

<asp:ListItem Text="15x4.5" />

<asp:ListItem Text="15.5" />

<asp:ListItem Text="16x6" />

<asp:ListItem Text="16x7.50" />

<asp:ListItem Text="16x7.00" />

<asp:ListItem Text="16x6.50" />

<asp:ListItem Text="16x9.50" />

<asp:ListItem Text="16x6.00" />

<asp:ListItem Text="16x8.00" />

<asp:ListItem Text="16.00" />

<asp:ListItem Text="16.0" />

<asp:ListItem Text="16.5x6.50" />

<asp:ListItem Text="16.5" />

<asp:ListItem Text="16.9" />

<asp:ListItem Text="17x8.00" />

<asp:ListItem Text="17.5L" />

<asp:ListItem Text="17.5" />

<asp:ListItem Text="18.00" />

<asp:ListItem Text="18x7.00" />

<asp:ListItem Text="18x9.50" />

<asp:ListItem Text="18x7.50" />

<asp:ListItem Text="18x8.50" />

<asp:ListItem Text="18x11.00" />

<asp:ListItem Text="18x6.50" />

<asp:ListItem Text="18x7" />

<asp:ListItem Text="18.0" />

<asp:ListItem Text="18.4" Selected="True" />

<asp:ListItem Text="18.5x8.50" />

<asp:ListItem Text="19.0" />

<asp:ListItem Text="19x8.00" />

<asp:ListItem Text="19.5L" />

<asp:ListItem Text="20x10.00" />

<asp:ListItem Text="20x11.00" />

<asp:ListItem Text="20x7.00" />

<asp:ListItem Text="20.00" />

<asp:ListItem Text="20.0" />

<asp:ListItem Text="20x12.00" />

<asp:ListItem Text="20x8.00" />

<asp:ListItem Text="20.5x8.00" />

<asp:ListItem Text="20.5" />

<asp:ListItem Text="20.8" />

<asp:ListItem Text="21x8.00" />

<asp:ListItem Text="21x7.00" />

<asp:ListItem Text="21x4.00" />

<asp:ListItem Text="21x12.00" />

<asp:ListItem Text="21x11.00" />

<asp:ListItem Text="21x10.00" />

<asp:ListItem Text="21x9.00" />

<asp:ListItem Text="21x8" />

<asp:ListItem Text="22x7.00" />

<asp:ListItem Text="22x12.00" />

<asp:ListItem Text="22x8.00" />

<asp:ListItem Text="22x10.00" />

<asp:ListItem Text="22x9.50" />

<asp:ListItem Text="22x11.00" />

<asp:ListItem Text="22x4.50" />

<asp:ListItem Text="22x8.50" />

<asp:ListItem Text="22.5x10.00" />

<asp:ListItem Text="23x11.00" />

<asp:ListItem Text="23x10.00" />

<asp:ListItem Text="23x9.00" />

<asp:ListItem Text="23x9" />

<asp:ListItem Text="23x10.50" />

<asp:ListItem Text="23x9.50" />

<asp:ListItem Text="23x5.00" />

<asp:ListItem Text="23x8.50" />

<asp:ListItem Text="23.1" />

<asp:ListItem Text="23.5" />

<asp:ListItem Text="23.5x8.00" />

<asp:ListItem Text="24x11.00" />

<asp:ListItem Text="24x8.50" />

<asp:ListItem Text="24x12.00" />

<asp:ListItem Text="24x13.00" />

<asp:ListItem Text="24x9.00" />

<asp:ListItem Text="24x10.50" />

<asp:ListItem Text="24x8.00" />

<asp:ListItem Text="24x10.00" />

<asp:ListItem Text="24.5" />

<asp:ListItem Text="25x8.50" />

<asp:ListItem Text="25x8.00" />

<asp:ListItem Text="25x10.00" />

<asp:ListItem Text="25x11.00" />

<asp:ListItem Text="25x12.00" />

<asp:ListItem Text="25x6.00" />

<asp:ListItem Text="25x12.50" />

<asp:ListItem Text="26x12.00" />

<asp:ListItem Text="26" />

<asp:ListItem Text="26.5x14.00" />

<asp:ListItem Text="26.5" />

<asp:ListItem Text="27x8.50" />

<asp:ListItem Text="27x9.50" />

<asp:ListItem Text="27x10.00" />

<asp:ListItem Text="27x12.00" />

<asp:ListItem Text="27x10.50" />

<asp:ListItem Text="28x9.00" />

<asp:ListItem Text="28x12.50" />

<asp:ListItem Text="28x9" />

<asp:ListItem Text="28.1" />

<asp:ListItem Text="29x12.00" />

<asp:ListItem Text="29x3.00" />

<asp:ListItem Text="29x12.50" />

<asp:ListItem Text="30x9.50" />

<asp:ListItem Text="30.5L" />

<asp:ListItem Text="30.5" />

<asp:ListItem Text="31x10.50" />

<asp:ListItem Text="31x11.00" />

<asp:ListItem Text="31x12.50" />

<asp:ListItem Text="31x13.50" />

<asp:ListItem Text="31x15.50" />

<asp:ListItem Text="33x12.50" />

<asp:ListItem Text="33x15.50" />

<asp:ListItem Text="33x4.00" />

<asp:ListItem Text="34x3.50" />

<asp:ListItem Text="36x13.50" />

<asp:ListItem Text="36x3.50" />

<asp:ListItem Text="90" />

<asp:ListItem Text="100" />

<asp:ListItem Text="110" />

<asp:ListItem Text="125" />

<asp:ListItem Text="135" />

<asp:ListItem Text="145" />

<asp:ListItem Text="155" />

<asp:ListItem Text="160" />

<asp:ListItem Text="165" />

<asp:ListItem Text="175" />

<asp:ListItem Text="180" />

<asp:ListItem Text="185" />

<asp:ListItem Text="195" />

<asp:ListItem Text="200x50" />

<asp:ListItem Text="200" />

<asp:ListItem Text="205" />

<asp:ListItem Text="210" />

<asp:ListItem Text="212" />

<asp:ListItem Text="215" />

<asp:ListItem Text="220" />

<asp:ListItem Text="225" />

<asp:ListItem Text="230" />

<asp:ListItem Text="235" />

<asp:ListItem Text="240" />

<asp:ListItem Text="245" />

<asp:ListItem Text="250" />

<asp:ListItem Text="255" />

<asp:ListItem Text="260" />

<asp:ListItem Text="265" />

<asp:ListItem Text="270" />

<asp:ListItem Text="275" />

<asp:ListItem Text="280" />

<asp:ListItem Text="295" />

<asp:ListItem Text="300" />

<asp:ListItem Text="310" />

<asp:ListItem Text="315" />

<asp:ListItem Text="320" />

<asp:ListItem Text="335" />

<asp:ListItem Text="340" />

<asp:ListItem Text="350" />

<asp:ListItem Text="355" />

<asp:ListItem Text="360" />

<asp:ListItem Text="365" />

<asp:ListItem Text="380" />

<asp:ListItem Text="385" />

<asp:ListItem Text="400" />

<asp:ListItem Text="400x100" />

<asp:ListItem Text="405" />

<asp:ListItem Text="420" />

<asp:ListItem Text="425" />

<asp:ListItem Text="440" />

<asp:ListItem Text="445" />

<asp:ListItem Text="455" />

<asp:ListItem Text="460" />

<asp:ListItem Text="480" />

<asp:ListItem Text="500" />

<asp:ListItem Text="520" />

<asp:ListItem Text="525" />

<asp:ListItem Text="540" />

<asp:ListItem Text="550" />

<asp:ListItem Text="560" />

<asp:ListItem Text="580" />

<asp:ListItem Text="600" />

<asp:ListItem Text="620" />

<asp:ListItem Text="650" />

<asp:ListItem Text="690" />

<asp:ListItem Text="700" />

<asp:ListItem Text="710" />

<asp:ListItem Text="750" />

<asp:ListItem Text="800" />

<asp:ListItem Text="900" />

<asp:ListItem Text="1100" />

</asp:DropDownList>
<div class="floatleft lineheight">&nbsp;/&nbsp;</div>

<asp:DropDownList runat="server" CssClass="dd" ID="tireDim2">


    <asp:ListItem Text="" />

<asp:ListItem Text="7" />

<asp:ListItem Text="8" />

<asp:ListItem Text="9" />

<asp:ListItem Text="10" />

<asp:ListItem Text="11" />

<asp:ListItem Text="12" />

<asp:ListItem Text="13" />

<asp:ListItem Text="14" />

<asp:ListItem Text="15" />

<asp:ListItem Text="18" />

<asp:ListItem Text="40" />

<asp:ListItem Text="45" />

<asp:ListItem Text="50" />

<asp:ListItem Text="55" />

<asp:ListItem Text="60" />

<asp:ListItem Text="65" />

<asp:ListItem Text="70" />

<asp:ListItem Text="75" />

<asp:ListItem Text="80" />

<asp:ListItem Text="85" />

<asp:ListItem Text="90" />

<asp:ListItem Text="95" />

<asp:ListItem Text="120" />

<asp:ListItem Text="180" />


</asp:DropDownList>
<div class="floatleft lineheight">&nbsp;/&nbsp;</div>


<asp:DropDownList runat="server" CssClass="dd" ID="tireDim3">

                                                          <asp:ListItem Text="" />

<asp:ListItem Text="" />

<asp:ListItem Text="2.25" />

<asp:ListItem Text="3" />

<asp:ListItem Text="4" />

<asp:ListItem Text="5" />

<asp:ListItem Text="6" />

<asp:ListItem Text="6.50" />

<asp:ListItem Text="7" />

<asp:ListItem Text="8" />

<asp:ListItem Text="9" />

<asp:ListItem Text="10" />

<asp:ListItem Text="11" />

<asp:ListItem Text="12" />

<asp:ListItem Text="13" />

<asp:ListItem Text="14" />

<asp:ListItem Text="14.5" />

<asp:ListItem Text="15" />

<asp:ListItem Text="15.3" />

<asp:ListItem Text="15.5" />

<asp:ListItem Text="16" />

<asp:ListItem Text="16.5" />

<asp:ListItem Text="17" />

<asp:ListItem Text="17.5" />

<asp:ListItem Text="18" />

<asp:ListItem Text="19" />

<asp:ListItem Text="19.5" />

<asp:ListItem Text="20" />

<asp:ListItem Text="22" />

<asp:ListItem Text="22.5" />

<asp:ListItem Text="23" />

<asp:ListItem Text="24" />

<asp:ListItem Text="25" />

<asp:ListItem Text="26" Selected="True" />

<asp:ListItem Text="26.5" />

<asp:ListItem Text="27" />

<asp:ListItem Text="28" />

<asp:ListItem Text="29" />

<asp:ListItem Text="30" />

<asp:ListItem Text="30.5" />

<asp:ListItem Text="32" />

<asp:ListItem Text="34" />

<asp:ListItem Text="36" />

<asp:ListItem Text="38" />

<asp:ListItem Text="42" />

<asp:ListItem Text="44" />

<asp:ListItem Text="46" />

<asp:ListItem Text="48" />

<asp:ListItem Text="50" />

<asp:ListItem Text="54" />

<asp:ListItem Text="508" />


</asp:DropDownList>

<div class="clearfix"></div>
<asp:Label ID="Label2" runat="server" Text="Antal" AssociatedControlID="count" />
<asp:DropDownList runat="server" ID="count" CssClass="count">
    <asp:ListItem Text="1" />

    <asp:ListItem Text="2" Selected="True" />

    <asp:ListItem Text="3" />

    <asp:ListItem Text="4"  />

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

