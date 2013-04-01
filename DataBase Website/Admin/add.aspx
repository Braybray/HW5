<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="Admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Here you can add Player record to the page!






    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NBAPlayer %>" 
        DeleteCommand="DELETE FROM [NBA Player Rating] WHERE [PlayerName] = @PlayerName" 
        InsertCommand="INSERT INTO [NBA Player Rating] ([PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Passing], [Speed], [Dunking]) VALUES (@PlayerName, @PlayerPosition, @PlayerRating, @PlayerTeam, @MidRangeShooting, @LongRangeShooting, @Defense, @Physical, @Passing, @Speed, @Dunking)" 
        SelectCommand="SELECT [PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Passing], [Speed], [Dunking] FROM [NBA Player Rating]" 
        UpdateCommand="UPDATE [NBA Player Rating] SET [PlayerPosition] = @PlayerPosition, [PlayerRating] = @PlayerRating, [PlayerTeam] = @PlayerTeam, [MidRangeShooting] = @MidRangeShooting, [LongRangeShooting] = @LongRangeShooting, [Defense] = @Defense, [Physical] = @Physical, [Passing] = @Passing, [Speed] = @Speed, [Dunking] = @Dunking WHERE [PlayerName] = @PlayerName">
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
            <asp:Parameter Name="Passing" Type="Int32" />
            <asp:Parameter Name="Speed" Type="Int32" />
            <asp:Parameter Name="Dunking" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlayerPosition" Type="String" />
            <asp:Parameter Name="PlayerRating" Type="Int32" />
            <asp:Parameter Name="PlayerTeam" Type="String" />
            <asp:Parameter Name="MidRangeShooting" Type="Int32" />
            <asp:Parameter Name="LongRangeShooting" Type="Int32" />
            <asp:Parameter Name="Defense" Type="Int32" />
            <asp:Parameter Name="Physical" Type="Int32" />
            <asp:Parameter Name="Passing" Type="Int32" />
            <asp:Parameter Name="Speed" Type="Int32" />
            <asp:Parameter Name="Dunking" Type="Int32" />
            <asp:Parameter Name="PlayerName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" DataKeyNames="PlayerName" 
        DataSourceID="SqlDataSource1" Height="243px" Width="810px" HeaderText=" Player Details"
        CssClass="cssdetailsview" HeaderStyle-CssClass="fieldheader" ItemStyle-CssClass="item"
        AlternatingRowStyle-CssClass="command" PagerStyle-CssClass="pager">
        <Fields>
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

