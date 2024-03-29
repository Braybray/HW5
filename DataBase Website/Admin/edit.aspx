﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="edit.aspx.vb" Inherits="Admin_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Here you can edit and delete player record!<br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NBAPlayer %>" 
        DeleteCommand="DELETE FROM [NBA Player Rating] WHERE [PlayerName] = @PlayerName" 
        InsertCommand="INSERT INTO [NBA Player Rating] ([PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Dunking], [Speed], [Passing]) VALUES (@PlayerName, @PlayerPosition, @PlayerRating, @PlayerTeam, @MidRangeShooting, @LongRangeShooting, @Defense, @Physical, @Dunking, @Speed, @Passing)" 
        SelectCommand="SELECT [PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Dunking], [Speed], [Passing] FROM [NBA Player Rating]" 
        
        UpdateCommand="UPDATE [NBA Player Rating] SET [PlayerPosition] = @PlayerPosition, [PlayerRating] = @PlayerRating, [PlayerTeam] = @PlayerTeam, [MidRangeShooting] = @MidRangeShooting, [LongRangeShooting] = @LongRangeShooting, [Defense] = @Defense, [Physical] = @Physical, [Dunking] = @Dunking, [Speed] = @Speed, [Passing] = @Passing WHERE [PlayerName] = @PlayerName">
        <DeleteParameters>
            <asp:Parameter Name="PlayerName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PlayerName" Type="String" />
            <asp:Parameter Name="PlayerPosition" Type="String" />
            <asp:Parameter Name="PlayerRating" Type="Int32" />
            <asp:Parameter Name="PlayerTeam" Type="String" />
            <asp:Parameter Name="MidRangeShooting" Type="Int32" />
            <asp:Parameter Name="LongRangeShooting" Type="Int32" />
            <asp:Parameter Name="Defense" Type="Int32" />
            <asp:Parameter Name="Physical" Type="Int32" />
            <asp:Parameter Name="Dunking" Type="Int32" />
            <asp:Parameter Name="Speed" Type="Int32" />
            <asp:Parameter Name="Passing" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlayerPosition" Type="String" />
            <asp:Parameter Name="PlayerRating" Type="Int32" />
            <asp:Parameter Name="PlayerTeam" Type="String" />
            <asp:Parameter Name="MidRangeShooting" Type="Int32" />
            <asp:Parameter Name="LongRangeShooting" Type="Int32" />
            <asp:Parameter Name="Defense" Type="Int32" />
            <asp:Parameter Name="Physical" Type="Int32" />
            <asp:Parameter Name="Dunking" Type="Int32" />
            <asp:Parameter Name="Speed" Type="Int32" />
            <asp:Parameter Name="Passing" Type="Int32" />
            <asp:Parameter Name="PlayerName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerName" 
        DataSourceID="SqlDataSource1" width="772px" PageSize="6" GridLines="None"
        CssClass="cssgridview" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" 
                ReadOnly="True" SortExpression="PlayerName" />
            <asp:BoundField DataField="PlayerPosition" HeaderText="PlayerPosition" 
                SortExpression="PlayerPosition" />
            <asp:BoundField DataField="PlayerRating" HeaderText="PlayerRating" 
                SortExpression="PlayerRating" />
            <asp:BoundField DataField="PlayerTeam" HeaderText="PlayerTeam" 
                SortExpression="PlayerTeam" />
            <asp:BoundField DataField="MidRangeShooting" 
                HeaderText="MidRangeShooting" SortExpression="MidRangeShooting" />
            <asp:BoundField DataField="LongRangeShooting" 
                HeaderText="LongRangeShooting" SortExpression="LongRangeShooting" />
            <asp:BoundField DataField="Defense" 
                HeaderText="Defense" 
                SortExpression="Defense" />
            <asp:BoundField DataField="Physical" HeaderText="Physical" 
                SortExpression="Physical" />
            <asp:BoundField DataField="Dunking" 
                HeaderText="Dunking" 
                SortExpression="Dunking" />
            <asp:BoundField DataField="Speed" HeaderText="Speed" 
                SortExpression="Speed" />
            <asp:BoundField DataField="Passing" HeaderText="Passing" 
                SortExpression="Passing" />
        </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
    </asp:GridView>
    <br />
    <br />
    <br />


    <a href="default.aspx">Admin Homepage</a>
    <br />



</asp:Content>

