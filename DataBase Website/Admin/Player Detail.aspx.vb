
Partial Class Admin_Player_Detail
    Inherits System.Web.UI.Page

   


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted


        Response.Write("The record has been successfully deleted from the database <br/>")
        





    End Sub


End Class
