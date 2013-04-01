<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="view.aspx.vb" Inherits="Vistor_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
here you can browse player records!<br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NBAPlayer %>" 
        SelectCommand="SELECT [PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Passing], [Speed], [Dunking] FROM [NBA Player Rating]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerName" 
        DataSourceID="SqlDataSource1" Width="573px" PageSize="6" GridLines="None"
        CssClass="cssgridview" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr">
        <Columns>
            <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" 
                SortExpression="PlayerName" />
            <asp:BoundField DataField="PlayerPosition" HeaderText="PlayerPosition" 
                SortExpression="PlayerPosition" />
            <asp:BoundField DataField="PlayerRating" HeaderText="PlayerRating" 
                SortExpression="PlayerRating" />
            <asp:BoundField DataField="PlayerTeam" HeaderText="PlayerTeam" 
                SortExpression="PlayerTeam" />
            <asp:BoundField DataField="MidRangeShooting" HeaderText="MidRangeShooting" 
                SortExpression="MidRangeShooting" />
            <asp:BoundField DataField="LongRangeShooting" HeaderText="LongRangeShooting" 
                SortExpression="LongRangeShooting" />
            <asp:BoundField DataField="Defense" HeaderText="Defense" 
                SortExpression="Defense" />
            <asp:BoundField DataField="Physical" HeaderText="Physical" 
                SortExpression="Physical" />
            <asp:BoundField DataField="Passing" HeaderText="Passing" 
                SortExpression="Passing" />
            <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
            <asp:BoundField DataField="Dunking" HeaderText="Dunking" 
                SortExpression="Dunking" />
        </Columns>
    </asp:GridView>
&nbsp;

</asp:Content>

