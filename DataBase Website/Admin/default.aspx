<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
This is the Admin Page, From here you can choose whichever NBA player you want to 
    know more about!<br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NBAPlayer %>" 
        SelectCommand="SELECT [PlayerName], [PlayerPosition], [PlayerRating], [PlayerTeam], [MidRangeShooting], [LongRangeShooting], [Defense], [Physical], [Dunking], [Speed], [Passing] FROM [NBA Player Rating]">
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerName" 
        DataSourceID="SqlDataSource1" Height="16px" Width="329px"
        HeaderText=" Player Details"
        CssClass="cssdetailsview" HeaderStyle-CssClass="fieldheader" ItemStyle-CssClass="item"
        AlternatingRowStyle-CssClass="command" PagerStyle-CssClass="pager">
        <Columns>
            <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" ReadOnly="True" 
                SortExpression="PlayerName" />
            <asp:HyperLinkField DataNavigateUrlFields="PlayerName" 
                DataNavigateUrlFormatString="Player Detail.aspx?PlayerName={0}" 
                Text="View Player Details" />
        </Columns>
    </asp:GridView>
    <br />
    <br />


<div>

<a href="add.aspx">Add Player Record</a>
<br />
<a href="edit.aspx">Edit Player Record</a>




</div> 







&nbsp;

</asp:Content>

