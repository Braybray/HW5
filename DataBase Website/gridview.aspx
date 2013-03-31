<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="NBAPLAYERDATA" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_NBAPlayerWebsite %>" 
            DeleteCommand="DELETE FROM [NBA Player Data] WHERE [Player Name] = @Player_Name" 
            InsertCommand="INSERT INTO [NBA Player Data] ([Player Name], [Years in NBA], [Players Teams], [Player Position], [Player Overal Rating], [Mid Shooting Rating], [Distance Shooting Rating], [Dunk Ability], [Speed and Leaping Ability], [Defense Rating], [Potential Rating]) VALUES (@Player_Name, @Years_in_NBA, @Players_Teams, @Player_Position, @Player_Overal_Rating, @Mid_Shooting_Rating, @Distance_Shooting_Rating, @Dunk_Ability, @Speed_and_Leaping_Ability, @Defense_Rating, @Potential_Rating)" 
            SelectCommand="SELECT * FROM [NBA Player Data]" 
            UpdateCommand="UPDATE [NBA Player Data] SET [Years in NBA] = @Years_in_NBA, [Players Teams] = @Players_Teams, [Player Position] = @Player_Position, [Player Overal Rating] = @Player_Overal_Rating, [Mid Shooting Rating] = @Mid_Shooting_Rating, [Distance Shooting Rating] = @Distance_Shooting_Rating, [Dunk Ability] = @Dunk_Ability, [Speed and Leaping Ability] = @Speed_and_Leaping_Ability, [Defense Rating] = @Defense_Rating, [Potential Rating] = @Potential_Rating WHERE [Player Name] = @Player_Name">
            <DeleteParameters>
                <asp:Parameter Name="Player_Name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Player_Name" Type="String" />
                <asp:Parameter Name="Years_in_NBA" Type="Int32" />
                <asp:Parameter Name="Players_Teams" Type="String" />
                <asp:Parameter Name="Player_Position" Type="String" />
                <asp:Parameter Name="Player_Overal_Rating" Type="Int32" />
                <asp:Parameter Name="Mid_Shooting_Rating" Type="Int32" />
                <asp:Parameter Name="Distance_Shooting_Rating" Type="Int32" />
                <asp:Parameter Name="Dunk_Ability" Type="Int32" />
                <asp:Parameter Name="Speed_and_Leaping_Ability" Type="Int32" />
                <asp:Parameter Name="Defense_Rating" Type="Int32" />
                <asp:Parameter Name="Potential_Rating" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Years_in_NBA" Type="Int32" />
                <asp:Parameter Name="Players_Teams" Type="String" />
                <asp:Parameter Name="Player_Position" Type="String" />
                <asp:Parameter Name="Player_Overal_Rating" Type="Int32" />
                <asp:Parameter Name="Mid_Shooting_Rating" Type="Int32" />
                <asp:Parameter Name="Distance_Shooting_Rating" Type="Int32" />
                <asp:Parameter Name="Dunk_Ability" Type="Int32" />
                <asp:Parameter Name="Speed_and_Leaping_Ability" Type="Int32" />
                <asp:Parameter Name="Defense_Rating" Type="Int32" />
                <asp:Parameter Name="Potential_Rating" Type="Int32" />
                <asp:Parameter Name="Player_Name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Player Name" 
            DataSourceID="NBAPLAYERDATA" Height="259px" Width="893px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Player Name" HeaderText="Player Name" 
                    ReadOnly="True" SortExpression="Player Name" />
                <asp:BoundField DataField="Years in NBA" HeaderText="Years in NBA" 
                    SortExpression="Years in NBA" />
                <asp:BoundField DataField="Players Teams" HeaderText="Players Teams" 
                    SortExpression="Players Teams" />
                <asp:BoundField DataField="Player Position" HeaderText="Player Position" 
                    SortExpression="Player Position" />
                <asp:BoundField DataField="Player Overal Rating" 
                    HeaderText="Player Overal Rating" SortExpression="Player Overal Rating" />
                <asp:BoundField DataField="Mid Shooting Rating" 
                    HeaderText="Mid Shooting Rating" SortExpression="Mid Shooting Rating" />
                <asp:BoundField DataField="Distance Shooting Rating" 
                    HeaderText="Distance Shooting Rating" 
                    SortExpression="Distance Shooting Rating" />
                <asp:BoundField DataField="Dunk Ability" HeaderText="Dunk Ability" 
                    SortExpression="Dunk Ability" />
                <asp:BoundField DataField="Speed and Leaping Ability" 
                    HeaderText="Speed and Leaping Ability" 
                    SortExpression="Speed and Leaping Ability" />
                <asp:BoundField DataField="Defense Rating" HeaderText="Defense Rating" 
                    SortExpression="Defense Rating" />
                <asp:BoundField DataField="Potential Rating" HeaderText="Potential Rating" 
                    SortExpression="Potential Rating" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
