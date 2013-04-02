<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Player Detail.aspx.vb" Inherits="Admin_Player_Detail"    %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
Here you can view the details of each player! Including pictures and a featured video!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NBAPlayer %>" 
        DeleteCommand="DELETE FROM [NBA Player Rating] WHERE [PlayerName] = @PlayerName" 
        InsertCommand="INSERT INTO [NBA Player Rating] ([PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Dunking], [Speed], [Passing]) VALUES ( @PlayerPosition, @PlayerRating, @PlayerTeam, @MidRangeShooting, @LongRangeShooting, @Defense, @Physical, @Dunking, @Speed, @Passing)" 
        SelectCommand="SELECT [PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Dunking], [Speed], [Passing] FROM [NBA Player Rating] WHERE ([PlayerName] = @PlayerName)" 
        
        
        UpdateCommand="UPDATE [NBA Player Rating] SET [PlayerPosition] = @PlayerPosition, [PlayerRating] = @PlayerRating, [PlayerTeam] = @PlayerTeam, [MidRangeShooting] = @MidRangeShooting, [LongRangeShooting] = @LongRangeShooting, [Defense] = @Defense, [Physical] = @Physical, [Dunking] = @Dunking, [Speed] = @Speed, [Passing] = @Passing WHERE [PlayerName] = @PlayerName">
        <DeleteParameters>
            <asp:Parameter Name="PlayerName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
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
        <SelectParameters>
            <asp:QueryStringParameter Name="PlayerName" QueryStringField="PlayerName" 
                Type="String" />
        </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" 
        AutoGenerateRows="False" DataKeyNames="PlayerName" 
        DataSourceID="SqlDataSource1" Height="50px" Width="626px" HeaderText=" Player Details"
        CssClass="cssdetailsview" HeaderStyle-CssClass="fieldheader" ItemStyle-CssClass="item"
        AlternatingRowStyle-CssClass="command" PagerStyle-CssClass="pager">
<AlternatingRowStyle CssClass="command"></AlternatingRowStyle>
        <Fields>
           
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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>

<HeaderStyle CssClass="fieldheader"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
    </asp:DetailsView>

 <a href="default.aspx">Admin Homepage</a>


</asp:Content>
 
 

